using System;

namespace CoinApi.WEBSOCKET.V1.DataModels
{
    public class Volume
    {
        public DateTime time_coinapi { get; set; } = DateTime.UtcNow;
        public string period_id { get; set; }
        public object[] volume_by_symbol { get; set; }
    }
}
