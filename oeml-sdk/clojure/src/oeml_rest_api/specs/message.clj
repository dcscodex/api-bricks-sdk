(ns oeml-rest-api.specs.message
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [oeml-rest-api.specs.severity :refer :all]
            )
  (:import (java.io File)))


(def message-data
  {
   (ds/opt :type) string?
   (ds/opt :severity) severity-spec
   (ds/opt :exchange_id) string?
   (ds/opt :message) string?
   })

(def message-spec
  (ds/spec
    {:name ::message
     :spec message-data}))
