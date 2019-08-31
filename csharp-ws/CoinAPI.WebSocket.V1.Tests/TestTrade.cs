using CoinAPI.WebSocket.V1.DataModels;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Threading;

namespace CoinAPI.WebSocket.V1.Tests
{
    [TestClass]
    public class TestTrade
    {
        [TestMethod]
        public void TestTradesReceive()
        {
            int mssgCount = 0;
            var helloMsg = new Hello()
            {
                apikey = System.Guid.Parse("90ea90db-d740-47ff-9053-baf62b8cc0ad"),
                subscribe_data_type = new string[] { "trade" }//,
                //subscribe_filter_symbol_id = new string[] { "BITSTAMP_SPOT_BTC_USD", "GEMINI_SPOT_BTC_USD COINBASE_SPOT_BTC_USD" }
            };

            using(var wsClient = new CoinApiWsClient(false))
            {
                wsClient.TradeEvent += (s, i) =>
                {
                    mssgCount++;
                };

                wsClient.AcceptHelloMessage(helloMsg);

                Thread.Sleep(10000);

                Assert.AreNotEqual(0, mssgCount);
            }
        }

    }
}
