using CoinAPI.WebSocket.V1.DataModels;
using Microsoft.Extensions.Configuration;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Threading;

namespace CoinAPI.WebSocket.V1.Tests
{
    [TestClass]
    public class TestQuote
    {
        [TestMethod]
        public void TestQuoteReceive()
        {
            var config = new ConfigurationBuilder().AddJsonFile("config.json").Build();

            int mssgCount = 0;
            var helloMsg = new Hello()
            {
                apikey = System.Guid.Parse(config["TestApiKey"]),
                subscribe_data_type = new string[] { "quote" },
                subscribe_filter_symbol_id = new string[] { "BITSTAMP_SPOT_BTC_USD", "GEMINI_SPOT_BTC_USD COINBASE_SPOT_BTC_USD" }
            };

            using(var wsClient = new CoinApiWsClient(false))
            {
                wsClient.QuoteEvent += (s, i) =>
                {
                    mssgCount++;
                };

                wsClient.SendHelloMessage(helloMsg);

                Thread.Sleep(10000);

                Assert.AreNotEqual(0, mssgCount);
            }
        }

    }
}
