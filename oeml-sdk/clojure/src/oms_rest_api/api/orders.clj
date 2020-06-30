(ns oms-rest-api.api.orders
  (:require [oms-rest-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [oms-rest-api.specs.time-in-force :refer :all]
            [oms-rest-api.specs.order-data :refer :all]
            [oms-rest-api.specs.balance-data :refer :all]
            [oms-rest-api.specs.create-order400 :refer :all]
            [oms-rest-api.specs.cancel-all-order :refer :all]
            [oms-rest-api.specs.cancel-order :refer :all]
            [oms-rest-api.specs.position-data :refer :all]
            [oms-rest-api.specs.order-status :refer :all]
            [oms-rest-api.specs.messages-info :refer :all]
            [oms-rest-api.specs.balance :refer :all]
            [oms-rest-api.specs.messages :refer :all]
            [oms-rest-api.specs.order-live :refer :all]
            [oms-rest-api.specs.position :refer :all]
            [oms-rest-api.specs.new-order :refer :all]
            [oms-rest-api.specs.order :refer :all]
            [oms-rest-api.specs.messages-ok :refer :all]
            )
  (:import (java.io File)))


(defn-spec v1-orders-cancel-all-post-with-http-info any?
  "Cancel all order
  Cancel all existing order."
  [cancel-all-order cancel-all-order]
  (check-required-params cancel-all-order)
  (call-api "/v1/orders/cancel/all" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    cancel-all-order
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec v1-orders-cancel-all-post messages-ok-spec
  "Cancel all order
  Cancel all existing order."
  [cancel-all-order cancel-all-order]
  (let [res (:data (v1-orders-cancel-all-post-with-http-info cancel-all-order))]
    (if (:decode-models *api-context*)
       (st/decode messages-ok-spec res st/string-transformer)
       res)))


(defn-spec v1-orders-cancel-post-with-http-info any?
  "Cancel order
  Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID."
  [cancel-order cancel-order]
  (check-required-params cancel-order)
  (call-api "/v1/orders/cancel" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    cancel-order
             :content-types ["application/json"]
             :accepts       ["application/json" "appliction/json"]
             :auth-names    []}))

(defn-spec v1-orders-cancel-post order-live-spec
  "Cancel order
  Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID."
  [cancel-order cancel-order]
  (let [res (:data (v1-orders-cancel-post-with-http-info cancel-order))]
    (if (:decode-models *api-context*)
       (st/decode order-live-spec res st/string-transformer)
       res)))


(defn-spec v1-orders-get-with-http-info any?
  "Get orders
  List your current open orders."
  ([] (v1-orders-get-with-http-info nil))
  ([{:keys [exchange_id]} (s/map-of keyword? any?)]
   (call-api "/v1/orders" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"exchange_id" exchange_id }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec v1-orders-get (s/coll-of order-spec)
  "Get orders
  List your current open orders."
  ([] (v1-orders-get nil))
  ([optional-params any?]
   (let [res (:data (v1-orders-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of order-spec) res st/string-transformer)
        res))))


(defn-spec v1-orders-post-with-http-info any?
  "Create new order
  You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds."
  [new-order new-order]
  (check-required-params new-order)
  (call-api "/v1/orders" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    new-order
             :content-types ["application/json"]
             :accepts       ["application/json" "appliction/json"]
             :auth-names    []}))

(defn-spec v1-orders-post order-live-spec
  "Create new order
  You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds."
  [new-order new-order]
  (let [res (:data (v1-orders-post-with-http-info new-order))]
    (if (:decode-models *api-context*)
       (st/decode order-live-spec res st/string-transformer)
       res)))


