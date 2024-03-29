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
        public string Endpoint { get; set; }
        public string ApiKey { get; set; }

        public static AppConfiguration LoadFromIConfiguration(IConfiguration configuration)
        {
            return new AppConfiguration
            {
                Endpoint = configuration.GetValue<string>("FileName") ?? "output.csv",
                ApiKey = configuration.GetValue<string>("ApiKey")
            };
        }
    }
}
