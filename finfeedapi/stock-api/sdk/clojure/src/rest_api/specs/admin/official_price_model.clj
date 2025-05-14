(ns rest-api.specs.admin/official-price-model
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def admin/official-price-model-data
  {
   (ds/opt :symbol) string?
   (ds/opt :timestamp_nanos) int?
   (ds/opt :timestamp) inst?
   (ds/opt :price_type) int?
   (ds/opt :price_type_code) string?
   (ds/opt :price_type_text) string?
   (ds/opt :is_price_type_opening) boolean?
   (ds/opt :is_price_type_closing) boolean?
   (ds/opt :official_price) float?
   })

(def admin/official-price-model-spec
  (ds/spec
    {:name ::admin/official-price-model
     :spec admin/official-price-model-data}))
