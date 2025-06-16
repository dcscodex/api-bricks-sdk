(ns coin-api-market-data-rest-api.specs.v1/exchange
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [coin-api-market-data-rest-api.specs.v1/icon :refer :all]
            )
  (:import (java.io File)))


(def v1/exchange-data
  {
   (ds/opt :exchange_id) string?
   (ds/opt :website) string?
   (ds/opt :name) string?
   (ds/opt :data_start) string?
   (ds/opt :data_end) string?
   (ds/opt :data_quote_start) inst?
   (ds/opt :data_quote_end) inst?
   (ds/opt :data_orderbook_start) inst?
   (ds/opt :data_orderbook_end) inst?
   (ds/opt :data_trade_start) inst?
   (ds/opt :data_trade_end) inst?
   (ds/opt :data_trade_count) int?
   (ds/opt :data_symbols_count) int?
   (ds/opt :volume_1hrs_usd) float?
   (ds/opt :volume_1day_usd) float?
   (ds/opt :volume_1mth_usd) float?
   (ds/opt :metric_id) (s/coll-of string?)
   (ds/opt :icons) (s/coll-of v1/icon-spec)
   (ds/opt :rank) float?
   (ds/opt :integration_status) string?
   })

(def v1/exchange-spec
  (ds/spec
    {:name ::v1/exchange
     :spec v1/exchange-data}))
