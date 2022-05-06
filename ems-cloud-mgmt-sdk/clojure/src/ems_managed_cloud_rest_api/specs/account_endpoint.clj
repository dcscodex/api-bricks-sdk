(ns ems-managed-cloud-rest-api.specs.account-endpoint
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def account-endpoint-data
  {
   (ds/opt :exchange_id) string?
   (ds/opt :location_id) string?
   (ds/opt :endpoint_schema) string?
   (ds/opt :endpoint_host) string?
   (ds/opt :endpoint_url) string?
   })

(def account-endpoint-spec
  (ds/spec
    {:name ::account-endpoint
     :spec account-endpoint-data}))
