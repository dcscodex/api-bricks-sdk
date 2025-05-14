(ns exchange-rates-realtime-rest-api.api.exchange-rates
  (:require [exchange-rates-realtime-rest-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [exchange-rates-realtime-rest-api.specs.v1/asset :refer :all]
            [exchange-rates-realtime-rest-api.specs.v1/exchange-rates :refer :all]
            [exchange-rates-realtime-rest-api.specs.v1/icon :refer :all]
            [exchange-rates-realtime-rest-api.specs.v1/chain-network-address :refer :all]
            [exchange-rates-realtime-rest-api.specs.v1/exchange-rates-rate :refer :all]
            [exchange-rates-realtime-rest-api.specs.v1/exchange-rate :refer :all]
            )
  (:import (java.io File)))


(defn-spec get-specific-rate-with-http-info any?
  "Get specific rate
  Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.
            
:::info
If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.
:::"
  [asset_id_base string?, asset_id_quote string?]
  (check-required-params asset_id_base asset_id_quote)
  (call-api "/v1/exchangerate/{asset_id_base}/{asset_id_quote}" :get
            {:path-params   {"asset_id_base" asset_id_base "asset_id_quote" asset_id_quote }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["APIKey"]}))

(defn-spec get-specific-rate v1/exchange-rate-spec
  "Get specific rate
  Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.
            
:::info
If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.
:::"
  [asset_id_base string?, asset_id_quote string?]
  (let [res (:data (get-specific-rate-with-http-info asset_id_base asset_id_quote))]
    (if (:decode-models *api-context*)
       (st/decode v1/exchange-rate-spec res st/string-transformer)
       res)))


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
  ([asset_id_base string?, {:keys [filter_asset_id invert]} (s/map-of keyword? any?)]
   (check-required-params asset_id_base)
   (call-api "/v1/exchangerate/{asset_id_base}" :get
             {:path-params   {"asset_id_base" asset_id_base }
              :header-params {}
              :query-params  {"filter_asset_id" filter_asset_id "invert" invert }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
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


