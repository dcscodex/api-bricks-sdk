(ns ems-managed-cloud-rest-api.specs.key-value
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def key-value-data
  {
   (ds/opt :key) string?
   (ds/opt :value) string?
   })

(def key-value-spec
  (ds/spec
    {:name ::key-value
     :spec key-value-data}))
