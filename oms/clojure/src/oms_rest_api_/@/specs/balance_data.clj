(ns oms-rest-api-///@.specs.balance-data
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def balance-data-data
  {
   (ds/opt :id) string?
   (ds/opt :symbol_exchange) string?
   (ds/opt :symbol_coinapi) string?
   (ds/opt :balance) float?
   (ds/opt :available) float?
   (ds/opt :locked) float?
   (ds/opt :update_origin) string?
   })

(def balance-data-spec
  (ds/spec
    {:name ::balance-data
     :spec balance-data-data}))
