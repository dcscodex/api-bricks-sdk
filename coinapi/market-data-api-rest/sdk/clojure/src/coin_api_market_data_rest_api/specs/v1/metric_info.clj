(ns coin-api-market-data-rest-api.specs.v1/metric-info
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def v1/metric-info-data
  {
   (ds/opt :metric_id) string?
   (ds/opt :description) string?
   (ds/opt :source_id) string?
   })

(def v1/metric-info-spec
  (ds/spec
    {:name ::v1/metric-info
     :spec v1/metric-info-data}))
