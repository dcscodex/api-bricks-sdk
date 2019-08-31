using System;

namespace CoinAPI.WebSocket.V1.DataModels
{
    public struct Volume
    {
        public DateTime time_coinapi { get; set; }
        public string period_id { get; set; }
        public object[] volume_by_symbol { get; set; }
    }
}
