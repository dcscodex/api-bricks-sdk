using CoinAPI.WebSocket.Stats.Console.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoinAPI.WebSocket.Stats.Console.Infrastructure
{
    public class CompositeDataOutput : IDataOutput
    {
        List<IDataOutput> _outputs = new List<IDataOutput>();
        public void AddDataOutput(IDataOutput output)
        {
            _outputs.Add(output);
        }
        public async Task InitializeAsync(InputData input)
        {
            foreach (var item in _outputs)
            {
                await item.InitializeAsync(input);
            }
        }

        public async Task WriteAsync(string data)
        {
            foreach (var item in _outputs)
            {
                await item.WriteAsync(data);
            }
        }

        public async Task WriteAsync(OutputData data)
        {
            foreach (var item in _outputs)
            {
                await item.WriteAsync(data);
            }
        }
    }
}
