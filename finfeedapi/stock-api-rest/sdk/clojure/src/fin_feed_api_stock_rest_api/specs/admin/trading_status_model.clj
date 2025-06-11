(ns fin-feed-api-stock-rest-api.specs.admin/trading-status-model
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def admin/trading-status-model-data
  {
   (ds/opt :symbol) string?
   (ds/opt :timestamp_nanos) int?
   (ds/opt :timestamp) inst?
   (ds/opt :is_trading_live) boolean?
   (ds/opt :is_trading_halted) boolean?
   (ds/opt :is_trading_in_order_acceptance_period) boolean?
   (ds/opt :is_trading_paused) boolean?
   (ds/opt :is_reason_halt_news_pending) boolean?
   (ds/opt :is_reason_ipo_not_yet_trading) boolean?
   (ds/opt :is_reason_ipo_deferred) boolean?
   (ds/opt :is_reason_halt_news_dissemination) boolean?
   (ds/opt :is_reason_ipo_order_acceptance_period) boolean?
   (ds/opt :is_reason_ipo_pre_launch_period) boolean?
   (ds/opt :is_reason_market_wide_circuit_breaker_level1) boolean?
   (ds/opt :is_reason_market_wide_circuit_breaker_level2) boolean?
   (ds/opt :is_reason_market_wide_circuit_breaker_level3) boolean?
   (ds/opt :is_reason_not_applicable) boolean?
   (ds/opt :is_reason_not_available) boolean?
   })

(def admin/trading-status-model-spec
  (ds/spec
    {:name ::admin/trading-status-model
     :spec admin/trading-status-model-data}))
