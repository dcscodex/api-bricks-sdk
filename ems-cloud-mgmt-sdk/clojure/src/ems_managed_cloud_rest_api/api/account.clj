(ns ems-managed-cloud-rest-api.api.account
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


(defn-spec delete-account-with-http-info any?
  "Delete account
  Delete specific exchange account maintained by the EMS API for your subscription."
  [exchange_id (s/coll-of string?)]
  (check-required-params exchange_id)
  (call-api "/v1/accounts" :delete
            {:path-params   {}
             :header-params {}
             :query-params  {"exchange_id" (with-collection-format exchange_id :multi) }
             :form-params   {}
             :content-types []
             :accepts       []
             :auth-names    ["APIKeyHeader" "APIKeyQueryParam"]}))

(defn-spec delete-account any?
  "Delete account
  Delete specific exchange account maintained by the EMS API for your subscription."
  [exchange_id (s/coll-of string?)]
  (let [res (:data (delete-account-with-http-info exchange_id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec delete-account-all-with-http-info any?
  "Delete all accounts
  Delete all exchange accounts maintained by the EMS API for your subscription."
  []
  (call-api "/v1/accounts/all" :delete
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       []
             :auth-names    ["APIKeyHeader" "APIKeyQueryParam"]}))

(defn-spec delete-account-all any?
  "Delete all accounts
  Delete all exchange accounts maintained by the EMS API for your subscription."
  []
  (let [res (:data (delete-account-all-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-account-with-http-info any?
  "Get accounts
  Get all accounts maintained for your subscription in the EMS API."
  ([] (get-account-with-http-info nil))
  ([{:keys [filter_exchange_id]} (s/map-of keyword? any?)]
   (call-api "/v1/accounts" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_exchange_id" (with-collection-format filter_exchange_id :multi) }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["APIKeyHeader" "APIKeyQueryParam"]})))

(defn-spec get-account (s/coll-of get-account-spec)
  "Get accounts
  Get all accounts maintained for your subscription in the EMS API."
  ([] (get-account nil))
  ([optional-params any?]
   (let [res (:data (get-account-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of get-account-spec) res st/string-transformer)
        res))))


(defn-spec persist-account-with-http-info any?
  "Add or update account
  Add new or update existing exchange account for your subscription in the EMS API."
  [body account-data]
  (check-required-params body)
  (call-api "/v1/accounts" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    body
             :content-types ["application/json"]
             :accepts       []
             :auth-names    ["APIKeyHeader" "APIKeyQueryParam"]}))

(defn-spec persist-account any?
  "Add or update account
  Add new or update existing exchange account for your subscription in the EMS API."
  [body account-data]
  (let [res (:data (persist-account-with-http-info body))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


