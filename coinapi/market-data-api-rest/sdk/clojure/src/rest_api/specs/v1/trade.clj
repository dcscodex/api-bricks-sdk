(ns rest-api.specs.v1/trade
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def v1/trade-data
  {
   (ds/opt :symbol_id) string?
   (ds/opt :time_exchange) inst?
   (ds/opt :time_coinapi) inst?
   (ds/opt :uuid) uuid?
   (ds/opt :price) float?
   (ds/opt :size) float?
   (ds/opt :taker_side) string?
   (ds/opt :id_trade) string?
   (ds/opt :id_order_maker) string?
   (ds/opt :id_order_taker) string?
   })

(def v1/trade-spec
  (ds/spec
    {:name ::v1/trade
     :spec v1/trade-data}))
