(ns coin-api-market-data-rest-api.specs.v1/exchange-rates
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [coin-api-market-data-rest-api.specs.v1/exchange-rates-rate :refer :all]
            )
  (:import (java.io File)))


(def v1/exchange-rates-data
  {
   (ds/opt :asset_id_base) string?
   (ds/opt :rates) (s/coll-of v1/exchange-rates-rate-spec)
   })

(def v1/exchange-rates-spec
  (ds/spec
    {:name ::v1/exchange-rates
     :spec v1/exchange-rates-data}))
