(ns fx-historical-rest-api.specs.v1/exchange-rates-timeseries-item
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def v1/exchange-rates-timeseries-item-data
  {
   (ds/opt :time_period_start) inst?
   (ds/opt :time_period_end) inst?
   (ds/opt :time_open) inst?
   (ds/opt :time_close) inst?
   (ds/opt :rate_open) float?
   (ds/opt :rate_high) float?
   (ds/opt :rate_low) float?
   (ds/opt :rate_close) float?
   })

(def v1/exchange-rates-timeseries-item-spec
  (ds/spec
    {:name ::v1/exchange-rates-timeseries-item
     :spec v1/exchange-rates-timeseries-item-data}))
