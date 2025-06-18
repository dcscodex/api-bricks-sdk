(ns coin-api-market-data-rest-api.api.metrics-v-
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


(defn-spec v1-metrics-asset-current-get-with-http-info any?
  "Current metrics for given asset
  Get current asset metrics."
  ([] (v1-metrics-asset-current-get-with-http-info nil))
  ([{:keys [metric_id asset_id asset_id_external exchange_id]} (s/map-of keyword? any?)]
   (call-api "/v1/metrics/asset/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"metric_id" metric_id "asset_id" asset_id "asset_id_external" asset_id_external "exchange_id" exchange_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-metrics-asset-current-get (s/coll-of v1/general-data-spec)
  "Current metrics for given asset
  Get current asset metrics."
  ([] (v1-metrics-asset-current-get nil))
  ([optional-params any?]
   (let [res (:data (v1-metrics-asset-current-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/general-data-spec) res st/string-transformer)
        res))))


(defn-spec v1-metrics-asset-history-get-with-http-info any?
  "Historical metrics for asset
  Get asset metrics history."
  ([metric_id string?, exchange_id string?, ] (v1-metrics-asset-history-get-with-http-info metric_id exchange_id nil))
  ([metric_id string?, exchange_id string?, {:keys [asset_id asset_id_external time_start time_end time_format period_id limit]} (s/map-of keyword? any?)]
   (check-required-params metric_id exchange_id)
   (call-api "/v1/metrics/asset/history" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"metric_id" metric_id "asset_id" asset_id "asset_id_external" asset_id_external "exchange_id" exchange_id "time_start" time_start "time_end" time_end "time_format" time_format "period_id" period_id "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-metrics-asset-history-get (s/coll-of v1/metric-data-spec)
  "Historical metrics for asset
  Get asset metrics history."
  ([metric_id string?, exchange_id string?, ] (v1-metrics-asset-history-get metric_id exchange_id nil))
  ([metric_id string?, exchange_id string?, optional-params any?]
   (let [res (:data (v1-metrics-asset-history-get-with-http-info metric_id exchange_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/metric-data-spec) res st/string-transformer)
        res))))


(defn-spec v1-metrics-asset-listing-get-with-http-info any?
  "Listing of all supported metrics for asset
  Get data metrics for asset."
  ([] (v1-metrics-asset-listing-get-with-http-info nil))
  ([{:keys [metric_id exchange_id chain_id network_id asset_id asset_id_external]} (s/map-of keyword? any?)]
   (call-api "/v1/metrics/asset/listing" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"metric_id" metric_id "exchange_id" exchange_id "chain_id" chain_id "network_id" network_id "asset_id" asset_id "asset_id_external" asset_id_external }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-metrics-asset-listing-get (s/coll-of v1/listing-item-spec)
  "Listing of all supported metrics for asset
  Get data metrics for asset."
  ([] (v1-metrics-asset-listing-get nil))
  ([optional-params any?]
   (let [res (:data (v1-metrics-asset-listing-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/listing-item-spec) res st/string-transformer)
        res))))


(defn-spec v1-metrics-exchange-current-get-with-http-info any?
  "Current metrics for given exchange
  Get current exchange metrics values."
  ([exchange_id string?, ] (v1-metrics-exchange-current-get-with-http-info exchange_id nil))
  ([exchange_id string?, {:keys [metric_id]} (s/map-of keyword? any?)]
   (check-required-params exchange_id)
   (call-api "/v1/metrics/exchange/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"metric_id" metric_id "exchange_id" exchange_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-metrics-exchange-current-get (s/coll-of v1/general-data-spec)
  "Current metrics for given exchange
  Get current exchange metrics values."
  ([exchange_id string?, ] (v1-metrics-exchange-current-get exchange_id nil))
  ([exchange_id string?, optional-params any?]
   (let [res (:data (v1-metrics-exchange-current-get-with-http-info exchange_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/general-data-spec) res st/string-transformer)
        res))))


(defn-spec v1-metrics-exchange-history-get-with-http-info any?
  "Historical metrics for the exchange
  Get exchange metrics history."
  ([metric_id string?, exchange_id string?, ] (v1-metrics-exchange-history-get-with-http-info metric_id exchange_id nil))
  ([metric_id string?, exchange_id string?, {:keys [time_start time_end time_format period_id limit]} (s/map-of keyword? any?)]
   (check-required-params metric_id exchange_id)
   (call-api "/v1/metrics/exchange/history" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"metric_id" metric_id "exchange_id" exchange_id "time_start" time_start "time_end" time_end "time_format" time_format "period_id" period_id "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-metrics-exchange-history-get (s/coll-of v1/metric-data-spec)
  "Historical metrics for the exchange
  Get exchange metrics history."
  ([metric_id string?, exchange_id string?, ] (v1-metrics-exchange-history-get metric_id exchange_id nil))
  ([metric_id string?, exchange_id string?, optional-params any?]
   (let [res (:data (v1-metrics-exchange-history-get-with-http-info metric_id exchange_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/metric-data-spec) res st/string-transformer)
        res))))


(defn-spec v1-metrics-exchange-listing-get-with-http-info any?
  "Listing of all supported exchange metrics
  Get data metrics for exchange."
  ([exchange_id string?, ] (v1-metrics-exchange-listing-get-with-http-info exchange_id nil))
  ([exchange_id string?, {:keys [metric_id]} (s/map-of keyword? any?)]
   (check-required-params exchange_id)
   (call-api "/v1/metrics/exchange/listing" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"metric_id" metric_id "exchange_id" exchange_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-metrics-exchange-listing-get (s/coll-of v1/listing-item-spec)
  "Listing of all supported exchange metrics
  Get data metrics for exchange."
  ([exchange_id string?, ] (v1-metrics-exchange-listing-get exchange_id nil))
  ([exchange_id string?, optional-params any?]
   (let [res (:data (v1-metrics-exchange-listing-get-with-http-info exchange_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/listing-item-spec) res st/string-transformer)
        res))))


(defn-spec v1-metrics-listing-get-with-http-info any?
  "Listing of all supported metrics by CoinAPI
  Get all data metrics."
  []
  (call-api "/v1/metrics/listing" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["APIKey" "JWT"]}))

(defn-spec v1-metrics-listing-get (s/coll-of v1/metric-spec)
  "Listing of all supported metrics by CoinAPI
  Get all data metrics."
  []
  (let [res (:data (v1-metrics-listing-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of v1/metric-spec) res st/string-transformer)
       res)))


(defn-spec v1-metrics-symbol-current-get-with-http-info any?
  "Current metrics for given symbol
  Get current symbol metrics."
  ([] (v1-metrics-symbol-current-get-with-http-info nil))
  ([{:keys [metric_id symbol_id exchange_id]} (s/map-of keyword? any?)]
   (call-api "/v1/metrics/symbol/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"metric_id" metric_id "symbol_id" symbol_id "exchange_id" exchange_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-metrics-symbol-current-get (s/coll-of v1/general-data-spec)
  "Current metrics for given symbol
  Get current symbol metrics."
  ([] (v1-metrics-symbol-current-get nil))
  ([optional-params any?]
   (let [res (:data (v1-metrics-symbol-current-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/general-data-spec) res st/string-transformer)
        res))))


(defn-spec v1-metrics-symbol-history-get-with-http-info any?
  "Historical metrics for symbol
  Get symbol metrics history."
  ([metric_id string?, symbol_id string?, ] (v1-metrics-symbol-history-get-with-http-info metric_id symbol_id nil))
  ([metric_id string?, symbol_id string?, {:keys [time_start time_end time_format period_id limit]} (s/map-of keyword? any?)]
   (check-required-params metric_id symbol_id)
   (call-api "/v1/metrics/symbol/history" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"metric_id" metric_id "symbol_id" symbol_id "time_start" time_start "time_end" time_end "time_format" time_format "period_id" period_id "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-metrics-symbol-history-get (s/coll-of v1/metric-data-spec)
  "Historical metrics for symbol
  Get symbol metrics history."
  ([metric_id string?, symbol_id string?, ] (v1-metrics-symbol-history-get metric_id symbol_id nil))
  ([metric_id string?, symbol_id string?, optional-params any?]
   (let [res (:data (v1-metrics-symbol-history-get-with-http-info metric_id symbol_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/metric-data-spec) res st/string-transformer)
        res))))


(defn-spec v1-metrics-symbol-listing-get-with-http-info any?
  "Listing of all supported metrics for symbol
  Get data metrics for symbol."
  ([] (v1-metrics-symbol-listing-get-with-http-info nil))
  ([{:keys [metric_id exchange_id symbol_id]} (s/map-of keyword? any?)]
   (call-api "/v1/metrics/symbol/listing" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"metric_id" metric_id "exchange_id" exchange_id "symbol_id" symbol_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-metrics-symbol-listing-get (s/coll-of v1/listing-item-spec)
  "Listing of all supported metrics for symbol
  Get data metrics for symbol."
  ([] (v1-metrics-symbol-listing-get nil))
  ([optional-params any?]
   (let [res (:data (v1-metrics-symbol-listing-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/listing-item-spec) res st/string-transformer)
        res))))


(defn-spec v2-metrics-asset-history-get-with-http-info any?
  "Historical metrics for the asset
  Get asset metrics history."
  ([metric_id string?, asset_id string?, ] (v2-metrics-asset-history-get-with-http-info metric_id asset_id nil))
  ([metric_id string?, asset_id string?, {:keys [time_start time_end time_format period_id limit]} (s/map-of keyword? any?)]
   (check-required-params metric_id asset_id)
   (call-api "/v2/metrics/asset/history" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"metric_id" metric_id "asset_id" asset_id "time_start" time_start "time_end" time_end "time_format" time_format "period_id" period_id "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v2-metrics-asset-history-get (s/coll-of any?)
  "Historical metrics for the asset
  Get asset metrics history."
  ([metric_id string?, asset_id string?, ] (v2-metrics-asset-history-get metric_id asset_id nil))
  ([metric_id string?, asset_id string?, optional-params any?]
   (let [res (:data (v2-metrics-asset-history-get-with-http-info metric_id asset_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of any?) res st/string-transformer)
        res))))


(defn-spec v2-metrics-asset-listing-get-with-http-info any?
  "Listing of metrics available for specific asset
  Get all metrics that are actually available for the specified asset."
  [asset_id string?]
  (check-required-params asset_id)
  (call-api "/v2/metrics/asset/listing" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"asset_id" asset_id }
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["APIKey" "JWT"]}))

(defn-spec v2-metrics-asset-listing-get (s/coll-of v1/metric-info-spec)
  "Listing of metrics available for specific asset
  Get all metrics that are actually available for the specified asset."
  [asset_id string?]
  (let [res (:data (v2-metrics-asset-listing-get-with-http-info asset_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of v1/metric-info-spec) res st/string-transformer)
       res)))


(defn-spec v2-metrics-chain-history-get-with-http-info any?
  "Historical metrics for the chain
  Get chain metrics history."
  ([metric_id string?, chain_id string?, ] (v2-metrics-chain-history-get-with-http-info metric_id chain_id nil))
  ([metric_id string?, chain_id string?, {:keys [time_start time_end time_format period_id limit]} (s/map-of keyword? any?)]
   (check-required-params metric_id chain_id)
   (call-api "/v2/metrics/chain/history" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"metric_id" metric_id "chain_id" chain_id "time_start" time_start "time_end" time_end "time_format" time_format "period_id" period_id "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v2-metrics-chain-history-get (s/coll-of any?)
  "Historical metrics for the chain
  Get chain metrics history."
  ([metric_id string?, chain_id string?, ] (v2-metrics-chain-history-get metric_id chain_id nil))
  ([metric_id string?, chain_id string?, optional-params any?]
   (let [res (:data (v2-metrics-chain-history-get-with-http-info metric_id chain_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of any?) res st/string-transformer)
        res))))


(defn-spec v2-metrics-chain-listing-get-with-http-info any?
  "Listing of metrics available for specific chain
  Get all metrics that are actually available for the specified blockchain chain."
  [chain_id string?]
  (check-required-params chain_id)
  (call-api "/v2/metrics/chain/listing" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"chain_id" chain_id }
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["APIKey" "JWT"]}))

(defn-spec v2-metrics-chain-listing-get (s/coll-of v1/metric-info-spec)
  "Listing of metrics available for specific chain
  Get all metrics that are actually available for the specified blockchain chain."
  [chain_id string?]
  (let [res (:data (v2-metrics-chain-listing-get-with-http-info chain_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of v1/metric-info-spec) res st/string-transformer)
       res)))


(defn-spec v2-metrics-exchange-history-get-with-http-info any?
  "Historical metrics for the exchange
  Get exchange metrics history."
  ([metric_id string?, exchange_id string?, ] (v2-metrics-exchange-history-get-with-http-info metric_id exchange_id nil))
  ([metric_id string?, exchange_id string?, {:keys [time_start time_end time_format period_id limit]} (s/map-of keyword? any?)]
   (check-required-params metric_id exchange_id)
   (call-api "/v2/metrics/exchange/history" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"metric_id" metric_id "exchange_id" exchange_id "time_start" time_start "time_end" time_end "time_format" time_format "period_id" period_id "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v2-metrics-exchange-history-get (s/coll-of any?)
  "Historical metrics for the exchange
  Get exchange metrics history."
  ([metric_id string?, exchange_id string?, ] (v2-metrics-exchange-history-get metric_id exchange_id nil))
  ([metric_id string?, exchange_id string?, optional-params any?]
   (let [res (:data (v2-metrics-exchange-history-get-with-http-info metric_id exchange_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of any?) res st/string-transformer)
        res))))


(defn-spec v2-metrics-exchange-listing-get-with-http-info any?
  "Listing of metrics available for specific exchange
  Get all metrics that are actually available for the specified exchange."
  [exchange_id string?]
  (check-required-params exchange_id)
  (call-api "/v2/metrics/exchange/listing" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"exchange_id" exchange_id }
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["APIKey" "JWT"]}))

(defn-spec v2-metrics-exchange-listing-get (s/coll-of v1/metric-info-spec)
  "Listing of metrics available for specific exchange
  Get all metrics that are actually available for the specified exchange."
  [exchange_id string?]
  (let [res (:data (v2-metrics-exchange-listing-get-with-http-info exchange_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of v1/metric-info-spec) res st/string-transformer)
       res)))


(defn-spec v2-metrics-listing-get-with-http-info any?
  "Listing of all supported metrics
  Get all metrics available in the system."
  []
  (call-api "/v2/metrics/listing" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["APIKey" "JWT"]}))

(defn-spec v2-metrics-listing-get (s/coll-of v1/metric-info-spec)
  "Listing of all supported metrics
  Get all metrics available in the system."
  []
  (let [res (:data (v2-metrics-listing-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of v1/metric-info-spec) res st/string-transformer)
       res)))


