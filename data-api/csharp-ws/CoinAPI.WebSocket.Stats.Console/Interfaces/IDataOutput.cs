using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoinAPI.WebSocket.Stats.Console.Interfaces
{
    public interface IDataOutput
    {
        Task InitializeAsync();
        Task WriteAsync(string data);
    }
}
