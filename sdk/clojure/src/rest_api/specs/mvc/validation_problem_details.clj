(ns rest-api.specs.mvc/validation-problem-details
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def mvc/validation-problem-details-data
  {
   (ds/opt :type) string?
   (ds/opt :title) string?
   (ds/opt :status) int?
   (ds/opt :detail) string?
   (ds/opt :instance) string?
   (ds/opt :errors) (s/map-of string? (s/coll-of string?))
   })

(def mvc/validation-problem-details-spec
  (ds/spec
    {:name ::mvc/validation-problem-details
     :spec mvc/validation-problem-details-data}))
