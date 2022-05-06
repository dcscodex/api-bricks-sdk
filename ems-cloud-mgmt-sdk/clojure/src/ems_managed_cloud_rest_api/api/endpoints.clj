(ns ems-managed-cloud-rest-api.api.endpoints
  (:require [ems-managed-cloud-rest-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [ems-managed-cloud-rest-api.specs.update-account :refer :all]
            [ems-managed-cloud-rest-api.specs.account-info :refer :all]
            [ems-managed-cloud-rest-api.specs.exchange-login-require :refer :all]
            [ems-managed-cloud-rest-api.specs.locations :refer :all]
            [ems-managed-cloud-rest-api.specs.key-value :refer :all]
            [ems-managed-cloud-rest-api.specs.account-endpoint :refer :all]
            [ems-managed-cloud-rest-api.specs.get-account :refer :all]
            [ems-managed-cloud-rest-api.specs.account-data :refer :all]
            )
  (:import (java.io File)))


(defn-spec endpoints-with-http-info any?
  "Get API endpoints
  Get all API endpoints that the EMS API expose for your subscription."
  ([] (endpoints-with-http-info nil))
  ([{:keys [filter_exchange_id]} (s/map-of keyword? any?)]
   (call-api "/v1/endpoints" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_exchange_id" (with-collection-format filter_exchange_id :multi) }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["APIKeyHeader" "APIKeyQueryParam"]})))

(defn-spec endpoints (s/coll-of account-endpoint-spec)
  "Get API endpoints
  Get all API endpoints that the EMS API expose for your subscription."
  ([] (endpoints nil))
  ([optional-params any?]
   (let [res (:data (endpoints-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of account-endpoint-spec) res st/string-transformer)
        res))))


