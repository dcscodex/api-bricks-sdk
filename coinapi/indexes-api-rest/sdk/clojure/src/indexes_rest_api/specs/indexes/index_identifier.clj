(ns indexes-rest-api.specs.indexes/index-identifier
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def indexes/index-identifier-data
  {
   (ds/opt :id) string?
   })

(def indexes/index-identifier-spec
  (ds/spec
    {:name ::indexes/index-identifier
     :spec indexes/index-identifier-data}))
