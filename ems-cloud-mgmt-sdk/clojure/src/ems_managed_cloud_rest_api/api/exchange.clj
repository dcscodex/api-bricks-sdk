(ns ems-managed-cloud-rest-api.api.exchange
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


(defn-spec exchange-login-require-with-http-info any?
  "Get exchange configuration
  Get information about the required parameters or server site location of the exchanges supported in the EMS API."
  []
  (call-api "/v1/exchanges" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["APIKeyHeader" "APIKeyQueryParam"]}))

(defn-spec exchange-login-require (s/coll-of exchange-login-require-spec)
  "Get exchange configuration
  Get information about the required parameters or server site location of the exchanges supported in the EMS API."
  []
  (let [res (:data (exchange-login-require-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of exchange-login-require-spec) res st/string-transformer)
       res)))


