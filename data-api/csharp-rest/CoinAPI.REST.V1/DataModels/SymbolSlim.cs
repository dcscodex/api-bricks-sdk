using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoinAPI.REST.V1 {
    public class SymbolSlim {
        public string symbol_id { get; set; }
        public string exchange_id { get; set; }
        public string symbol_type { get; set; }
        public string asset_id_base { get; set; }
        public string asset_id_quote { get; set; }
        public decimal? price { get; set; }
        public string symbol_id_exchange { get; set; }
        public string asset_id_base_exchange { get; set; }
        public string asset_id_quote_exchange { get; set; }
        public decimal? price_precision { get; set; }
        public decimal? size_precision { get; set; }
    }
}
