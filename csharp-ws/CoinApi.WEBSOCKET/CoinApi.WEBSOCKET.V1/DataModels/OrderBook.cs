using System;
using System.Collections.Generic;
using System.Text;

namespace CoinApi.WEBSOCKET.V1.DataModels
{
    public struct OrderBook
    {
        public bool? is_snapshot { get; set; }
        public DateTime time_exchange { get; set; }
        public DateTime time_coinapi { get; set; }
        public object[] asks { get; set; }
        public object[] bids { get; set; }
    }
}
