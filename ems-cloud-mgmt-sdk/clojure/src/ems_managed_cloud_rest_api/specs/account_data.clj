(ns ems-managed-cloud-rest-api.specs.account-data
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [ems-managed-cloud-rest-api.specs.key-value :refer :all]
            )
  (:import (java.io File)))


(def account-data-data
  {
   (ds/opt :exchange_id) string?
   (ds/opt :parameters) (s/coll-of key-value-spec)
   })

(def account-data-spec
  (ds/spec
    {:name ::account-data
     :spec account-data-data}))
