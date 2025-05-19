(ns indexes-rest-api.specs.indexes/index-definition-snapshot-entry
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def indexes/index-definition-snapshot-entry-data
  {
   (ds/opt :index_id) string?
   (ds/opt :timestamp) inst?
   (ds/opt :value) float?
   })

(def indexes/index-definition-snapshot-entry-spec
  (ds/spec
    {:name ::indexes/index-definition-snapshot-entry
     :spec indexes/index-definition-snapshot-entry-data}))
