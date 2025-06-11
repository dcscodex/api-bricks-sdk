(ns fin-feed-api-sec-rest-api.specs.mvc/problem-details
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def mvc/problem-details-data
  {
   (ds/opt :type) string?
   (ds/opt :title) string?
   (ds/opt :status) int?
   (ds/opt :detail) string?
   (ds/opt :instance) string?
   })

(def mvc/problem-details-spec
  (ds/spec
    {:name ::mvc/problem-details
     :spec mvc/problem-details-data}))
