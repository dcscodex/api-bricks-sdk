(ns rest-api.specs.v1/timeseries-period
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def v1/timeseries-period-data
  {
   (ds/opt :period_id) string?
   (ds/opt :length_seconds) int?
   (ds/opt :length_months) int?
   (ds/opt :unit_count) int?
   (ds/opt :unit_name) string?
   (ds/opt :display_name) string?
   })

(def v1/timeseries-period-spec
  (ds/spec
    {:name ::v1/timeseries-period
     :spec v1/timeseries-period-data}))
