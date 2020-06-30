(ns oms-rest-api.specs.create-order400
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def create-order400-data
  {
   (ds/opt :type) string?
   (ds/opt :title) string?
   (ds/opt :status) float?
   (ds/opt :traceId) string?
   (ds/opt :errors) string?
   })

(def create-order400-spec
  (ds/spec
    {:name ::create-order400
     :spec create-order400-data}))
