(ns coin-api-indexes-rest-api.specs.metadata/timeseries-period
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def metadata/timeseries-period-data
  {
   (ds/opt :period_id) string?
   (ds/opt :length_seconds) int?
   (ds/opt :length_months) int?
   (ds/opt :unit_count) int?
   (ds/opt :unit_name) string?
   (ds/opt :display_name) string?
   })

(def metadata/timeseries-period-spec
  (ds/spec
    {:name ::metadata/timeseries-period
     :spec metadata/timeseries-period-data}))
