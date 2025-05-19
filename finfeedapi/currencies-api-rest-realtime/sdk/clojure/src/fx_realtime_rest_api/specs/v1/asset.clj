(ns fx-realtime-rest-api.specs.v1/asset
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [fx-realtime-rest-api.specs.v1/chain-network-address :refer :all]
            )
  (:import (java.io File)))


(def v1/asset-data
  {
   (ds/opt :asset_id) string?
   (ds/opt :name) string?
   (ds/opt :type_is_crypto) int?
   (ds/opt :data_quote_start) inst?
   (ds/opt :data_quote_end) inst?
   (ds/opt :data_orderbook_start) inst?
   (ds/opt :data_orderbook_end) inst?
   (ds/opt :data_trade_start) inst?
   (ds/opt :data_trade_end) inst?
   (ds/opt :data_symbols_count) int?
   (ds/opt :volume_1hrs_usd) float?
   (ds/opt :volume_1day_usd) float?
   (ds/opt :volume_1mth_usd) float?
   (ds/opt :price_usd) float?
   (ds/opt :id_icon) uuid?
   (ds/opt :supply_current) float?
   (ds/opt :supply_total) float?
   (ds/opt :supply_max) float?
   (ds/opt :chain_addresses) (s/coll-of v1/chain-network-address-spec)
   (ds/opt :data_start) string?
   (ds/opt :data_end) string?
   })

(def v1/asset-spec
  (ds/spec
    {:name ::v1/asset
     :spec v1/asset-data}))
