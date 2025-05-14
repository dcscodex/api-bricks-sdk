(ns indexes-rest-api.api.metadata
  (:require [indexes-rest-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [indexes-rest-api.specs.metadata/timeseries-period :refer :all]
            [indexes-rest-api.specs.metadata/exchange :refer :all]
            [indexes-rest-api.specs.indexes/index-multi-asset-weight :refer :all]
            [indexes-rest-api.specs.indexes/index-value-component :refer :all]
            [indexes-rest-api.specs.indexes/index-definition-input-data :refer :all]
            [indexes-rest-api.specs.indexes/index-timeseries-item :refer :all]
            [indexes-rest-api.specs.indexes/index-identifier :refer :all]
            [indexes-rest-api.specs.indexes/index-value :refer :all]
            [indexes-rest-api.specs.indexes/index-definition-snapshot-entry :refer :all]
            )
  (:import (java.io File)))


(defn-spec api-metadata-exchanges-exchange-id-get-with-http-info any?
  "List all exchanges by exchange_id"
  [exchange_id string?]
  (check-required-params exchange_id)
  (call-api "/api/metadata/exchanges/{exchange_id}" :get
            {:path-params   {"exchange_id" exchange_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["ApiKey"]}))

(defn-spec api-metadata-exchanges-exchange-id-get (s/coll-of metadata/exchange-spec)
  "List all exchanges by exchange_id"
  [exchange_id string?]
  (let [res (:data (api-metadata-exchanges-exchange-id-get-with-http-info exchange_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of metadata/exchange-spec) res st/string-transformer)
       res)))


(defn-spec api-metadata-exchanges-get-with-http-info any?
  "List all exchanges
  Get a detailed list of exchanges provided by the system.
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::"
  ([] (api-metadata-exchanges-get-with-http-info nil))
  ([{:keys [filter_exchange_id]} (s/map-of keyword? any?)]
   (call-api "/api/metadata/exchanges" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_exchange_id" filter_exchange_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["ApiKey"]})))

(defn-spec api-metadata-exchanges-get (s/coll-of metadata/exchange-spec)
  "List all exchanges
  Get a detailed list of exchanges provided by the system.
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::"
  ([] (api-metadata-exchanges-get nil))
  ([optional-params any?]
   (let [res (:data (api-metadata-exchanges-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of metadata/exchange-spec) res st/string-transformer)
        res))))


