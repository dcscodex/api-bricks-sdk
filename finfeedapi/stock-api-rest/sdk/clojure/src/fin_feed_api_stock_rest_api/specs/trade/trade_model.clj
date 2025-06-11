(ns fin-feed-api-stock-rest-api.specs.trade/trade-model
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def trade/trade-model-data
  {
   (ds/opt :is_trade_break) boolean?
   (ds/opt :symbol) string?
   (ds/opt :timestamp_nanos) int?
   (ds/opt :timestamp) inst?
   (ds/opt :size) int?
   (ds/opt :price) float?
   (ds/opt :trade_id) int?
   (ds/opt :is_intermarket_sweep) boolean?
   (ds/opt :is_extended_hours_trade) boolean?
   (ds/opt :is_odd_lot_trade) boolean?
   (ds/opt :is_trade_through_exempt) boolean?
   (ds/opt :is_single_price_cross_trade) boolean?
   })

(def trade/trade-model-spec
  (ds/spec
    {:name ::trade/trade-model
     :spec trade/trade-model-data}))
