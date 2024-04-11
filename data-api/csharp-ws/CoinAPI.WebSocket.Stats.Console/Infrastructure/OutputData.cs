using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoinAPI.WebSocket.Stats.Console.Infrastructure
{
    public class OutputData
    {
        public DateTime Timestamp { get; set; }
        public ulong Messages { get; set; }
        public ulong BytesReceived { get; set; }
        public double CpuWaitingPercent { get; set; }
        public double CpuParsingPercent { get; set; }
        public double CpuHandlingPercent { get; set; }
        public double? LatencyMinMilliseconds { get; set; }
        public double? LatencyMaxMilliseconds { get; set; }
        public double? LatencyStdDev { get; internal set; }
        public double? LatencyAverage { get; internal set; }
    }
}
