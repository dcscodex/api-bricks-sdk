using Cocona;
using CoinAPI.WebSocket.V1;
using CoinAPI.WebSocket.V1.DataModels;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using Serilog;
using System.Diagnostics;
using System.Globalization;
using System.Text;
using System.Xml;
using System.Xml.Xsl;

internal enum SubType
{
    book5,
    book20,
    book50,
    book,
    book_l,
    quote,
    trade,
    ohlcv,
    exrate,
}

internal enum Endpoints
{
    emea,
    apac,
    ncsa
}

internal class Program
{
    public static IConfiguration Configuration { get; private set; }

    public static Dictionary<string, string> Endpoints = new Dictionary<string, string>
    {
        { global::Endpoints.emea.ToString(), "ws://api-emea.coinapi.net" },
        { global::Endpoints.apac.ToString(), "ws://api-apac.coinapi.net" },
        { global::Endpoints.ncsa.ToString(), "ws://api-ncsa.coinapi.net" }
    };
    static async Task Main(string[] args)
    {
        Thread.CurrentThread.CurrentCulture = CultureInfo.InvariantCulture;
        Thread.CurrentThread.CurrentUICulture = CultureInfo.InvariantCulture;

        Log.Logger = new LoggerConfiguration()
           .MinimumLevel.Debug()
           .WriteTo.Console()
           //.WriteTo.File("logs/myapp.txt", rollingInterval: RollingInterval.Day)
           .CreateLogger();

        var confBuilder = new ConfigurationBuilder()
        .SetBasePath(Directory.GetCurrentDirectory())
        .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true);

        Configuration = confBuilder.Build();

