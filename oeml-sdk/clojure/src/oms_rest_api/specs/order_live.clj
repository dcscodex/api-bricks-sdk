(ns oms-rest-api.specs.order-live
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [oms-rest-api.specs.order-status :refer :all]
            [oms-rest-api.specs.time-in-force :refer :all]
            )
  (:import (java.io File)))


(def order-live-data
  {
   (ds/opt :type) string?
   (ds/opt :exchange_id) string?
   (ds/opt :id) string?
   (ds/opt :client_order_id_format_exchange) string?
   (ds/opt :exchange_order_id) string?
   (ds/opt :amount_open) float?
   (ds/opt :amount_filled) float?
   (ds/opt :status) order-status-spec
   (ds/opt :time_order) (s/coll-of (s/coll-of string?))
   (ds/opt :error_message) string?
   (ds/opt :client_order_id) string?
   (ds/opt :symbol_exchange) string?
   (ds/opt :symbol_coinapi) string?
   (ds/opt :amount_order) float?
   (ds/opt :price) float?
   (ds/opt :side) string?
   (ds/opt :order_type) string?
   (ds/opt :time_in_force) time-in-force-spec
   (ds/opt :expire_time) inst?
   (ds/opt :exec_inst) (s/coll-of string?)
   })

(def order-live-spec
  (ds/spec
    {:name ::order-live
     :spec order-live-data}))
