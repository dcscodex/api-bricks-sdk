(ns coin-api-market-data-rest-api.api.order-book-l-
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


(defn-spec v1-orderbooks3-current-get-with-http-info any?
  "Current order books"
  ([] (v1-orderbooks3-current-get-with-http-info nil))
  ([{:keys [filter_symbol_id limit_levels]} (s/map-of keyword? any?)]
   (call-api "/v1/orderbooks3/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_symbol_id" filter_symbol_id "limit_levels" limit_levels }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-orderbooks3-current-get (s/coll-of v1/order-book-base-spec)
  "Current order books"
  ([] (v1-orderbooks3-current-get nil))
  ([optional-params any?]
   (let [res (:data (v1-orderbooks3-current-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/order-book-base-spec) res st/string-transformer)
        res))))


(defn-spec v1-orderbooks3-symbol-id-current-get-with-http-info any?
  "Current order book by symbol_id
  Retrieves the current order book for the specified symbol."
  ([symbol_id string?, ] (v1-orderbooks3-symbol-id-current-get-with-http-info symbol_id nil))
  ([symbol_id string?, {:keys [limit_levels]} (s/map-of keyword? any?)]
   (check-required-params symbol_id)
   (call-api "/v1/orderbooks3/{symbol_id}/current" :get
             {:path-params   {"symbol_id" symbol_id }
              :header-params {}
              :query-params  {"limit_levels" limit_levels }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-orderbooks3-symbol-id-current-get v1/order-book-base-spec
  "Current order book by symbol_id
  Retrieves the current order book for the specified symbol."
  ([symbol_id string?, ] (v1-orderbooks3-symbol-id-current-get symbol_id nil))
  ([symbol_id string?, optional-params any?]
   (let [res (:data (v1-orderbooks3-symbol-id-current-get-with-http-info symbol_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode v1/order-book-base-spec res st/string-transformer)
        res))))


