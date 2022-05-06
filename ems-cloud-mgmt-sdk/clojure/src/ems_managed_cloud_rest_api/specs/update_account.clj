(ns ems-managed-cloud-rest-api.specs.update-account
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [ems-managed-cloud-rest-api.specs.key-value :refer :all]
            )
  (:import (java.io File)))


(def update-account-data
  {
   (ds/opt :exchange_id) string?
   (ds/opt :parameters) (s/coll-of key-value-spec)
   })

(def update-account-spec
  (ds/spec
    {:name ::update-account
     :spec update-account-data}))
