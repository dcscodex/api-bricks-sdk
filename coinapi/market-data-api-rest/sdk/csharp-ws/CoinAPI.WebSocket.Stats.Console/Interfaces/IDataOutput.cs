using CoinAPI.WebSocket.Stats.Console.Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoinAPI.WebSocket.Stats.Console.Interfaces
{
    public interface IDataOutput
    {
        Task InitializeAsync(InputData data);
        Task WriteAsync(string data);
        Task WriteAsync(OutputData data);
    }
}
