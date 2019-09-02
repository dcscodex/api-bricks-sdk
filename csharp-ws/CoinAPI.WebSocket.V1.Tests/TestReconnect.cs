using CoinAPI.WebSocket.V1.DataModels;
using Microsoft.Extensions.Configuration;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Configuration;
using System.Threading;

namespace CoinAPI.WebSocket.V1.Tests
{
    [TestClass]
    public class TestReconnections
    {
        [TestMethod]
        public void TestMessageReceivedAfterReconnect()
        {
            var config = new ConfigurationBuilder().AddJsonFile("config.json").Build();

            int mssgCount = 0;
            var helloMsg = new Hello()
            {
                apikey = System.Guid.Parse(config["TestApiKey"]),
                subscribe_data_type = new string[] { "book", "quote", "trade" }
            };

            using(var wsClient = new CoinApiWsClient(false))
            {
                wsClient.OrderBookEvent += (s, i) =>
                {
                    mssgCount++;
                };

                wsClient.SendHelloMessage(helloMsg);

                Thread.Sleep(5000);

                wsClient.ForceReconnectUsedOnlyTestPurpose();
                mssgCount = 0;

                Thread.Sleep(5000);
                Assert.AreNotEqual(0, mssgCount);
            }
        }

    }
}
