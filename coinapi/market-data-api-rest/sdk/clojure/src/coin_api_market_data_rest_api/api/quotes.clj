(ns coin-api-market-data-rest-api.api.quotes
  (:require [coin-api-market-data-rest-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [coin-api-market-data-rest-api.specs.v1/asset :refer :all]
            [coin-api-market-data-rest-api.specs.v1/metric-data :refer :all]
            [coin-api-market-data-rest-api.specs.options/strike :refer :all]
            [coin-api-market-data-rest-api.specs.v1/icon :refer :all]
            [coin-api-market-data-rest-api.specs.v1/listing-item :refer :all]
            [coin-api-market-data-rest-api.specs.v1/order-book-depth :refer :all]
            [coin-api-market-data-rest-api.specs.v1/metric-info :refer :all]
            [coin-api-market-data-rest-api.specs.v1/exchange-rates :refer :all]
            [coin-api-market-data-rest-api.specs.models/exchange-timeseries-item :refer :all]
            [coin-api-market-data-rest-api.specs.v1/exchange :refer :all]
            [coin-api-market-data-rest-api.specs.v1/quote :refer :all]
            [coin-api-market-data-rest-api.specs.v1/symbol-mapping :refer :all]
            [coin-api-market-data-rest-api.specs.v1/general-data :refer :all]
            [coin-api-market-data-rest-api.specs.v1/chain :refer :all]
            [coin-api-market-data-rest-api.specs.v1/quote-trade :refer :all]
            [coin-api-market-data-rest-api.specs.options/option-exchange-group :refer :all]
            [coin-api-market-data-rest-api.specs.v1/last-trade :refer :all]
            [coin-api-market-data-rest-api.specs.v1/metric :refer :all]
            [coin-api-market-data-rest-api.specs.v1/exchange-rates-timeseries-item :refer :all]
            [coin-api-market-data-rest-api.specs.v1/symbol :refer :all]
            [coin-api-market-data-rest-api.specs.v1/order-book :refer :all]
            [coin-api-market-data-rest-api.specs.v1/timeseries-period :refer :all]
            [coin-api-market-data-rest-api.specs.v1/trade :refer :all]
            [coin-api-market-data-rest-api.specs.v1/chain-network-address :refer :all]
            [coin-api-market-data-rest-api.specs.v1/exchange-rates-rate :refer :all]
            [coin-api-market-data-rest-api.specs.v1/exchange-rate :refer :all]
            [coin-api-market-data-rest-api.specs.v1/order-book-base :refer :all]
            [coin-api-market-data-rest-api.specs.v1/timeseries-item :refer :all]
            )
  (:import (java.io File)))


(defn-spec v1-quotes-current-get-with-http-info any?
  "Current data
  Get current quotes for all symbols or for a specific symbol.
            
:::info
When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned.
:::"
  ([] (v1-quotes-current-get-with-http-info nil))
  ([{:keys [filter_symbol_id]} (s/map-of keyword? any?)]
   (call-api "/v1/quotes/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_symbol_id" filter_symbol_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-quotes-current-get (s/coll-of v1/quote-trade-spec)
  "Current data
  Get current quotes for all symbols or for a specific symbol.
            
:::info
When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned.
:::"
  ([] (v1-quotes-current-get nil))
  ([optional-params any?]
   (let [res (:data (v1-quotes-current-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/quote-trade-spec) res st/string-transformer)
        res))))


(defn-spec v1-quotes-latest-get-with-http-info any?
  "Latest data
  Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order."
  ([] (v1-quotes-latest-get-with-http-info nil))
  ([{:keys [filter_symbol_id limit]} (s/map-of keyword? any?)]
   (call-api "/v1/quotes/latest" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_symbol_id" filter_symbol_id "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-quotes-latest-get (s/coll-of v1/quote-spec)
  "Latest data
  Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order."
  ([] (v1-quotes-latest-get nil))
  ([optional-params any?]
   (let [res (:data (v1-quotes-latest-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/quote-spec) res st/string-transformer)
        res))))


(defn-spec v1-quotes-symbol-id-current-get-with-http-info any?
  "Current quotes for a specific symbol"
  [symbol_id string?]
  (check-required-params symbol_id)
  (call-api "/v1/quotes/{symbol_id}/current" :get
            {:path-params   {"symbol_id" symbol_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["APIKey" "JWT"]}))

(defn-spec v1-quotes-symbol-id-current-get v1/quote-trade-spec
  "Current quotes for a specific symbol"
  [symbol_id string?]
  (let [res (:data (v1-quotes-symbol-id-current-get-with-http-info symbol_id))]
    (if (:decode-models *api-context*)
       (st/decode v1/quote-trade-spec res st/string-transformer)
       res)))


(defn-spec v1-quotes-symbol-id-history-get-with-http-info any?
  "Historical data
  Get historical quote updates within requested time range, returned in time ascending order.

:::warning
The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.
Please use the 'date' parameter instead for querying data for a specific day without filter.
:::"
  ([symbol_id string?, ] (v1-quotes-symbol-id-history-get-with-http-info symbol_id nil))
  ([symbol_id string?, {:keys [date time_start time_end limit]} (s/map-of keyword? any?)]
   (check-required-params symbol_id)
   (call-api "/v1/quotes/{symbol_id}/history" :get
             {:path-params   {"symbol_id" symbol_id }
              :header-params {}
              :query-params  {"date" date "time_start" time_start "time_end" time_end "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-quotes-symbol-id-history-get (s/coll-of v1/quote-spec)
  "Historical data
  Get historical quote updates within requested time range, returned in time ascending order.

:::warning
The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.
Please use the 'date' parameter instead for querying data for a specific day without filter.
:::"
  ([symbol_id string?, ] (v1-quotes-symbol-id-history-get symbol_id nil))
  ([symbol_id string?, optional-params any?]
   (let [res (:data (v1-quotes-symbol-id-history-get-with-http-info symbol_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/quote-spec) res st/string-transformer)
        res))))


(defn-spec v1-quotes-symbol-id-latest-get-with-http-info any?
  "Latest quote updates for a specific symbol"
  ([symbol_id string?, ] (v1-quotes-symbol-id-latest-get-with-http-info symbol_id nil))
  ([symbol_id string?, {:keys [limit]} (s/map-of keyword? any?)]
   (check-required-params symbol_id)
   (call-api "/v1/quotes/{symbol_id}/latest" :get
             {:path-params   {"symbol_id" symbol_id }
              :header-params {}
              :query-params  {"limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-quotes-symbol-id-latest-get (s/coll-of v1/quote-spec)
  "Latest quote updates for a specific symbol"
  ([symbol_id string?, ] (v1-quotes-symbol-id-latest-get symbol_id nil))
  ([symbol_id string?, optional-params any?]
   (let [res (:data (v1-quotes-symbol-id-latest-get-with-http-info symbol_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/quote-spec) res st/string-transformer)
        res))))


