(ns oms-rest-api.specs.messages-info
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def messages-info-data
  {
   (ds/opt :type) string?
   (ds/opt :exchange_id) string?
   (ds/opt :error_message) string?
   })

(def messages-info-spec
  (ds/spec
    {:name ::messages-info
     :spec messages-info-data}))
