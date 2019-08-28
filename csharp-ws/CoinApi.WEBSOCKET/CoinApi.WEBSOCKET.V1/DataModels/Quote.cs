using System;

namespace CoinApi.WEBSOCKET.V1.DataModels
{
    public struct Quote
    {
        public DateTime time_exchange { get; set; }
        public DateTime time_coinapi { get; set; }
        public decimal ask_price { get; set; }
        public decimal ask_size { get; set; }
        public decimal bid_size { get; set; }
        public decimal bid_price { get; set; }
    }
}
