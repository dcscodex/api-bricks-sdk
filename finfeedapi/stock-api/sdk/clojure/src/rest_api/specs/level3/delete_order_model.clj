(ns rest-api.specs.level3/delete-order-model
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def level3/delete-order-model-data
  {
   (ds/opt :symbol) string?
   (ds/opt :timestamp_nanos) int?
   (ds/opt :timestamp) inst?
   (ds/opt :order_id_reference) int?
   })

(def level3/delete-order-model-spec
  (ds/spec
    {:name ::level3/delete-order-model
     :spec level3/delete-order-model-data}))
