(ns rest-api.specs.level3/executed-order-model
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def level3/executed-order-model-data
  {
   (ds/opt :symbol) string?
   (ds/opt :timestamp_nanos) int?
   (ds/opt :timestamp) inst?
   (ds/opt :order_id_reference) int?
   (ds/opt :sale_condition_flags) int?
   (ds/opt :is_intermarket_sweep) boolean?
   (ds/opt :is_extended_hours_trade) boolean?
   (ds/opt :is_odd_lot_trade) boolean?
   (ds/opt :is_trade_through_exempt) boolean?
   (ds/opt :is_single_price_cross_trade) boolean?
   (ds/opt :size) int?
   (ds/opt :price) float?
   (ds/opt :trade_id) int?
   })

(def level3/executed-order-model-spec
  (ds/spec
    {:name ::level3/executed-order-model
     :spec level3/executed-order-model-data}))
