(ns rest-api.specs.v1/metric-data
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def v1/metric-data-data
  {
   (ds/opt :symbol_id) string?
   (ds/opt :time) inst?
   (ds/opt :value) float?
   })

(def v1/metric-data-spec
  (ds/spec
    {:name ::v1/metric-data
     :spec v1/metric-data-data}))
