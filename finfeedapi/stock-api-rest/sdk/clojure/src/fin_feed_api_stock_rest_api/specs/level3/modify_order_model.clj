(ns fin-feed-api-stock-rest-api.specs.level3/modify-order-model
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def level3/modify-order-model-data
  {
   (ds/opt :symbol) string?
   (ds/opt :timestamp_nanos) int?
   (ds/opt :timestamp) inst?
   (ds/opt :order_id_reference) int?
   (ds/opt :is_priority_reset) boolean?
   (ds/opt :size) int?
   (ds/opt :price) float?
   })

(def level3/modify-order-model-spec
  (ds/spec
    {:name ::level3/modify-order-model
     :spec level3/modify-order-model-data}))
