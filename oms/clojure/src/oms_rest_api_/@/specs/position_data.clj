(ns oms-rest-api-///@.specs.position-data
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def position-data-data
  {
   (ds/opt :id) string?
   (ds/opt :symbol_exchange) string?
   (ds/opt :symbol_coinapi) string?
   (ds/opt :avg_entry_price) float?
   (ds/opt :quantity) float?
   (ds/opt :is_buy) boolean?
   (ds/opt :unrealised_pn_l) float?
   (ds/opt :leverage) float?
   (ds/opt :cross_margin) boolean?
   (ds/opt :liquidation_price) float?
   (ds/opt :raw_data) string?
   })

(def position-data-spec
  (ds/spec
    {:name ::position-data
     :spec position-data-data}))
