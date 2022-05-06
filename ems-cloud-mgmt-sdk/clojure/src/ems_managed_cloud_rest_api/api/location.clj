(ns ems-managed-cloud-rest-api.api.location
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


(defn-spec locations-with-http-info any?
  "Get site locations
  This endpoint providing information about the server site locations supported in the EMS API."
  []
  (call-api "/v1/locations" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["APIKeyHeader" "APIKeyQueryParam"]}))

(defn-spec locations (s/coll-of locations-spec)
  "Get site locations
  This endpoint providing information about the server site locations supported in the EMS API."
  []
  (let [res (:data (locations-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of locations-spec) res st/string-transformer)
       res)))


