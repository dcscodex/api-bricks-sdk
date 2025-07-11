(ns coin-api-market-data-rest-api.api.trades
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


(defn-spec v1-trades-latest-get-with-http-info any?
  "Latest data
  Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order."
  ([] (v1-trades-latest-get-with-http-info nil))
  ([{:keys [filter_symbol_id include_id limit]} (s/map-of keyword? any?)]
   (call-api "/v1/trades/latest" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_symbol_id" filter_symbol_id "include_id" include_id "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-trades-latest-get (s/coll-of v1/trade-spec)
  "Latest data
  Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order."
  ([] (v1-trades-latest-get nil))
  ([optional-params any?]
   (let [res (:data (v1-trades-latest-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/trade-spec) res st/string-transformer)
        res))))


(defn-spec v1-trades-symbol-id-history-get-with-http-info any?
  "Historical data
  Get history transactions from specific symbol, returned in time ascending order.

:::warning
The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.
Please use the 'date' parameter instead for querying data for a specific day without filter.
:::"
  ([symbol_id string?, ] (v1-trades-symbol-id-history-get-with-http-info symbol_id nil))
  ([symbol_id string?, {:keys [date time_start time_end limit include_id]} (s/map-of keyword? any?)]
   (check-required-params symbol_id)
   (call-api "/v1/trades/{symbol_id}/history" :get
             {:path-params   {"symbol_id" symbol_id }
              :header-params {}
              :query-params  {"date" date "time_start" time_start "time_end" time_end "limit" limit "include_id" include_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-trades-symbol-id-history-get (s/coll-of v1/trade-spec)
  "Historical data
  Get history transactions from specific symbol, returned in time ascending order.

:::warning
The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.
Please use the 'date' parameter instead for querying data for a specific day without filter.
:::"
  ([symbol_id string?, ] (v1-trades-symbol-id-history-get symbol_id nil))
  ([symbol_id string?, optional-params any?]
   (let [res (:data (v1-trades-symbol-id-history-get-with-http-info symbol_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/trade-spec) res st/string-transformer)
        res))))


(defn-spec v1-trades-symbol-id-latest-get-with-http-info any?
  "Latest data by symbol_id
  Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order."
  ([symbol_id string?, ] (v1-trades-symbol-id-latest-get-with-http-info symbol_id nil))
  ([symbol_id string?, {:keys [limit include_id]} (s/map-of keyword? any?)]
   (check-required-params symbol_id)
   (call-api "/v1/trades/{symbol_id}/latest" :get
             {:path-params   {"symbol_id" symbol_id }
              :header-params {}
              :query-params  {"limit" limit "include_id" include_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-trades-symbol-id-latest-get (s/coll-of v1/trade-spec)
  "Latest data by symbol_id
  Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order."
  ([symbol_id string?, ] (v1-trades-symbol-id-latest-get symbol_id nil))
  ([symbol_id string?, optional-params any?]
   (let [res (:data (v1-trades-symbol-id-latest-get-with-http-info symbol_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/trade-spec) res st/string-transformer)
        res))))


