(ns exchange-rates-historical-rest-api.specs.v1/exchange-rate
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def v1/exchange-rate-data
  {
   (ds/opt :time) inst?
   (ds/opt :asset_id_base) string?
   (ds/opt :asset_id_quote) string?
   (ds/opt :rate) float?
   })

(def v1/exchange-rate-spec
  (ds/spec
    {:name ::v1/exchange-rate
     :spec v1/exchange-rate-data}))
