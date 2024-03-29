using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoinAPI.WebSocket.Stats.Console.Infrastructure
{
    public class InputData
    {
        public string FileOutputPath { get; set; }
        public string EndpointName { get; set; }
        public string SubscribeDataType { get; set; }
        public string Asset { get; set; }
        public string Symbol { get; set; }
        public string Exchange { get; set; }
        public bool SupressHeartbeat { get; set; }
        public string LatencyType { get; set; }
    }
}
