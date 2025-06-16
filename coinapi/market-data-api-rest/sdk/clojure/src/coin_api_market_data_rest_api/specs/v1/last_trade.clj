(ns coin-api-market-data-rest-api.specs.v1/last-trade
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def v1/last-trade-data
  {
   (ds/opt :time_exchange) inst?
   (ds/opt :time_coinapi) inst?
   (ds/opt :uuid) uuid?
   (ds/opt :price) float?
   (ds/opt :size) float?
   (ds/opt :taker_side) string?
   })

(def v1/last-trade-spec
  (ds/spec
    {:name ::v1/last-trade
     :spec v1/last-trade-data}))
