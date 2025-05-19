(ns fx-historical-rest-api.api.metadata
  (:require [fx-historical-rest-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [fx-historical-rest-api.specs.v1/asset :refer :all]
            [fx-historical-rest-api.specs.v1/exchange-rates :refer :all]
            [fx-historical-rest-api.specs.v1/timeseries-period :refer :all]
            [fx-historical-rest-api.specs.v1/icon :refer :all]
            [fx-historical-rest-api.specs.v1/chain-network-address :refer :all]
            [fx-historical-rest-api.specs.v1/exchange-rates-rate :refer :all]
            [fx-historical-rest-api.specs.v1/exchange-rates-timeseries-item :refer :all]
            [fx-historical-rest-api.specs.v1/exchange-rate :refer :all]
            )
  (:import (java.io File)))


(defn-spec v1-assets-asset-id-get-with-http-info any?
  "List all assets by asset ID"
  [asset_id string?]
  (check-required-params asset_id)
  (call-api "/v1/assets/{asset_id}" :get
            {:path-params   {"asset_id" asset_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    ["APIKey"]}))

(defn-spec v1-assets-asset-id-get (s/coll-of v1/asset-spec)
  "List all assets by asset ID"
  [asset_id string?]
  (let [res (:data (v1-assets-asset-id-get-with-http-info asset_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of v1/asset-spec) res st/string-transformer)
       res)))


(defn-spec v1-assets-get-with-http-info any?
  "List all assets
  Retrieves all assets.
            
:::info
Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).
:::
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::"
  ([] (v1-assets-get-with-http-info nil))
  ([{:keys [filter_asset_id]} (s/map-of keyword? any?)]
   (call-api "/v1/assets" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_asset_id" filter_asset_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    ["APIKey"]})))

(defn-spec v1-assets-get (s/coll-of v1/asset-spec)
  "List all assets
  Retrieves all assets.
            
:::info
Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).
:::
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::"
  ([] (v1-assets-get nil))
  ([optional-params any?]
   (let [res (:data (v1-assets-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of v1/asset-spec) res st/string-transformer)
        res))))


(defn-spec v1-assets-icons-size-get-with-http-info any?
  "List all asset icons
  Gets the list of icons (of the given size) for all the assets."
  [size int?]
  (check-required-params size)
  (call-api "/v1/assets/icons/{size}" :get
            {:path-params   {"size" size }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    ["APIKey"]}))

(defn-spec v1-assets-icons-size-get (s/coll-of v1/icon-spec)
  "List all asset icons
  Gets the list of icons (of the given size) for all the assets."
  [size int?]
  (let [res (:data (v1-assets-icons-size-get-with-http-info size))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of v1/icon-spec) res st/string-transformer)
       res)))


