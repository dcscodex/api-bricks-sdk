(ns oms-rest-api-///@.specs.cancel-all-order
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cancel-all-order-data
  {
   (ds/opt :exchange_id) string?
   })

(def cancel-all-order-spec
  (ds/spec
    {:name ::cancel-all-order
     :spec cancel-all-order-data}))
