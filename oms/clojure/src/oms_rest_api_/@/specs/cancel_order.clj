(ns oms-rest-api-///@.specs.cancel-order
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cancel-order-data
  {
   (ds/opt :exchange_id) string?
   (ds/opt :exchange_order_id) string?
   (ds/opt :client_order_id) string?
   })

(def cancel-order-spec
  (ds/spec
    {:name ::cancel-order
     :spec cancel-order-data}))
