(ns rest-api.api.external-metrics
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


(defn-spec v1-externalmetrics-asset-history-get-with-http-info any?
  "Historical metrics for the asset from external sources
  Get asset metrics history from external data providers. Data is typically aggregated daily."
  ([metric_id string?, asset_id string?, ] (v1-externalmetrics-asset-history-get-with-http-info metric_id asset_id nil))
  ([metric_id string?, asset_id string?, {:keys [time_start time_end time_format period_id limit]} (s/map-of keyword? any?)]
   (check-required-params metric_id asset_id)
   (call-api "/v1/externalmetrics/asset/history" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"metric_id" metric_id "asset_id" asset_id "time_start" time_start "time_end" time_end "time_format" time_format "period_id" period_id "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["ApiKey"]})))

(defn-spec v1-externalmetrics-asset-history-get (s/coll-of any?)
  "Historical metrics for the asset from external sources
  Get asset metrics history from external data providers. Data is typically aggregated daily."
  ([metric_id string?, asset_id string?, ] (v1-externalmetrics-asset-history-get metric_id asset_id nil))
  ([metric_id string?, asset_id string?, optional-params any?]
   (let [res (:data (v1-externalmetrics-asset-history-get-with-http-info metric_id asset_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of any?) res st/string-transformer)
        res))))


(defn-spec v1-externalmetrics-asset-listing-get-with-http-info any?
  "Listing of metrics available for specific asset
  Get all metrics that are actually available for the specified asset from external providers."
  [asset_id string?]
  (check-required-params asset_id)
  (call-api "/v1/externalmetrics/asset/listing" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"asset_id" asset_id }
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["ApiKey"]}))

(defn-spec v1-externalmetrics-asset-listing-get (s/coll-of v1/metric-info-spec)
  "Listing of metrics available for specific asset
  Get all metrics that are actually available for the specified asset from external providers."
  [asset_id string?]
  (let [res (:data (v1-externalmetrics-asset-listing-get-with-http-info asset_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of v1/metric-info-spec) res st/string-transformer)
       res)))


(defn-spec v1-externalmetrics-assets-get-with-http-info any?
  "Listing of all supported external assets
  Get all assets (primarily stablecoins) supported by external data providers."
  []
  (call-api "/v1/externalmetrics/assets" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["ApiKey"]}))

(defn-spec v1-externalmetrics-assets-get (s/coll-of v1/external-asset-spec)
  "Listing of all supported external assets
  Get all assets (primarily stablecoins) supported by external data providers."
  []
  (let [res (:data (v1-externalmetrics-assets-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of v1/external-asset-spec) res st/string-transformer)
       res)))


(defn-spec v1-externalmetrics-chain-history-get-with-http-info any?
  "Historical metrics for the chain from external sources
  Get chain metrics history from external data providers. Data is typically aggregated daily."
  ([metric_id string?, chain_id string?, ] (v1-externalmetrics-chain-history-get-with-http-info metric_id chain_id nil))
  ([metric_id string?, chain_id string?, {:keys [time_start time_end time_format period_id limit]} (s/map-of keyword? any?)]
   (check-required-params metric_id chain_id)
   (call-api "/v1/externalmetrics/chain/history" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"metric_id" metric_id "chain_id" chain_id "time_start" time_start "time_end" time_end "time_format" time_format "period_id" period_id "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["ApiKey"]})))

(defn-spec v1-externalmetrics-chain-history-get (s/coll-of any?)
  "Historical metrics for the chain from external sources
  Get chain metrics history from external data providers. Data is typically aggregated daily."
  ([metric_id string?, chain_id string?, ] (v1-externalmetrics-chain-history-get metric_id chain_id nil))
  ([metric_id string?, chain_id string?, optional-params any?]
   (let [res (:data (v1-externalmetrics-chain-history-get-with-http-info metric_id chain_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of any?) res st/string-transformer)
        res))))


(defn-spec v1-externalmetrics-chain-listing-get-with-http-info any?
  "Listing of metrics available for specific chain
  Get all metrics that are actually available for the specified blockchain chain from external providers."
  [chain_id string?]
  (check-required-params chain_id)
  (call-api "/v1/externalmetrics/chain/listing" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"chain_id" chain_id }
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["ApiKey"]}))

(defn-spec v1-externalmetrics-chain-listing-get (s/coll-of v1/metric-info-spec)
  "Listing of metrics available for specific chain
  Get all metrics that are actually available for the specified blockchain chain from external providers."
  [chain_id string?]
  (let [res (:data (v1-externalmetrics-chain-listing-get-with-http-info chain_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of v1/metric-info-spec) res st/string-transformer)
       res)))


(defn-spec v1-externalmetrics-chains-get-with-http-info any?
  "Listing of all supported external chains
  Get all blockchain chains supported by external data providers."
  []
  (call-api "/v1/externalmetrics/chains" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["ApiKey"]}))

(defn-spec v1-externalmetrics-chains-get (s/coll-of v1/chain-spec)
  "Listing of all supported external chains
  Get all blockchain chains supported by external data providers."
  []
  (let [res (:data (v1-externalmetrics-chains-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of v1/chain-spec) res st/string-transformer)
       res)))


(defn-spec v1-externalmetrics-exchange-history-get-with-http-info any?
  "Historical metrics for the exchange from both external and internal sources
  Get exchange metrics history from external data providers or internal sources based on metric type."
  ([metric_id string?, exchange_id string?, ] (v1-externalmetrics-exchange-history-get-with-http-info metric_id exchange_id nil))
  ([metric_id string?, exchange_id string?, {:keys [time_start time_end time_format period_id limit]} (s/map-of keyword? any?)]
   (check-required-params metric_id exchange_id)
   (call-api "/v1/externalmetrics/exchange/history" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"metric_id" metric_id "exchange_id" exchange_id "time_start" time_start "time_end" time_end "time_format" time_format "period_id" period_id "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["ApiKey"]})))

(defn-spec v1-externalmetrics-exchange-history-get (s/coll-of any?)
  "Historical metrics for the exchange from both external and internal sources
  Get exchange metrics history from external data providers or internal sources based on metric type."
  ([metric_id string?, exchange_id string?, ] (v1-externalmetrics-exchange-history-get metric_id exchange_id nil))
  ([metric_id string?, exchange_id string?, optional-params any?]
   (let [res (:data (v1-externalmetrics-exchange-history-get-with-http-info metric_id exchange_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of any?) res st/string-transformer)
        res))))


(defn-spec v1-externalmetrics-exchange-listing-get-with-http-info any?
  "Listing of metrics available for specific exchange (both external and generic)
  Get all metrics that are actually available for the specified exchange from both external providers and internal sources."
  [exchange_id string?]
  (check-required-params exchange_id)
  (call-api "/v1/externalmetrics/exchange/listing" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"exchange_id" exchange_id }
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["ApiKey"]}))

(defn-spec v1-externalmetrics-exchange-listing-get (s/coll-of v1/metric-info-spec)
  "Listing of metrics available for specific exchange (both external and generic)
  Get all metrics that are actually available for the specified exchange from both external providers and internal sources."
  [exchange_id string?]
  (let [res (:data (v1-externalmetrics-exchange-listing-get-with-http-info exchange_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of v1/metric-info-spec) res st/string-transformer)
       res)))


(defn-spec v1-externalmetrics-exchanges-get-with-http-info any?
  "Listing of all supported external exchanges
  Get all exchanges that have mapping to external data providers for metrics that actually have sources.
Only returns exchanges that are properly mapped to external protocols for metrics with defined sources."
  []
  (call-api "/v1/externalmetrics/exchanges" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["ApiKey"]}))

(defn-spec v1-externalmetrics-exchanges-get (s/coll-of v1/external-exchange-spec)
  "Listing of all supported external exchanges
  Get all exchanges that have mapping to external data providers for metrics that actually have sources.
Only returns exchanges that are properly mapped to external protocols for metrics with defined sources."
  []
  (let [res (:data (v1-externalmetrics-exchanges-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of v1/external-exchange-spec) res st/string-transformer)
       res)))


(defn-spec v1-externalmetrics-listing-get-with-http-info any?
  "Listing of all supported metrics (both external and generic)
  Get all metrics available from external data providers and internal generic metrics.
External metrics have detailed descriptions, while generic metrics are marked as such."
  []
  (call-api "/v1/externalmetrics/listing" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["ApiKey"]}))

(defn-spec v1-externalmetrics-listing-get (s/coll-of v1/metric-info-spec)
  "Listing of all supported metrics (both external and generic)
  Get all metrics available from external data providers and internal generic metrics.
External metrics have detailed descriptions, while generic metrics are marked as such."
  []
  (let [res (:data (v1-externalmetrics-listing-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of v1/metric-info-spec) res st/string-transformer)
       res)))


