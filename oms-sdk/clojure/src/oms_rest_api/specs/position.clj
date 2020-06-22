(ns oms-rest-api.specs.position
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [oms-rest-api.specs.position-data :refer :all]
            )
  (:import (java.io File)))


(def position-data
  {
   (ds/opt :type) string?
   (ds/opt :exchange_name) string?
   (ds/opt :data) (s/coll-of position-data-spec)
   })

(def position-spec
  (ds/spec
    {:name ::position
     :spec position-data}))
