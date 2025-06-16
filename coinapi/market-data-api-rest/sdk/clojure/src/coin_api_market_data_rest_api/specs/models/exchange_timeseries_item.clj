(ns coin-api-market-data-rest-api.specs.models/exchange-timeseries-item
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def models/exchange-timeseries-item-data
  {
   (ds/opt :time_period_start) inst?
   (ds/opt :time_period_end) inst?
   (ds/opt :time_open) inst?
   (ds/opt :time_close) inst?
   (ds/opt :price_open) float?
   (ds/opt :price_high) float?
   (ds/opt :price_low) float?
   (ds/opt :price_close) float?
   (ds/opt :volume_traded) float?
   (ds/opt :trades_count) int?
   (ds/opt :symbol_id_exchange) string?
   (ds/opt :symbol_id_coinapi) string?
   })

(def models/exchange-timeseries-item-spec
  (ds/spec
    {:name ::models/exchange-timeseries-item
     :spec models/exchange-timeseries-item-data}))
