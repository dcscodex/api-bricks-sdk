(ns indexes-rest-api.api.indexes
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


(defn-spec v1-indexdef-input-data-index-definition-id-all-get-with-http-info any?
  "Returns all data inputs for a specific index definition"
  [index_definition_id string?]
  (check-required-params index_definition_id)
  (call-api "/v1/indexdef/input-data/{index_definition_id}/all" :get
            {:path-params   {"index_definition_id" index_definition_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["ApiKey"]}))

(defn-spec v1-indexdef-input-data-index-definition-id-all-get (s/coll-of indexes/index-definition-input-data-spec)
  "Returns all data inputs for a specific index definition"
  [index_definition_id string?]
  (let [res (:data (v1-indexdef-input-data-index-definition-id-all-get-with-http-info index_definition_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of indexes/index-definition-input-data-spec) res st/string-transformer)
       res)))


(defn-spec v1-indexdef-input-data-index-definition-id-get-with-http-info any?
  "Returns data inputs for certain index definition and time"
  ([index_definition_id string?, ] (v1-indexdef-input-data-index-definition-id-get-with-http-info index_definition_id nil))
  ([index_definition_id string?, {:keys [time enabled_only pending_only filter_asset_id with_status_info]} (s/map-of keyword? any?)]
   (check-required-params index_definition_id)
   (call-api "/v1/indexdef/input-data/{index_definition_id}" :get
             {:path-params   {"index_definition_id" index_definition_id }
              :header-params {}
              :query-params  {"time" time "enabled_only" enabled_only "pending_only" pending_only "filter_asset_id" filter_asset_id "with_status_info" with_status_info }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["ApiKey"]})))

(defn-spec v1-indexdef-input-data-index-definition-id-get (s/coll-of indexes/index-definition-snapshot-entry-spec)
  "Returns data inputs for certain index definition and time"
  ([index_definition_id string?, ] (v1-indexdef-input-data-index-definition-id-get index_definition_id nil))
  ([index_definition_id string?, optional-params any?]
   (let [res (:data (v1-indexdef-input-data-index-definition-id-get-with-http-info index_definition_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of indexes/index-definition-snapshot-entry-spec) res st/string-transformer)
        res))))


(defn-spec v1-indexdef-multiasset-get-with-http-info any?
  "Get all multi-asset weights"
  []
  (call-api "/v1/indexdef/multiasset" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["ApiKey"]}))

(defn-spec v1-indexdef-multiasset-get (s/coll-of indexes/index-multi-asset-weight-spec)
  "Get all multi-asset weights"
  []
  (let [res (:data (v1-indexdef-multiasset-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of indexes/index-multi-asset-weight-spec) res st/string-transformer)
       res)))


(defn-spec v1-indexdef-multiasset-index-id-get-with-http-info any?
  "Get multi-asset weights for specific index"
  [index_id string?]
  (check-required-params index_id)
  (call-api "/v1/indexdef/multiasset/{index_id}" :get
            {:path-params   {"index_id" index_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["ApiKey"]}))

(defn-spec v1-indexdef-multiasset-index-id-get (s/coll-of indexes/index-multi-asset-weight-spec)
  "Get multi-asset weights for specific index"
  [index_id string?]
  (let [res (:data (v1-indexdef-multiasset-index-id-get-with-http-info index_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of indexes/index-multi-asset-weight-spec) res st/string-transformer)
       res)))


(defn-spec v1-indexes-get-with-http-info any?
  "List indexes"
  []
  (call-api "/v1/indexes" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["ApiKey"]}))

(defn-spec v1-indexes-get (s/coll-of indexes/index-identifier-spec)
  "List indexes"
  []
  (let [res (:data (v1-indexes-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of indexes/index-identifier-spec) res st/string-transformer)
       res)))


(defn-spec v1-indexes-index-definition-id-current-snapshot-get-with-http-info any?
  "Current Index Values for index definition"
  [index_definition_id string?]
  (check-required-params index_definition_id)
  (call-api "/v1/indexes/{index_definition_id}/currentSnapshot" :get
            {:path-params   {"index_definition_id" index_definition_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["ApiKey"]}))

(defn-spec v1-indexes-index-definition-id-current-snapshot-get (s/coll-of indexes/index-definition-snapshot-entry-spec)
  "Current Index Values for index definition"
  [index_definition_id string?]
  (let [res (:data (v1-indexes-index-definition-id-current-snapshot-get-with-http-info index_definition_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of indexes/index-definition-snapshot-entry-spec) res st/string-transformer)
       res)))


(defn-spec v1-indexes-index-definition-id-history-snapshot-get-with-http-info any?
  "Historical Index Values for index definition"
  ([index_definition_id string?, ] (v1-indexes-index-definition-id-history-snapshot-get-with-http-info index_definition_id nil))
  ([index_definition_id string?, {:keys [time]} (s/map-of keyword? any?)]
   (check-required-params index_definition_id)
   (call-api "/v1/indexes/{index_definition_id}/historySnapshot" :get
             {:path-params   {"index_definition_id" index_definition_id }
              :header-params {}
              :query-params  {"time" time }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["ApiKey"]})))

(defn-spec v1-indexes-index-definition-id-history-snapshot-get (s/coll-of indexes/index-definition-snapshot-entry-spec)
  "Historical Index Values for index definition"
  ([index_definition_id string?, ] (v1-indexes-index-definition-id-history-snapshot-get index_definition_id nil))
  ([index_definition_id string?, optional-params any?]
   (let [res (:data (v1-indexes-index-definition-id-history-snapshot-get-with-http-info index_definition_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of indexes/index-definition-snapshot-entry-spec) res st/string-transformer)
        res))))


(defn-spec v1-indexes-index-id-current-get-with-http-info any?
  "Current Index Value"
  [index_id string?]
  (check-required-params index_id)
  (call-api "/v1/indexes/{index_id}/current" :get
            {:path-params   {"index_id" index_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["ApiKey"]}))

(defn-spec v1-indexes-index-id-current-get indexes/index-value-spec
  "Current Index Value"
  [index_id string?]
  (let [res (:data (v1-indexes-index-id-current-get-with-http-info index_id))]
    (if (:decode-models *api-context*)
       (st/decode indexes/index-value-spec res st/string-transformer)
       res)))


(defn-spec v1-indexes-index-id-history-get-with-http-info any?
  "Historical Index Value w/Composition"
  ([index_id string?, ] (v1-indexes-index-id-history-get-with-http-info index_id nil))
  ([index_id string?, {:keys [time_start time_end limit]} (s/map-of keyword? any?)]
   (check-required-params index_id)
   (call-api "/v1/indexes/{index_id}/history" :get
             {:path-params   {"index_id" index_id }
              :header-params {}
              :query-params  {"time_start" time_start "time_end" time_end "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["ApiKey"]})))

(defn-spec v1-indexes-index-id-history-get (s/coll-of indexes/index-value-spec)
  "Historical Index Value w/Composition"
  ([index_id string?, ] (v1-indexes-index-id-history-get index_id nil))
  ([index_id string?, optional-params any?]
   (let [res (:data (v1-indexes-index-id-history-get-with-http-info index_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of indexes/index-value-spec) res st/string-transformer)
        res))))


(defn-spec v1-indexes-index-id-timeseries-get-with-http-info any?
  "Timeseries Index Value"
  ([index_id string?, period_id string?, time_start string?, time_end string?, ] (v1-indexes-index-id-timeseries-get-with-http-info index_id period_id time_start time_end nil))
  ([index_id string?, period_id string?, time_start string?, time_end string?, {:keys [limit]} (s/map-of keyword? any?)]
   (check-required-params index_id period_id time_start time_end)
   (call-api "/v1/indexes/{index_id}/timeseries" :get
             {:path-params   {"index_id" index_id }
              :header-params {}
              :query-params  {"period_id" period_id "time_start" time_start "time_end" time_end "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["ApiKey"]})))

(defn-spec v1-indexes-index-id-timeseries-get (s/coll-of indexes/index-timeseries-item-spec)
  "Timeseries Index Value"
  ([index_id string?, period_id string?, time_start string?, time_end string?, ] (v1-indexes-index-id-timeseries-get index_id period_id time_start time_end nil))
  ([index_id string?, period_id string?, time_start string?, time_end string?, optional-params any?]
   (let [res (:data (v1-indexes-index-id-timeseries-get-with-http-info index_id period_id time_start time_end optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of indexes/index-timeseries-item-spec) res st/string-transformer)
        res))))


