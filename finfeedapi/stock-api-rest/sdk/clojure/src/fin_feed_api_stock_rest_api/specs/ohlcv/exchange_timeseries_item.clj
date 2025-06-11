(ns fin-feed-api-stock-rest-api.specs.ohlcv/exchange-timeseries-item
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def ohlcv/exchange-timeseries-item-data
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
   })

(def ohlcv/exchange-timeseries-item-spec
  (ds/spec
    {:name ::ohlcv/exchange-timeseries-item
     :spec ohlcv/exchange-timeseries-item-data}))
