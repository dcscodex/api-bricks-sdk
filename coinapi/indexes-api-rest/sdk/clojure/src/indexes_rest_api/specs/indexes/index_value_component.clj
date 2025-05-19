(ns indexes-rest-api.specs.indexes/index-value-component
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def indexes/index-value-component-data
  {
   (ds/opt :component_id) string?
   (ds/opt :component_value) float?
   })

(def indexes/index-value-component-spec
  (ds/spec
    {:name ::indexes/index-value-component
     :spec indexes/index-value-component-data}))