        var coconaBuilder = CoconaApp.CreateBuilder();
        var host = coconaBuilder.Host;
        host.ConfigureLogging(logging =>
        {
            logging.AddSerilog();
        })
        .ConfigureServices((context, services) =>
        {

            //
        });
        //host.Run<Program>(args);
        var coconaApp = coconaBuilder.Build();
        await coconaApp.RunAsync<Program>();
    }

    public async Task MakeRequest([FromService] IConfiguration configuration, string endpoint_name = null,
        string subscribe_data_type = null, string asset = null, string symbol = null,
        string exchange = null, string apikey = null, string type = "hello", bool supress_hb = false)
    {
        var typeNames = Enum.GetNames<SubType>().ToList();
        if (!typeNames.Any(x => x == subscribe_data_type))
        {
            Serilog.Log.Error($"Invalid subscribe_data_type, valid values: {string.Join(",", typeNames)}");
            return;
        }

        var endpointNames = Enum.GetNames<Endpoints>().ToList();
        if (!string.IsNullOrWhiteSpace(endpoint_name) && !endpointNames.Any(x => x == endpoint_name))
        {
            Serilog.Log.Error($"Invalid endpoint_name, valid values: {string.Join(",", endpointNames)}");
            return;
        }
        
        using (var wsClient = string.IsNullOrWhiteSpace(endpoint_name) ? new CoinApiWsClient() : new CoinApiWsClient(Endpoints[endpoint_name]))
        {
            wsClient.SupressHeartbeat(supress_hb);
            int msgCount = 0;
            int errorCount = 0;

            void WsClient_Error(object? sender, Exception e)
            {
                Serilog.Log.Error(e, "Error in websocket client");
                errorCount++;
            }

            wsClient.Error += WsClient_Error;

            List<(DateTime, DateTime)> latencyList = new List<(DateTime, DateTime)>();

            void ProcessMsg(DateTime? time_exchange, DateTime? time_coinapi)
            {
                msgCount++;
                if (time_coinapi.HasValue && time_exchange.HasValue)
                {
                    latencyList.Add((time_exchange.Value, time_coinapi.Value));
                }
            }

            switch (subscribe_data_type)
            {
                case "book5":
                    wsClient.OrderBook5Event += (s, i) => { ProcessMsg(i.time_exchange, i.time_coinapi); };
                    break;
                case "book20":
                    wsClient.OrderBook20Event += (s, i) => { ProcessMsg(i.time_exchange, i.time_coinapi); };
                    break;
                case "book50":
                    wsClient.OrderBook50Event += (s, i) => { ProcessMsg(i.time_exchange, i.time_coinapi); };
                    break;
                case "book":
                    wsClient.OrderBookEvent += (s, i) => { ProcessMsg(i.time_exchange, i.time_coinapi); };
                    break;
                case "book_l":
                    wsClient.OrderBookL3Event += (s, i) => { ProcessMsg(i.time_exchange, i.time_coinapi); };
                    break;
                case "quote":
                    wsClient.QuoteEvent += (s, i) => { ProcessMsg(i.time_exchange, i.time_coinapi); };
                    break;
                case "trade":
                    wsClient.TradeEvent += (s, i) => { ProcessMsg(i.time_exchange, i.time_coinapi); };
                    break;
                case "ohlcv":
                    wsClient.OHLCVEvent += (s, i) => { ProcessMsg(null, null); };
                    break;
                case "exrate":
                    wsClient.ExchangeRateEvent += (s, i) => { msgCount++; };
                    break;
            }

            var hello = new Hello()
            {
                apikey = new Guid(apikey ?? configuration["ApiKey"] ?? throw new ArgumentNullException("ApiKey is required")),
                type = type,
                subscribe_data_type = new string[] { subscribe_data_type },
                subscribe_filter_asset_id = string.IsNullOrWhiteSpace(asset) ? null : new string[] { asset },
                subscribe_filter_symbol_id = string.IsNullOrWhiteSpace(symbol) ? null : new string[] { symbol },
                subscribe_filter_exchange_id = string.IsNullOrWhiteSpace(exchange) ? null : new string[] { exchange },
            };
            wsClient.SendHelloMessage(hello);

            Task.Run(async () =>
                {
                    if (!wsClient.ConnectedEvent.WaitOne(10000)) return;

                    var iterations = 0;
                    var endpoint = (string.IsNullOrEmpty(endpoint_name) ? "global" : Endpoints[endpoint_name]);
                    Serilog.Log.Information($"Time: {DateTime.UtcNow}");
                    var strbld = new StringBuilder();

                    strbld.Append($"Subscribed to: subscribe_data_type = {subscribe_data_type}");
                    if (!string.IsNullOrWhiteSpace(exchange))
                    {
                        strbld.Append($", exchange = {exchange}");
                    }
                    if (!string.IsNullOrWhiteSpace(asset))
                    {
                        strbld.Append($", asset = {asset}");
                    }
                    if (!string.IsNullOrWhiteSpace(symbol))
                    {
                        strbld.Append($", symbol = {symbol}");
                    }

                    Serilog.Log.Information(strbld.ToString());

                    var process = Process.GetCurrentProcess();

                    while (true)
                    {
                        strbld.Clear();

                        if (iterations % 10 == 0)
                        {
                            Serilog.Log.Information($"Endpoint {endpoint}, {iterations} iterations, {msgCount} messages received, {wsClient.TotalBytesReceived} bytes received, Error count {errorCount}");
                        }
                        iterations++;

                        var msgCountPrev = msgCount;
                        var totalBytesReceivedPrev = wsClient.TotalBytesReceived;

                        (TimeSpan cpuWaiting, TimeSpan cpuParsing, TimeSpan cpuHandling) cpuUsagePrev
                            = (wsClient.TotalWaitTime, wsClient.TotalParseTime, wsClient.TotalHandleTime);

                        //TimeSpan totalCpuTimePrev = process.TotalProcessorTime;

                        await Task.Delay(1000);
                        (TimeSpan cpuWaiting, TimeSpan cpuParsing, TimeSpan cpuHandling) cpuUsage
                            = (wsClient.TotalWaitTime, wsClient.TotalParseTime, wsClient.TotalHandleTime);

                        //TimeSpan totalCpuTime = process.TotalProcessorTime;
                        var deltaCpuWaiting = cpuUsage.cpuWaiting - cpuUsagePrev.cpuWaiting;
                        var deltaCpuParsing = cpuUsage.cpuParsing - cpuUsagePrev.cpuParsing;
                        var deltaCpuHandling = cpuUsage.cpuHandling - cpuUsagePrev.cpuHandling;
                        //var deltaCpuTime = totalCpuTime - totalCpuTimePrev;
                        var deltaCpuTime = deltaCpuWaiting + deltaCpuParsing + deltaCpuHandling;


                        var cpuWaitingPercent = 100 * deltaCpuWaiting.TotalMilliseconds / deltaCpuTime.TotalMilliseconds;
                        var cpuParsingPercent = 100 * deltaCpuParsing.TotalMilliseconds / deltaCpuTime.TotalMilliseconds;
                        var cpuHandlingPercent = 100 * deltaCpuHandling.TotalMilliseconds / deltaCpuTime.TotalMilliseconds;


                        var msgCountOnInterval = msgCount - msgCountPrev;
                        var bytesCountOnInterval = wsClient.TotalBytesReceived - totalBytesReceivedPrev;
                        var latencies = latencyList.Select(x => x.Item2 - x.Item1).ToList();
                        latencyList.Clear();


                        strbld.AppendFormat($"Messages: {msgCountOnInterval,-8}");
                        strbld.AppendFormat($"| Recv bytes: {bytesCountOnInterval,-8}");
                        strbld.Append($"| CPU: wait: {cpuWaitingPercent:F2}% | parse: {cpuParsingPercent:F2}% | process: {cpuHandlingPercent:F2}%");

                        if (latencies.Any())
                        {
                            strbld.AppendFormat($" | Latency min: {latencies.Min().TotalMilliseconds,-8}ms");
                            strbld.AppendFormat($" | max: {latencies.Max().TotalMilliseconds,-8}ms");
                        }

                        Serilog.Log.Information(strbld.ToString());
                    }
                }
            );

            await Task.Run(() => Console.ReadKey());
        }
    }

}
