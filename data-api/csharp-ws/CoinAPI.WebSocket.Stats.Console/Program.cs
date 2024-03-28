using Cocona;
using CoinAPI.WebSocket.V1;
using CoinAPI.WebSocket.V1.DataModels;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using Serilog;
using System.Diagnostics;
using System.Globalization;
using System.Net;
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

internal enum LatencyType
{
    nc, //Now-CoinAPI
    ne, //Now-Exchange
    ce, //CoinAPI-Exchange
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

    public async Task MakeRequest([FromService] IConfiguration configuration, string endpoint_name = "wss://ws.coinapi.io/",
        string subscribe_data_type = null, string asset = null, string symbol = null,
        string exchange = null, string apikey = null, string type = "hello", bool supress_hb = false, string latency_type = "ce")
    {
        var typeNames = Enum.GetNames<SubType>().ToList();
        if (!typeNames.Any(x => x == subscribe_data_type))
        {
            Serilog.Log.Error($"Invalid subscribe_data_type, valid values: {string.Join(",", typeNames)}");
            return;
        }

        // the user provided endpoint
        if (Enum.GetNames<Endpoints>().ToList().Any(x => x == endpoint_name))
        {
            // it's site name translate
            endpoint_name = Endpoints[endpoint_name];
        }
        else if (endpoint_name.StartsWith("ws://") || endpoint_name.StartsWith("wss://"))
        {
            // its uri OK
        }
        else
        {
            // eveyrhting else is invalid
            Serilog.Log.Error($"Invalid endpoint_name, valid values: {string.Join(",", Enum.GetNames<Endpoints>().ToList())} or ws:// or wss:// uri");
            return;
        }
        
        var latencyTypes = Enum.GetNames<LatencyType>().ToList();
        if (!string.IsNullOrWhiteSpace(latency_type) && !latencyTypes.Any(x => x == latency_type))
        {
            Serilog.Log.Error($"Invalid latency_type, valid values: {string.Join(",", latencyTypes)}");
            return;
        }
        
        using (var wsClient = new CoinApiWsClient(endpoint_name))
        {
            wsClient.SupressHeartbeat(supress_hb);
            LatencyType latencyType = Enum.GetValues<LatencyType>().FirstOrDefault(x => x.ToString() == latency_type);

            wsClient.Error += WsClient_Error;

            switch (subscribe_data_type)
            {
                case "book5":
                    wsClient.OrderBook5Event += (s, i) => { ProcessMsg(i.time_exchange, i.time_coinapi, latencyType); };
                    break;
                case "book20":
                    wsClient.OrderBook20Event += (s, i) => { ProcessMsg(i.time_exchange, i.time_coinapi, latencyType); };
                    break;
                case "book50":
                    wsClient.OrderBook50Event += (s, i) => { ProcessMsg(i.time_exchange, i.time_coinapi, latencyType); };
                    break;
                case "book":
                    wsClient.OrderBookEvent += (s, i) => { ProcessMsg(i.time_exchange, i.time_coinapi, latencyType); };
                    break;
                case "book_l":
                    wsClient.OrderBookL3Event += (s, i) => { ProcessMsg(i.time_exchange, i.time_coinapi, latencyType); };
                    break;
                case "quote":
                    wsClient.QuoteEvent += (s, i) => { ProcessMsg(i.time_exchange, i.time_coinapi, latencyType); };
                    break;
                case "trade":
                    wsClient.TradeEvent += (s, i) => { ProcessMsg(i.time_exchange, i.time_coinapi, latencyType); };
                    break;
                case "ohlcv":
                    wsClient.OHLCVEvent += (s, i) => { ProcessMsg(null, null, latencyType); };
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

            _ = PrintingTaskLoopAsync(wsClient, endpoint_name, subscribe_data_type, asset, symbol, exchange, supress_hb, latency_type);

            await Task.Run(() => Console.ReadKey());
        }
    }

    private ulong errorCount = 0;
    void WsClient_Error(object? sender, Exception e)
    {
        Serilog.Log.Error(e, "Error in websocket client");
        errorCount++;
    }

    private ulong msgCount = 0;
    private readonly List<(DateTime, DateTime)> latencyList = new List<(DateTime, DateTime)>();
    private void ProcessMsg(DateTime? time_exchange, DateTime? time_coinapi, LatencyType latencyType)
    {
        msgCount++;
        if (time_coinapi.HasValue && time_exchange.HasValue)
        {
            switch (latencyType)
            {
                case LatencyType.nc:
                    latencyList.Add((DateTime.UtcNow, time_coinapi.Value));
                    break;
                case LatencyType.ne:
                    latencyList.Add((DateTime.UtcNow, time_exchange.Value));
                    break;
                case LatencyType.ce:
                    latencyList.Add((time_coinapi.Value, time_exchange.Value));
                    break;
            }
        }
    }

    private async Task PrintingTaskLoopAsync(CoinApiWsClient wsClient, 
        string endpoint_name, string subscribe_data_type, string asset, 
        string symbol, string exchange, bool supress_hb, string latency_type)
    {
        var iterations = 0;
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
        strbld.Append($", latency_type = {latency_type}");

        Serilog.Log.Information(strbld.ToString());

        string basePath = "output";
        string extension = ".csv";

        string csvFilePath = basePath + extension;
        int counter = 1;

        while (File.Exists(csvFilePath))
        {
            csvFilePath = $"{basePath}_{counter}{extension}";
            counter++;
        }

        using (StreamWriter sw = File.CreateText(csvFilePath))
        {
            sw.WriteLine("Parameters:");
            sw.WriteLine($"Endpoint Name: {endpoint_name}");
            sw.WriteLine($"Subscribe Data Type: {subscribe_data_type}");
            sw.WriteLine($"Asset: {asset}");
            sw.WriteLine($"Symbol: {symbol}");
            sw.WriteLine($"Exchange: {exchange}");
            sw.WriteLine($"Supress heartbeat: {supress_hb}");
            sw.WriteLine($"Latency type: {latency_type}");
            sw.WriteLine();
            sw.WriteLine("Timestamp;Messages;BytesReceived;WaitingCPU%;ParsingCPU%;ProcessingCPU%;LatencyMin(ms);LatencyMax(ms)");
        }


        while (true)
        {
            if (!wsClient.IsConnected)
            {
                Log.Warning("Websocket is not connected.");
                await Task.Delay(1000);
                continue;
            }
            strbld.Clear();

            if (iterations % 10 == 0)
            {
                Serilog.Log.Information($"Endpoint {endpoint_name}, {iterations} iterations, {msgCount} messages received, {wsClient.TotalBytesReceived} bytes received, Error count {errorCount}");
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


            var cpuWaitingPercent = deltaCpuWaiting.TotalMilliseconds / deltaCpuTime.TotalMilliseconds;
            var cpuParsingPercent = deltaCpuParsing.TotalMilliseconds / deltaCpuTime.TotalMilliseconds;
            var cpuHandlingPercent = deltaCpuHandling.TotalMilliseconds / deltaCpuTime.TotalMilliseconds;


            var msgCountOnInterval = msgCount - msgCountPrev;
            var bytesCountOnInterval = wsClient.TotalBytesReceived - totalBytesReceivedPrev;
            var latencies = latencyList.Select(x => x.Item1 - x.Item2).ToList();
            latencyList.Clear();


            strbld.AppendFormat($"Messages: {msgCountOnInterval,-8}");
            strbld.AppendFormat($"| Recv bytes: {bytesCountOnInterval,-8}");
            strbld.Append($"| CPU: wait: {cpuWaitingPercent:P} | parse: {cpuParsingPercent:P} | process: {cpuHandlingPercent:P}");

            if (latencies.Any())
            {
                strbld.AppendFormat($" | Latency min: {latencies.Min().TotalMilliseconds,-8}ms");
                strbld.AppendFormat($" | max: {latencies.Max().TotalMilliseconds,-8}ms");
            }

            Serilog.Log.Information(strbld.ToString());

            using (StreamWriter sw = File.AppendText(csvFilePath))
            {
                sw.WriteLine($"\"{DateTime.UtcNow:yyyy-MM-dd HH:mm:ss}\";{msgCountOnInterval};{bytesCountOnInterval};{cpuWaitingPercent:F2};{cpuParsingPercent:F2};{cpuHandlingPercent:F2};{(latencies.Any() ? latencies.Min().TotalMilliseconds : 0):F2};{(latencies.Any() ? latencies.Max().TotalMilliseconds : 0):F2}");
            }

        }
    }

}
