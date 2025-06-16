(ns coin-api-market-data-rest-api.specs.v1/order-book-depth
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def v1/order-book-depth-data
  {
   (ds/opt :symbol_id) string?
   (ds/opt :time_exchange) inst?
   (ds/opt :time_coinapi) inst?
   (ds/opt :ask_levels) int?
   (ds/opt :bid_levels) int?
   (ds/opt :ask_depth) float?
   (ds/opt :bid_depth) float?
   })

(def v1/order-book-depth-spec
  (ds/spec
    {:name ::v1/order-book-depth
     :spec v1/order-book-depth-data}))
