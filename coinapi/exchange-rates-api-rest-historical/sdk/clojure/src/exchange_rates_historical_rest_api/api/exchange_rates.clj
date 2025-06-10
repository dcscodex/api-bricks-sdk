(ns exchange-rates-historical-rest-api.api.exchange-rates
  (:require [exchange-rates-historical-rest-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [exchange-rates-historical-rest-api.specs.v1/asset :refer :all]
            [exchange-rates-historical-rest-api.specs.v1/exchange-rates :refer :all]
            [exchange-rates-historical-rest-api.specs.v1/timeseries-period :refer :all]
            [exchange-rates-historical-rest-api.specs.v1/icon :refer :all]
            [exchange-rates-historical-rest-api.specs.v1/chain-network-address :refer :all]
            [exchange-rates-historical-rest-api.specs.v1/exchange-rates-rate :refer :all]
            [exchange-rates-historical-rest-api.specs.v1/exchange-rates-timeseries-item :refer :all]
            [exchange-rates-historical-rest-api.specs.v1/exchange-rate :refer :all]
            )
  (:import (java.io File)))


(defn-spec get-specific-rate-with-http-info any?
  "Get specific rate
  Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.
            
:::info
If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.
:::"
  ([asset_id_base string?, asset_id_quote string?, ] (get-specific-rate-with-http-info asset_id_base asset_id_quote nil))
  ([asset_id_base string?, asset_id_quote string?, {:keys [time]} (s/map-of keyword? any?)]
   (check-required-params asset_id_base asset_id_quote)
   (call-api "/v1/exchangerate/{asset_id_base}/{asset_id_quote}" :get
             {:path-params   {"asset_id_base" asset_id_base "asset_id_quote" asset_id_quote }
              :header-params {}
              :query-params  {"time" time }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    ["APIKey"]})))

(defn-spec get-specific-rate v1/exchange-rate-spec
  "Get specific rate
  Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.
            
:::info
If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.
:::"
  ([asset_id_base string?, asset_id_quote string?, ] (get-specific-rate asset_id_base asset_id_quote nil))
  ([asset_id_base string?, asset_id_quote string?, optional-params any?]
   (let [res (:data (get-specific-rate-with-http-info asset_id_base asset_id_quote optional-params))]
     (if (:decode-models *api-context*)
        (st/decode v1/exchange-rate-spec res st/string-transformer)
        res))))


(defn-spec v1-exchangerate-asset-id-base-asset-id-quote-history-get-with-http-info any?
  "Timeseries data
  Get the historical exchange rates between two assets in the form of the timeseries."
  ([asset_id_base string?, asset_id_quote string?, ] (v1-exchangerate-asset-id-base-asset-id-quote-history-get-with-http-info asset_id_base asset_id_quote nil))
  ([asset_id_base string?, asset_id_quote string?, {:keys [period_id time_start time_end limit]} (s/map-of keyword? any?)]
   (check-required-params asset_id_base asset_id_quote)
   (call-api "/v1/exchangerate/{asset_id_base}/{asset_id_quote}/history" :get
             {:path-params   {"asset_id_base" asset_id_base "asset_id_quote" asset_id_quote }
              :header-params {}
              :query-params  {"period_id" period_id "time_start" time_start "time_end" time_end "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    ["APIKey"]})))

(defn-spec v1-exchangerate-asset-id-base-asset-id-quote-history-get (s/coll-of v1/exchange-rates-timeseries-item-spec)
  "Timeseries data
  Get the historical exchange rates between two assets in the form of the timeseries."
  ([asset_id_base string?, asset_id_quote string?, ] (v1-exchangerate-asset-id-base-asset-id-quote-history-get asset_id_base asset_id_quote nil))
  ([asset_id_base string?, asset_id_quote string?, optional-params any?]
   (let [res (:data (v1-exchangerate-asset-id-base-asset-id-quote-history-get-with-http-info asset_id_base asset_id_quote optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/exchange-rates-timeseries-item-spec) res st/string-transformer)
        res))))


(defn-spec v1-exchangerate-asset-id-base-get-with-http-info any?
  "Get all current rates
  Get the current exchange rate between requested asset and all other assets.
            
:::info
If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.
:::
            
:::info
You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC);
:::"
  ([asset_id_base string?, ] (v1-exchangerate-asset-id-base-get-with-http-info asset_id_base nil))
  ([asset_id_base string?, {:keys [filter_asset_id invert time]} (s/map-of keyword? any?)]
   (check-required-params asset_id_base)
   (call-api "/v1/exchangerate/{asset_id_base}" :get
             {:path-params   {"asset_id_base" asset_id_base }
              :header-params {}
              :query-params  {"filter_asset_id" filter_asset_id "invert" invert "time" time }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    ["APIKey"]})))

(defn-spec v1-exchangerate-asset-id-base-get v1/exchange-rates-spec
  "Get all current rates
  Get the current exchange rate between requested asset and all other assets.
            
:::info
If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.
:::
            
:::info
You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC);
:::"
  ([asset_id_base string?, ] (v1-exchangerate-asset-id-base-get asset_id_base nil))
  ([asset_id_base string?, optional-params any?]
   (let [res (:data (v1-exchangerate-asset-id-base-get-with-http-info asset_id_base optional-params))]
     (if (:decode-models *api-context*)
        (st/decode v1/exchange-rates-spec res st/string-transformer)
        res))))


(defn-spec v1-exchangerate-history-periods-get-with-http-info any?
  "Timeseries periods
  You can also obtain historical exchange rates of any asset pair, grouped into time periods.
Get full list of supported time periods available for requesting exchange rates historical timeseries data.
            
## Timeseries periods
Time unit |	Period identifiers
--- | ---
Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC
Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN
Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS
Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY"
  []
  (call-api "/v1/exchangerate/history/periods" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    ["APIKey"]}))

(defn-spec v1-exchangerate-history-periods-get (s/coll-of v1/timeseries-period-spec)
  "Timeseries periods
  You can also obtain historical exchange rates of any asset pair, grouped into time periods.
Get full list of supported time periods available for requesting exchange rates historical timeseries data.
            
## Timeseries periods
Time unit |	Period identifiers
--- | ---
Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC
Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN
Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS
Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY"
  []
  (let [res (:data (v1-exchangerate-history-periods-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of v1/timeseries-period-spec) res st/string-transformer)
       res)))


