(ns ems-managed-cloud-rest-api.specs.exchange-login-require
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def exchange-login-require-data
  {
   (ds/opt :exchange_id) string?
   (ds/opt :location_id) string?
   (ds/opt :required_parameters) (s/coll-of string?)
   })

(def exchange-login-require-spec
  (ds/spec
    {:name ::exchange-login-require
     :spec exchange-login-require-data}))
