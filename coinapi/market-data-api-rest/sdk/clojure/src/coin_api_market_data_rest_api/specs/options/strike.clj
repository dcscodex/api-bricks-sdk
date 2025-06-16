(ns coin-api-market-data-rest-api.specs.options/strike
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [coin-api-market-data-rest-api.specs.v1/quote-trade :refer :all]
            [coin-api-market-data-rest-api.specs.v1/quote-trade :refer :all]
            )
  (:import (java.io File)))


(def options/strike-data
  {
   (ds/opt :strike_price) float?
   (ds/opt :call) v1/quote-trade-spec
   (ds/opt :put) v1/quote-trade-spec
   })

(def options/strike-spec
  (ds/spec
    {:name ::options/strike
     :spec options/strike-data}))
