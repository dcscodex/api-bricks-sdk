(ns fin-feed-api-stock-rest-api.specs.ohlcv/timeseries-period
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def ohlcv/timeseries-period-data
  {
   (ds/opt :period_id) string?
   (ds/opt :length_seconds) int?
   (ds/opt :length_months) int?
   (ds/opt :unit_count) int?
   (ds/opt :unit_name) string?
   (ds/opt :display_name) string?
   })

(def ohlcv/timeseries-period-spec
  (ds/spec
    {:name ::ohlcv/timeseries-period
     :spec ohlcv/timeseries-period-data}))
