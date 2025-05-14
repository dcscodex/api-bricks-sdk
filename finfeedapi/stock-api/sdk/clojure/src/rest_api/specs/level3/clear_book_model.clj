(ns rest-api.specs.level3/clear-book-model
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def level3/clear-book-model-data
  {
   (ds/opt :symbol) string?
   (ds/opt :timestamp_nanos) int?
   (ds/opt :timestamp) inst?
   })

(def level3/clear-book-model-spec
  (ds/spec
    {:name ::level3/clear-book-model
     :spec level3/clear-book-model-data}))
