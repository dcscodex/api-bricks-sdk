(ns fin-feed-api-stock-rest-api.api.metadata
  (:require [fin-feed-api-stock-rest-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [fin-feed-api-stock-rest-api.specs.fin-feed-api/exchange-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.level1/quote-update-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.level3/order-book-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.admin/security-directory-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.admin/trading-status-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.ohlcv/timeseries-period :refer :all]
            [fin-feed-api-stock-rest-api.specs.level3/delete-order-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.ohlcv/timeseries-item :refer :all]
            [fin-feed-api-stock-rest-api.specs.fin-feed-api/symbol-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.level3/executed-order-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.admin/official-price-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.admin/short-sale-price-test-status-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.admin/security-event-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.level3/modify-order-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.admin/auction-information-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.admin/retail-liquidity-indicator-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.ohlcv/exchange-timeseries-item :refer :all]
            [fin-feed-api-stock-rest-api.specs.level2/price-level-update-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.admin/admin-message-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.level3/clear-book-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.trade/trade-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.level3/add-order-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.admin/operational-halt-status-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.admin/system-event-model :refer :all]
            )
  (:import (java.io File)))


(defn-spec v1-exchanges-get-with-http-info any?
  "List of exchanges"
  []
  (call-api "/v1/exchanges" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    ["APIKey" "JWT"]}))

(defn-spec v1-exchanges-get (s/coll-of fin-feed-api/exchange-model-spec)
  "List of exchanges"
  []
  (let [res (:data (v1-exchanges-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of fin-feed-api/exchange-model-spec) res st/string-transformer)
       res)))


(defn-spec v1-symbols-exchange-id-get-with-http-info any?
  "List of symbols for the exchange"
  [exchange_id string?]
  (check-required-params exchange_id)
  (call-api "/v1/symbols/{exchange_id}" :get
            {:path-params   {"exchange_id" exchange_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    ["APIKey" "JWT"]}))

(defn-spec v1-symbols-exchange-id-get (s/coll-of fin-feed-api/symbol-model-spec)
  "List of symbols for the exchange"
  [exchange_id string?]
  (let [res (:data (v1-symbols-exchange-id-get-with-http-info exchange_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of fin-feed-api/symbol-model-spec) res st/string-transformer)
       res)))


