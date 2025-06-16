(ns coin-api-market-data-rest-api.specs.v1/quote-trade
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [coin-api-market-data-rest-api.specs.v1/last-trade :refer :all]
            )
  (:import (java.io File)))


(def v1/quote-trade-data
  {
   (ds/opt :symbol_id) string?
   (ds/opt :time_exchange) inst?
   (ds/opt :time_coinapi) inst?
   (ds/opt :ask_price) float?
   (ds/opt :ask_size) float?
   (ds/opt :bid_price) float?
   (ds/opt :bid_size) float?
   (ds/opt :last_trade) v1/last-trade-spec
   })

(def v1/quote-trade-spec
  (ds/spec
    {:name ::v1/quote-trade
     :spec v1/quote-trade-data}))
