(ns rest-api.specs.admin/system-event-model
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def admin/system-event-model-data
  {
   (ds/opt :timestamp_nanos) int?
   (ds/opt :timestamp) inst?
   (ds/opt :system_event) int?
   (ds/opt :system_event_code) string?
   (ds/opt :system_event_text) string?
   (ds/opt :is_system_event_start_of_messages) boolean?
   (ds/opt :is_system_event_start_of_system_hours) boolean?
   (ds/opt :is_system_event_start_of_regular_market_hours) boolean?
   (ds/opt :is_system_event_end_of_regular_market_hours) boolean?
   (ds/opt :is_system_event_end_of_system_hours) boolean?
   (ds/opt :is_system_event_end_of_messages) boolean?
   })

(def admin/system-event-model-spec
  (ds/spec
    {:name ::admin/system-event-model
     :spec admin/system-event-model-data}))
