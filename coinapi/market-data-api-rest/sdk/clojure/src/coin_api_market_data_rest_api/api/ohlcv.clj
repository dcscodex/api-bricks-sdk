(ns coin-api-market-data-rest-api.api.ohlcv
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


(defn-spec v1-ohlcv-exchanges-exchange-id-history-get-with-http-info any?
  "Historical data by exchange
  Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange eg `BITSTAMP`
            
:::info
The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay.
The difference between `time_end` and `time_start` cannot be higher than 1 day.
The `period_id` cannot be higher than `1DAY`.
:::"
  [exchange_id string?, period_id string?, time_start string?, time_end string?]
  (check-required-params exchange_id period_id time_start time_end)
  (call-api "/v1/ohlcv/exchanges/{exchange_id}/history" :get
            {:path-params   {"exchange_id" exchange_id }
             :header-params {}
             :query-params  {"period_id" period_id "time_start" time_start "time_end" time_end }
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["APIKey" "JWT"]}))

(defn-spec v1-ohlcv-exchanges-exchange-id-history-get (s/coll-of models/exchange-timeseries-item-spec)
  "Historical data by exchange
  Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange eg `BITSTAMP`
            
:::info
The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay.
The difference between `time_end` and `time_start` cannot be higher than 1 day.
The `period_id` cannot be higher than `1DAY`.
:::"
  [exchange_id string?, period_id string?, time_start string?, time_end string?]
  (let [res (:data (v1-ohlcv-exchanges-exchange-id-history-get-with-http-info exchange_id period_id time_start time_end))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of models/exchange-timeseries-item-spec) res st/string-transformer)
       res)))


(defn-spec v1-ohlcv-periods-get-with-http-info any?
  "List all periods
  Get full list of supported time periods available for requesting OHLCV timeseries data.
            
### Available periods
            
Time unit | Period identifiers
--------- | -----------
Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC
Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN
Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS
Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY
Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH
Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS
            
:::tip
You can assume that we will not remove any periods from this response, however, we may add new ones.
:::"
  []
  (call-api "/v1/ohlcv/periods" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["APIKey" "JWT"]}))

(defn-spec v1-ohlcv-periods-get (s/coll-of v1/timeseries-period-spec)
  "List all periods
  Get full list of supported time periods available for requesting OHLCV timeseries data.
            
### Available periods
            
Time unit | Period identifiers
--------- | -----------
Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC
Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN
Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS
Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY
Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH
Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS
            
:::tip
You can assume that we will not remove any periods from this response, however, we may add new ones.
:::"
  []
  (let [res (:data (v1-ohlcv-periods-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of v1/timeseries-period-spec) res st/string-transformer)
       res)))


(defn-spec v1-ohlcv-symbol-id-history-get-with-http-info any?
  "Historical data
  Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data
            
:::info
The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay.
:::"
  ([symbol_id string?, period_id string?, ] (v1-ohlcv-symbol-id-history-get-with-http-info symbol_id period_id nil))
  ([symbol_id string?, period_id string?, {:keys [time_start time_end limit include_empty_items]} (s/map-of keyword? any?)]
   (check-required-params symbol_id period_id)
   (call-api "/v1/ohlcv/{symbol_id}/history" :get
             {:path-params   {"symbol_id" symbol_id }
              :header-params {}
              :query-params  {"period_id" period_id "time_start" time_start "time_end" time_end "limit" limit "include_empty_items" include_empty_items }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-ohlcv-symbol-id-history-get (s/coll-of v1/timeseries-item-spec)
  "Historical data
  Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data
            
:::info
The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay.
:::"
  ([symbol_id string?, period_id string?, ] (v1-ohlcv-symbol-id-history-get symbol_id period_id nil))
  ([symbol_id string?, period_id string?, optional-params any?]
   (let [res (:data (v1-ohlcv-symbol-id-history-get-with-http-info symbol_id period_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/timeseries-item-spec) res st/string-transformer)
        res))))


(defn-spec v1-ohlcv-symbol-id-latest-get-with-http-info any?
  "Latest data
  Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data
            
:::info
OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters. 
The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay.
:::"
  ([symbol_id string?, period_id string?, ] (v1-ohlcv-symbol-id-latest-get-with-http-info symbol_id period_id nil))
  ([symbol_id string?, period_id string?, {:keys [limit include_empty_items]} (s/map-of keyword? any?)]
   (check-required-params symbol_id period_id)
   (call-api "/v1/ohlcv/{symbol_id}/latest" :get
             {:path-params   {"symbol_id" symbol_id }
              :header-params {}
              :query-params  {"period_id" period_id "limit" limit "include_empty_items" include_empty_items }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-ohlcv-symbol-id-latest-get (s/coll-of v1/timeseries-item-spec)
  "Latest data
  Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data
            
:::info
OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters. 
The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay.
:::"
  ([symbol_id string?, period_id string?, ] (v1-ohlcv-symbol-id-latest-get symbol_id period_id nil))
  ([symbol_id string?, period_id string?, optional-params any?]
   (let [res (:data (v1-ohlcv-symbol-id-latest-get-with-http-info symbol_id period_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/timeseries-item-spec) res st/string-transformer)
        res))))


