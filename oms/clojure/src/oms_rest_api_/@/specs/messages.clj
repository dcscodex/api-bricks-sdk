(ns oms-rest-api-///@.specs.messages
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def messages-data
  {
   (ds/opt :type) string?
   (ds/opt :exchange_id) string?
   (ds/opt :message) string?
   })

(def messages-spec
  (ds/spec
    {:name ::messages
     :spec messages-data}))
