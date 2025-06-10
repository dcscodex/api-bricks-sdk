(ns rest-api.specs.v1/general-data
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def v1/general-data-data
  {
   (ds/opt :entry_time) inst?
   (ds/opt :recv_time) inst?
   (ds/opt :exchange_id) string?
   (ds/opt :asset_id) string?
   (ds/opt :symbol_id) string?
   (ds/opt :metric_id) string?
   (ds/opt :value_decimal) float?
   (ds/opt :value_text) string?
   (ds/opt :value_time) inst?
   })

(def v1/general-data-spec
  (ds/spec
    {:name ::v1/general-data
     :spec v1/general-data-data}))
