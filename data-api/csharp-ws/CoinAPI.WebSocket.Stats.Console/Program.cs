using Cocona;
using CoinAPI.WebSocket.V1;
using CoinAPI.WebSocket.V1.DataModels;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using Serilog;
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

internal class Program
{
    public static IConfiguration Configuration { get; private set; }
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

    public async Task MakeRequest([FromService] IConfiguration configuration,
        string subscribe_data_type = null, string asset = null, string symbol = null,
        string exchange = null, string apikey = null, string type = "hello")
    {
        var typeNames = Enum.GetNames<SubType>().ToList();
        if (!typeNames.Any(x => x == subscribe_data_type))
        {
            Console.WriteLine($"Invalid subscribe_data_type, valid values: {string.Join(",", typeNames)}");
            return;
        }

        using (var wsClient = new CoinApiWsClient())
        {
            int msgCount = 0;
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
                apikey = new Guid(configuration["ApiKey"] ?? apikey ?? throw new ArgumentNullException("ApiKey is required")),
                type = type,
                subscribe_data_type = new string[] { subscribe_data_type  },
                subscribe_filter_asset_id = string.IsNullOrWhiteSpace(asset) ? null : new string[] { asset },
                subscribe_filter_symbol_id = string.IsNullOrWhiteSpace(symbol) ? null : new string[] { symbol },
                subscribe_filter_exchange_id = string.IsNullOrWhiteSpace(exchange) ? null : new string[] { exchange },
            };
            wsClient.SendHelloMessage(hello);

            Task.Run(async () =>
                {
                    if (!wsClient.ConnectedEvent.WaitOne(10000)) return;
                    
                    msgCount = 0;
                    latencyList.Clear();
                    
                    while (true)
                    {
                        await Task.Delay(1000);
                        var count = msgCount;
                        msgCount = 0;
                        var latencies = latencyList.Select(x => x.Item2 - x.Item1).ToList();
                        latencyList.Clear();
                        Console.WriteLine($"Time: {DateTime.UtcNow}");
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
                        strbld.AppendLine("");
                        strbld.Append($"Processed messsages: {count}");
                        
                        if (latencies.Any())
                        {
                            strbld.Append($"    Latency min: {latencies.Min().TotalMilliseconds}ms, Latency max: {latencies.Max().TotalMilliseconds}ms");
                        }
                        Console.WriteLine(strbld.ToString());
                        
                    }
                }
            );

            await Task.Run(() => Console.ReadKey());
        }
    }

}