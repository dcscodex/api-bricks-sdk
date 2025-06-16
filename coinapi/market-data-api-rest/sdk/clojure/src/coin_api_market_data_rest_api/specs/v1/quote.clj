(ns coin-api-market-data-rest-api.specs.v1/quote
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def v1/quote-data
  {
   (ds/opt :symbol_id) string?
   (ds/opt :time_exchange) inst?
   (ds/opt :time_coinapi) inst?
   (ds/opt :ask_price) float?
   (ds/opt :ask_size) float?
   (ds/opt :bid_price) float?
   (ds/opt :bid_size) float?
   })

(def v1/quote-spec
  (ds/spec
    {:name ::v1/quote
     :spec v1/quote-data}))
