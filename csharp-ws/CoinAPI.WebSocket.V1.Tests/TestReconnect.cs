using CoinAPI.WebSocket.V1.DataModels;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Threading;

namespace CoinAPI.WebSocket.V1.Tests
{
    [TestClass]
    public class TestReconnections
    {
        [TestMethod]
        public void TestMessageReceivedAfterReconnect()
        {
            int mssgCount = 0;
            var helloMsg = new Hello()
            {
                apikey = System.Guid.Parse("90ea90db-d740-47ff-9053-baf62b8cc0ad"),
                subscribe_data_type = new string[] { "book" }
            };

            using(var wsClient = new CoinApiWsClient(false))
            {
                wsClient.OrderBookEvent += (s, i) =>
                {
                    mssgCount++;
                };

                wsClient.AcceptHelloMessage(helloMsg);

                Thread.Sleep(5000);

                wsClient.StopConnection();
                mssgCount = 0;

                Thread.Sleep(10000);
                Assert.AreNotEqual(0, mssgCount);
            }
        }

    }
}
