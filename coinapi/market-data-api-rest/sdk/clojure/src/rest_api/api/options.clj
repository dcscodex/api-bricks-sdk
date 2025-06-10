(ns rest-api.api.options
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


(defn-spec v1-options-exchange-id-current-get-with-http-info any?
  "Current data by Exchange
  Get current options data for a specific exchange.

Returns option data grouped by underlying asset, quote currency, and expiration time,
with quotes for both calls and puts at each strike price."
  [exchange_id string?]
  (check-required-params exchange_id)
  (call-api "/v1/options/{exchange_id}/current" :get
            {:path-params   {"exchange_id" exchange_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["ApiKey"]}))

(defn-spec v1-options-exchange-id-current-get (s/coll-of options/option-exchange-group-spec)
  "Current data by Exchange
  Get current options data for a specific exchange.

Returns option data grouped by underlying asset, quote currency, and expiration time,
with quotes for both calls and puts at each strike price."
  [exchange_id string?]
  (let [res (:data (v1-options-exchange-id-current-get-with-http-info exchange_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of options/option-exchange-group-spec) res st/string-transformer)
       res)))


