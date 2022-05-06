(ns ems-managed-cloud-rest-api.specs.locations
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def locations-data
  {
   (ds/opt :location_id) string?
   (ds/opt :region_name) string?
   (ds/opt :provider_name) string?
   })

(def locations-spec
  (ds/spec
    {:name ::locations
     :spec locations-data}))
