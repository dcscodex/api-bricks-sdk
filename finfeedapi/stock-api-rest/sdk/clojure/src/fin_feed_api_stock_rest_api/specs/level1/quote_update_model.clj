(ns fin-feed-api-stock-rest-api.specs.level1/quote-update-model
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def level1/quote-update-model-data
  {
   (ds/opt :symbol) string?
   (ds/opt :timestamp_nanos) int?
   (ds/opt :timestamp) inst?
   (ds/opt :is_symbol_available) boolean?
   (ds/opt :is_pre_post_market_session) boolean?
   (ds/opt :ask_size) int?
   (ds/opt :ask_price) float?
   (ds/opt :bid_price) float?
   (ds/opt :bid_size) int?
   })

(def level1/quote-update-model-spec
  (ds/spec
    {:name ::level1/quote-update-model
     :spec level1/quote-update-model-data}))
