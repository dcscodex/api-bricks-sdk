(ns ems-managed-cloud-rest-api.specs.account-info
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def account-info-data
  {
   (ds/opt :exchange_id) string?
   })

(def account-info-spec
  (ds/spec
    {:name ::account-info
     :spec account-info-data}))
