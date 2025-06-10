(ns rest-api.specs.v1/metric
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def v1/metric-data
  {
   (ds/opt :metric_id) string?
   (ds/opt :description) string?
   })

(def v1/metric-spec
  (ds/spec
    {:name ::v1/metric
     :spec v1/metric-data}))
