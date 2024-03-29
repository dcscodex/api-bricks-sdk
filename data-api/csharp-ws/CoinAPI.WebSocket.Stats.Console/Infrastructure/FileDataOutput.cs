using CoinAPI.WebSocket.Stats.Console.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoinAPI.WebSocket.Stats.Console.Infrastructure
{
    public class FileDataOutput : IDataOutput
    {
        private string _filePath;

        public FileDataOutput(string filePath)
        {
            _filePath = filePath;
        }

        public async Task InitializeAsync(InputData input)
        {
            _filePath = _filePath ?? GenerateFilePath();
            var sb = new StringBuilder();

            sb.AppendLine("Parameters:");
            sb.AppendLine($"Endpoint Name: {input.EndpointName}");
            sb.AppendLine($"Subscribe Data Type: {input.SubscribeDataType}");
            sb.AppendLine($"Asset: {input.Asset}");
            sb.AppendLine($"Symbol: {input.Symbol}");
            sb.AppendLine($"Exchange: {input.Exchange}");
            sb.AppendLine($"Supress heartbeat: {input.SupressHeartbeat}");
            sb.AppendLine($"Latency type: {input.LatencyType}");
            sb.AppendLine();
            sb.AppendLine("Timestamp;Messages;BytesReceived;WaitingCPU%;ParsingCPU%;ProcessingCPU%;LatencyMin(ms);LatencyMax(ms)");
            await WriteAsync(sb.ToString());

        }

        private static string GenerateFilePath()
        {
            string basePath = "output";
            string extension = ".csv";

            string csvFilePath = basePath + extension;
            int counter = 1;

            while (File.Exists(csvFilePath))
            {
                csvFilePath = $"{basePath}_{counter}{extension}";
                counter++;
            }

            return csvFilePath;
        }

        public async Task WriteAsync(string data)
        {
            await File.AppendAllTextAsync(_filePath, data);
        }

        public Task WriteAsync(OutputData data)
        {
            var sb = new StringBuilder();
            sb.Append($"\"{DateTime.UtcNow:yyyy-MM-dd HH:mm:ss}\";");
            sb.Append($"{data.Messages};");
            sb.Append($"{data.BytesReceived};");
            sb.Append($"{data.CpuWaitingPercent:F2};");
            sb.Append($"{data.CpuParsingPercent:F2};");
            sb.Append($"{data.CpuHandlingPercent:F2};");
            sb.Append($"{data.LatencyMinMilliseconds:F2};");
            sb.Append($"{data.LatencyMaxMilliseconds:F2}\n");

            return WriteAsync(sb.ToString());
        }
    }
}
