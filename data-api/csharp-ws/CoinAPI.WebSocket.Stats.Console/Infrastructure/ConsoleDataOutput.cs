using CoinAPI.WebSocket.Stats.Console.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoinAPI.WebSocket.Stats.Console.Infrastructure
{
    public class ConsoleDataOutput : IDataOutput
    {
        public Task InitializeAsync(InputData input)
        {
            Serilog.Log.Information($"Time: {DateTime.UtcNow}");
            var strbld = new StringBuilder();

            strbld.Append($"Subscribed to: subscribe_data_type = {input.SubscribeDataType}");
            if (!string.IsNullOrWhiteSpace(input.Exchange))
            {
                strbld.Append($", exchange = {input.Exchange}");
            }
            if (!string.IsNullOrWhiteSpace(input.Asset))
            {
                strbld.Append($", asset = {input.Asset}");
            }
            if (!string.IsNullOrWhiteSpace(input.Symbol))
            {
                strbld.Append($", symbol = {input.Symbol}");
            }
            strbld.Append($", latency_type = {input.LatencyType}");

            Serilog.Log.Information(strbld.ToString());
            return Task.CompletedTask;
        }

        public Task WriteAsync(string data)
        {
            throw new NotImplementedException();
        }
        public Task WriteAsync(OutputData data)
        {
            var strbld = new StringBuilder();
            strbld.AppendFormat($"Messages: {data.Messages,-8}");
            strbld.AppendFormat($"| Recv bytes: {data.BytesReceived,-8}");
            strbld.Append($"| CPU: wait: {data.CpuWaitingPercent:P} | parse: {data.CpuParsingPercent:P} | process: {data.CpuHandlingPercent:P}");

            if (data.LatencyMinMilliseconds.HasValue && data.LatencyMaxMilliseconds.HasValue)
            {
                strbld.AppendFormat($" | Latency min: {data.LatencyMinMilliseconds,-8}ms");
                strbld.AppendFormat($" | max: {data.LatencyMaxMilliseconds,-8}ms");
            }

            Serilog.Log.Information(strbld.ToString());
            return Task.CompletedTask;
        }
    }
}
