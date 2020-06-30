(ns oms-rest-api.specs.new-order
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [oms-rest-api.specs.time-in-force :refer :all]
            )
  (:import (java.io File)))


(def new-order-data
  {
   (ds/opt :exchange_id) string?
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

(def new-order-spec
  (ds/spec
    {:name ::new-order
     :spec new-order-data}))
