(ns rest-api.specs.v1/symbol
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def v1/symbol-data
  {
   (ds/opt :symbol_id) string?
   (ds/opt :exchange_id) string?
   (ds/opt :symbol_type) string?
   (ds/opt :asset_id_base) string?
   (ds/opt :asset_id_quote) string?
   (ds/opt :asset_id_unit) string?
   (ds/opt :future_contract_unit) float?
   (ds/opt :future_contract_unit_asset) string?
   (ds/opt :future_delivery_time) inst?
   (ds/opt :option_type_is_call) boolean?
   (ds/opt :option_strike_price) float?
   (ds/opt :option_contract_unit) float?
   (ds/opt :option_exercise_style) string?
   (ds/opt :option_expiration_time) inst?
   (ds/opt :contract_delivery_time) inst?
   (ds/opt :contract_unit) float?
   (ds/opt :contract_unit_asset) string?
   (ds/opt :contract_id) string?
   (ds/opt :contract_display_name) string?
   (ds/opt :contract_display_description) string?
   (ds/opt :data_start) string?
   (ds/opt :data_end) string?
   (ds/opt :data_quote_start) inst?
   (ds/opt :data_quote_end) inst?
   (ds/opt :data_orderbook_start) inst?
   (ds/opt :data_orderbook_end) inst?
   (ds/opt :data_trade_start) inst?
   (ds/opt :data_trade_end) inst?
   (ds/opt :index_id) string?
   (ds/opt :index_display_name) string?
   (ds/opt :index_display_description) string?
   (ds/opt :volume_1hrs) float?
   (ds/opt :volume_1hrs_usd) float?
   (ds/opt :volume_1day) float?
   (ds/opt :volume_1day_usd) float?
   (ds/opt :volume_1mth) float?
   (ds/opt :volume_1mth_usd) float?
   (ds/opt :price) float?
   (ds/opt :symbol_id_exchange) string?
   (ds/opt :asset_id_base_exchange) string?
   (ds/opt :asset_id_quote_exchange) string?
   (ds/opt :price_precision) float?
   (ds/opt :size_precision) float?
   (ds/opt :raw_kvp) (s/map-of string? string?)
   (ds/opt :volume_to_usd) float?
   })

(def v1/symbol-spec
  (ds/spec
    {:name ::v1/symbol
     :spec v1/symbol-data}))
