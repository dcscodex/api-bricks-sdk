(ns coin-api-market-data-rest-api.specs.options/option-exchange-group
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [coin-api-market-data-rest-api.specs.options/strike :refer :all]
            )
  (:import (java.io File)))


(def options/option-exchange-group-data
  {
   (ds/opt :asset_id_base) string?
   (ds/opt :asset_id_quote) string?
   (ds/opt :underlying_price) float?
   (ds/opt :time_expiration) inst?
   (ds/opt :strikes) (s/coll-of options/strike-spec)
   })

(def options/option-exchange-group-spec
  (ds/spec
    {:name ::options/option-exchange-group
     :spec options/option-exchange-group-data}))
