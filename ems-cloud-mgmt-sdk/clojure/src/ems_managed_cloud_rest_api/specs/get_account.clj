(ns ems-managed-cloud-rest-api.specs.get-account
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [ems-managed-cloud-rest-api.specs.key-value :refer :all]
            )
  (:import (java.io File)))


(def get-account-data
  {
   (ds/opt :exchange_id) string?
   (ds/opt :parameters) (s/coll-of key-value-spec)
   })

(def get-account-spec
  (ds/spec
    {:name ::get-account
     :spec get-account-data}))
