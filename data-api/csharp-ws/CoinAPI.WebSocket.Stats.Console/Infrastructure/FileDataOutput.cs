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

        public async Task InitializeAsync()
        {
            _filePath = _filePath ?? GenerateFilePath();
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
    }
}
