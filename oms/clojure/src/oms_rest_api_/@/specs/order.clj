(ns oms-rest-api-///@.specs.order
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [oms-rest-api-///@.specs.order-data :refer :all]
            )
  (:import (java.io File)))


(def order-data
  {
   (ds/opt :type) string?
   (ds/opt :exchange_name) string?
   (ds/opt :data) (s/coll-of order-data-spec)
   })

(def order-spec
  (ds/spec
    {:name ::order
     :spec order-data}))
