(ns rest-api.specs.fin-feed-api/exchange-model
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def fin-feed-api/exchange-model-data
  {
   (ds/opt :exchange_id) string?
   (ds/opt :last_datapoint_date) string?
   (ds/opt :mic) string?
   (ds/opt :operating_mic) string?
   (ds/opt :oprt_sgmt) string?
   (ds/opt :market_name_institution_description) string?
   (ds/opt :legal_entity_name) string?
   (ds/opt :lei) string?
   (ds/opt :market_category_code) string?
   (ds/opt :acronym) string?
   (ds/opt :iso_country_code) string?
   (ds/opt :city) string?
   (ds/opt :website) string?
   (ds/opt :status) string?
   (ds/opt :creation_date) inst?
   (ds/opt :last_update_date) inst?
   (ds/opt :last_validation_date) inst?
   (ds/opt :expiry_date) inst?
   (ds/opt :comments) string?
   })

(def fin-feed-api/exchange-model-spec
  (ds/spec
    {:name ::fin-feed-api/exchange-model
     :spec fin-feed-api/exchange-model-data}))
