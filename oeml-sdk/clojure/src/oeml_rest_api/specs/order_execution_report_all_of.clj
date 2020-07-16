(ns oeml-rest-api.specs.order-execution-report-all-of
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [oeml-rest-api.specs.ord-status :refer :all]
            )
  (:import (java.io File)))


(def order-execution-report-all-of-data
  {
   (ds/req :client_order_id_format_exchange) string?
   (ds/opt :exchange_order_id) string?
   (ds/req :amount_open) float?
   (ds/req :amount_filled) float?
   (ds/req :status) ord-status-spec
   (ds/req :time_order) (s/coll-of (s/coll-of string?))
   (ds/opt :error_message) string?
   })

(def order-execution-report-all-of-spec
  (ds/spec
    {:name ::order-execution-report-all-of
     :spec order-execution-report-all-of-data}))
