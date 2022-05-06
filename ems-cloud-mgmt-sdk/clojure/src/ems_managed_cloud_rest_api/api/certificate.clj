(ns ems-managed-cloud-rest-api.api.certificate
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


(defn-spec certificate-with-http-info any?
  "Get authentication certificate
  Providing PEM file with the Private Key, Public Key and the Certificate to authenticate to the EMS API."
  []
  (call-api "/v1/certificate/pem" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain"]
             :auth-names    ["APIKeyHeader" "APIKeyQueryParam"]}))

(defn-spec certificate string?
  "Get authentication certificate
  Providing PEM file with the Private Key, Public Key and the Certificate to authenticate to the EMS API."
  []
  (let [res (:data (certificate-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode string? res st/string-transformer)
       res)))


