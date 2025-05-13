using System;
using System.Collections.Generic;
using System.Text;

namespace CoinAPI.REST.V1.DataModels
{
    public class ExchangeOHLCV:OHLCV
    {
        public string symbol_id_exchange { get; set; }
        public string symbol_id_coinapi { get; set; } = "";

    }
}
