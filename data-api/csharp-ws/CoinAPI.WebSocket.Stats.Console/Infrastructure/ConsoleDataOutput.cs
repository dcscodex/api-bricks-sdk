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
            throw new NotImplementedException();
        }

        public Task WriteAsync(string data)
        {
            throw new NotImplementedException();
        }
        public Task WriteAsync(OutputData data)
        {
            throw new NotImplementedException();
        }
    }
}
