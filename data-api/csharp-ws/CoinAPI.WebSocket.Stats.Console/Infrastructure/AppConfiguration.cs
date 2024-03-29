using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoinAPI.WebSocket.Stats.Console.Infrastructure
{
    public class AppConfiguration
    {
        public List<string> OutputType { get; set; } = new List<string>();
        public string ApiKey { get; set; }

        public static AppConfiguration LoadFromIConfiguration(IConfiguration configuration)
        {
            return (AppConfiguration)configuration.Get(typeof(AppConfiguration));
        }
    }
}
