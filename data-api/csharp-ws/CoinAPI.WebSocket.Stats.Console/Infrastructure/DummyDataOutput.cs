using CoinAPI.WebSocket.Stats.Console.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoinAPI.WebSocket.Stats.Console.Infrastructure
{
    public class DummyDataOutput : IDataOutput
    {
        public Task InitializeAsync()
        {
            return Task.CompletedTask;
        }

        public Task WriteAsync(string data)
        {
            return Task.CompletedTask;
        }
    }
}
