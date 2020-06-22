using System;
using System.Collections.Generic;
using System.Text;

namespace CoinAPI.WebSocket.V1.DataModels
{
    public struct Ticker
    {
        public string symbol_id { get; set; }
        public object last_quote { get; set; }
        public object last_trade { get; set; }
        public object last_ohlcv_5sec { get; set; }
        public object last_ohlcv_15sec { get; set; }
        public object last_ohlcv_1min { get; set; }
        public object last_ohlcv_5min { get; set; }
        public object last_ohlcv_15min { get; set; }

    }
}
