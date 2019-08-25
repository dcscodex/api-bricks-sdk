using System;
using System.Collections.Generic;
using System.Text;

namespace CoinApi.WEBSOCKET.V1.DataModels
{
    public class Trade
    {
        public DateTime time_exchange { get; set; }
        public DateTime time_coinapi { get; set; }
        public string uuid { get; set; }
        public decimal price { get; set; }
        public decimal size { get; set; }
        public string taker_side { get; set; }
    }
}
