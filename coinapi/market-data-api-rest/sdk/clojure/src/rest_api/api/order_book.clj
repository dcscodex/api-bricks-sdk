(ns rest-api.api.order-book
  (:require [rest-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [rest-api.specs.v1/asset :refer :all]
            [rest-api.specs.v1/metric-data :refer :all]
            [rest-api.specs.options/strike :refer :all]
            [rest-api.specs.v1/external-asset :refer :all]
            [rest-api.specs.v1/icon :refer :all]
            [rest-api.specs.v1/listing-item :refer :all]
            [rest-api.specs.v1/order-book-depth :refer :all]
            [rest-api.specs.v1/metric-info :refer :all]
            [rest-api.specs.v1/external-exchange :refer :all]
            [rest-api.specs.v1/exchange-rates :refer :all]
            [rest-api.specs.models/exchange-timeseries-item :refer :all]
            [rest-api.specs.v1/exchange :refer :all]
            [rest-api.specs.v1/quote :refer :all]
            [rest-api.specs.v1/symbol-mapping :refer :all]
            [rest-api.specs.v1/general-data :refer :all]
            [rest-api.specs.v1/chain :refer :all]
            [rest-api.specs.v1/quote-trade :refer :all]
            [rest-api.specs.options/option-exchange-group :refer :all]
            [rest-api.specs.v1/last-trade :refer :all]
            [rest-api.specs.v1/metric :refer :all]
            [rest-api.specs.v1/exchange-rates-timeseries-item :refer :all]
            [rest-api.specs.v1/symbol :refer :all]
            [rest-api.specs.v1/order-book :refer :all]
            [rest-api.specs.v1/timeseries-period :refer :all]
            [rest-api.specs.v1/trade :refer :all]
            [rest-api.specs.v1/chain-network-address :refer :all]
            [rest-api.specs.v1/exchange-rates-rate :refer :all]
            [rest-api.specs.v1/exchange-rate :refer :all]
            [rest-api.specs.v1/order-book-base :refer :all]
            [rest-api.specs.v1/timeseries-item :refer :all]
            )
  (:import (java.io File)))


(defn-spec v1-orderbooks-symbol-id-current-get-with-http-info any?
  "Get current order book
  Retrieves the current order book for the specified symbol."
  ([symbol_id string?, ] (v1-orderbooks-symbol-id-current-get-with-http-info symbol_id nil))
  ([symbol_id string?, {:keys [limit_levels]} (s/map-of keyword? any?)]
   (check-required-params symbol_id)
   (call-api "/v1/orderbooks/{symbol_id}/current" :get
             {:path-params   {"symbol_id" symbol_id }
              :header-params {}
              :query-params  {"limit_levels" limit_levels }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["ApiKey"]})))

(defn-spec v1-orderbooks-symbol-id-current-get v1/order-book-base-spec
  "Get current order book
  Retrieves the current order book for the specified symbol."
  ([symbol_id string?, ] (v1-orderbooks-symbol-id-current-get symbol_id nil))
  ([symbol_id string?, optional-params any?]
   (let [res (:data (v1-orderbooks-symbol-id-current-get-with-http-info symbol_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode v1/order-book-base-spec res st/string-transformer)
        res))))


(defn-spec v1-orderbooks-symbol-id-depth-current-get-with-http-info any?
  "Current depth of the order book
  Retrieves the current depth of the order book for the specified symbol."
  ([symbol_id string?, ] (v1-orderbooks-symbol-id-depth-current-get-with-http-info symbol_id nil))
  ([symbol_id string?, {:keys [limit_levels]} (s/map-of keyword? any?)]
   (check-required-params symbol_id)
   (call-api "/v1/orderbooks/{symbol_id}/depth/current" :get
             {:path-params   {"symbol_id" symbol_id }
              :header-params {}
              :query-params  {"limit_levels" limit_levels }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["ApiKey"]})))

(defn-spec v1-orderbooks-symbol-id-depth-current-get v1/order-book-depth-spec
  "Current depth of the order book
  Retrieves the current depth of the order book for the specified symbol."
  ([symbol_id string?, ] (v1-orderbooks-symbol-id-depth-current-get symbol_id nil))
  ([symbol_id string?, optional-params any?]
   (let [res (:data (v1-orderbooks-symbol-id-depth-current-get-with-http-info symbol_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode v1/order-book-depth-spec res st/string-transformer)
        res))))


(defn-spec v1-orderbooks-symbol-id-history-get-with-http-info any?
  "Historical data
  Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.
            
:::info
The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.
:::

:::warning
The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.
Please use the 'date' parameter instead for querying data for a specific day without filter.
:::"
  ([symbol_id string?, ] (v1-orderbooks-symbol-id-history-get-with-http-info symbol_id nil))
  ([symbol_id string?, {:keys [date time_start time_end limit limit_levels]} (s/map-of keyword? any?)]
   (check-required-params symbol_id)
   (call-api "/v1/orderbooks/{symbol_id}/history" :get
             {:path-params   {"symbol_id" symbol_id }
              :header-params {}
              :query-params  {"date" date "time_start" time_start "time_end" time_end "limit" limit "limit_levels" limit_levels }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["ApiKey"]})))

(defn-spec v1-orderbooks-symbol-id-history-get (s/coll-of v1/order-book-spec)
  "Historical data
  Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.
            
:::info
The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.
:::

:::warning
The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.
Please use the 'date' parameter instead for querying data for a specific day without filter.
:::"
  ([symbol_id string?, ] (v1-orderbooks-symbol-id-history-get symbol_id nil))
  ([symbol_id string?, optional-params any?]
   (let [res (:data (v1-orderbooks-symbol-id-history-get-with-http-info symbol_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/order-book-spec) res st/string-transformer)
        res))))


(defn-spec v1-orderbooks-symbol-id-latest-get-with-http-info any?
  "Latest data
  Get latest order book snapshots for a specific symbol, returned in time descending order.
            
:::info
The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.
:::"
  ([symbol_id string?, ] (v1-orderbooks-symbol-id-latest-get-with-http-info symbol_id nil))
  ([symbol_id string?, {:keys [limit limit_levels]} (s/map-of keyword? any?)]
   (check-required-params symbol_id)
   (call-api "/v1/orderbooks/{symbol_id}/latest" :get
             {:path-params   {"symbol_id" symbol_id }
              :header-params {}
              :query-params  {"limit" limit "limit_levels" limit_levels }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["ApiKey"]})))

(defn-spec v1-orderbooks-symbol-id-latest-get (s/coll-of v1/order-book-spec)
  "Latest data
  Get latest order book snapshots for a specific symbol, returned in time descending order.
            
:::info
The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.
:::"
  ([symbol_id string?, ] (v1-orderbooks-symbol-id-latest-get symbol_id nil))
  ([symbol_id string?, optional-params any?]
   (let [res (:data (v1-orderbooks-symbol-id-latest-get-with-http-info symbol_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/order-book-spec) res st/string-transformer)
        res))))


