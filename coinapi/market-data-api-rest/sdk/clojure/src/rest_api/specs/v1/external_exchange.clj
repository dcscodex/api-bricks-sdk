(ns rest-api.specs.v1/external-exchange
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def v1/external-exchange-data
  {
   (ds/opt :exchange_id) string?
   (ds/opt :external_name) string?
   (ds/opt :description) string?
   (ds/opt :source_id) string?
   })

(def v1/external-exchange-spec
  (ds/spec
    {:name ::v1/external-exchange
     :spec v1/external-exchange-data}))
