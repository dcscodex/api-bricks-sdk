(ns indexes-rest-api.specs.indexes/index-value
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [indexes-rest-api.specs.indexes/index-value-component :refer :all]
            )
  (:import (java.io File)))


(def indexes/index-value-data
  {
   (ds/opt :timestamp) inst?
   (ds/opt :value) float?
   (ds/opt :composition) (s/coll-of indexes/index-value-component-spec)
   })

(def indexes/index-value-spec
  (ds/spec
    {:name ::indexes/index-value
     :spec indexes/index-value-data}))
