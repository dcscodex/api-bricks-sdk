(ns fin-feed-api-stock-rest-api.specs.admin/operational-halt-status-model
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def admin/operational-halt-status-model-data
  {
   (ds/opt :symbol) string?
   (ds/opt :timestamp_nanos) int?
   (ds/opt :timestamp) inst?
   (ds/opt :operational_halt_status) int?
   (ds/opt :operational_halt_status_code) string?
   (ds/opt :operational_halt_status_text) string?
   (ds/opt :is_operationally_halted) boolean?
   (ds/opt :is_not_operationally_halted) boolean?
   })

(def admin/operational-halt-status-model-spec
  (ds/spec
    {:name ::admin/operational-halt-status-model
     :spec admin/operational-halt-status-model-data}))
