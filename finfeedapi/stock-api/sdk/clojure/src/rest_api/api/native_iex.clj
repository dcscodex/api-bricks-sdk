(ns rest-api.api.native-iex
  (:require [rest-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [rest-api.specs.fin-feed-api/exchange-model :refer :all]
            [rest-api.specs.level1/quote-update-model :refer :all]
            [rest-api.specs.level3/order-book-model :refer :all]
            [rest-api.specs.admin/security-directory-model :refer :all]
            [rest-api.specs.admin/trading-status-model :refer :all]
            [rest-api.specs.ohlcv/timeseries-period :refer :all]
            [rest-api.specs.level3/delete-order-model :refer :all]
            [rest-api.specs.ohlcv/timeseries-item :refer :all]
            [rest-api.specs.fin-feed-api/symbol-model :refer :all]
            [rest-api.specs.level3/executed-order-model :refer :all]
            [rest-api.specs.admin/official-price-model :refer :all]
            [rest-api.specs.admin/short-sale-price-test-status-model :refer :all]
            [rest-api.specs.admin/security-event-model :refer :all]
            [rest-api.specs.level3/modify-order-model :refer :all]
            [rest-api.specs.admin/auction-information-model :refer :all]
            [rest-api.specs.admin/retail-liquidity-indicator-model :refer :all]
            [rest-api.specs.ohlcv/exchange-timeseries-item :refer :all]
            [rest-api.specs.level2/price-level-update-model :refer :all]
            [rest-api.specs.admin/admin-message-model :refer :all]
            [rest-api.specs.level3/clear-book-model :refer :all]
            [rest-api.specs.trade/trade-model :refer :all]
            [rest-api.specs.level3/add-order-model :refer :all]
            [rest-api.specs.admin/operational-halt-status-model :refer :all]
            [rest-api.specs.admin/system-event-model :refer :all]
            )
  (:import (java.io File)))


(defn-spec v1-native-iex-admin-messages-symbol-get-with-http-info any?
  "Get Admin Messages"
  [symbol string?, date inst?]
  (check-required-params symbol date)
  (call-api "/v1/native/iex/admin/messages/{symbol}" :get
            {:path-params   {"symbol" symbol }
             :header-params {}
             :query-params  {"date" date }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec v1-native-iex-admin-messages-symbol-get (s/coll-of admin/admin-message-model-spec)
  "Get Admin Messages"
  [symbol string?, date inst?]
  (let [res (:data (v1-native-iex-admin-messages-symbol-get-with-http-info symbol date))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of admin/admin-message-model-spec) res st/string-transformer)
       res)))


(defn-spec v1-native-iex-admin-system-event-get-with-http-info any?
  "Get System Events"
  [date inst?]
  (check-required-params date)
  (call-api "/v1/native/iex/admin/system-event" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"date" date }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec v1-native-iex-admin-system-event-get (s/coll-of admin/system-event-model-spec)
  "Get System Events"
  [date inst?]
  (let [res (:data (v1-native-iex-admin-system-event-get-with-http-info date))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of admin/system-event-model-spec) res st/string-transformer)
       res)))


(defn-spec v1-native-iex-level1-quote-symbol-get-with-http-info any?
  "Get Level-1 Quotes"
  [symbol string?, date inst?]
  (check-required-params symbol date)
  (call-api "/v1/native/iex/level1-quote/{symbol}" :get
            {:path-params   {"symbol" symbol }
             :header-params {}
             :query-params  {"date" date }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec v1-native-iex-level1-quote-symbol-get (s/coll-of level1/quote-update-model-spec)
  "Get Level-1 Quotes"
  [symbol string?, date inst?]
  (let [res (:data (v1-native-iex-level1-quote-symbol-get-with-http-info symbol date))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of level1/quote-update-model-spec) res st/string-transformer)
       res)))


(defn-spec v1-native-iex-level2-price-level-update-symbol-get-with-http-info any?
  "Get Level-2 Price Level Book"
  [symbol string?, date inst?]
  (check-required-params symbol date)
  (call-api "/v1/native/iex/level2-price-level-update/{symbol}" :get
            {:path-params   {"symbol" symbol }
             :header-params {}
             :query-params  {"date" date }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec v1-native-iex-level2-price-level-update-symbol-get (s/coll-of level2/price-level-update-model-spec)
  "Get Level-2 Price Level Book"
  [symbol string?, date inst?]
  (let [res (:data (v1-native-iex-level2-price-level-update-symbol-get-with-http-info symbol date))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of level2/price-level-update-model-spec) res st/string-transformer)
       res)))


(defn-spec v1-native-iex-level3-order-book-symbol-get-with-http-info any?
  "Get Level-3 Order Book"
  [symbol string?, date inst?]
  (check-required-params symbol date)
  (call-api "/v1/native/iex/level3-order-book/{symbol}" :get
            {:path-params   {"symbol" symbol }
             :header-params {}
             :query-params  {"date" date }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec v1-native-iex-level3-order-book-symbol-get (s/coll-of level3/order-book-model-spec)
  "Get Level-3 Order Book"
  [symbol string?, date inst?]
  (let [res (:data (v1-native-iex-level3-order-book-symbol-get-with-http-info symbol date))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of level3/order-book-model-spec) res st/string-transformer)
       res)))


(defn-spec v1-native-iex-trade-symbol-get-with-http-info any?
  "Get Trades"
  [symbol string?, date inst?]
  (check-required-params symbol date)
  (call-api "/v1/native/iex/trade/{symbol}" :get
            {:path-params   {"symbol" symbol }
             :header-params {}
             :query-params  {"date" date }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec v1-native-iex-trade-symbol-get (s/coll-of trade/trade-model-spec)
  "Get Trades"
  [symbol string?, date inst?]
  (let [res (:data (v1-native-iex-trade-symbol-get-with-http-info symbol date))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of trade/trade-model-spec) res st/string-transformer)
       res)))


