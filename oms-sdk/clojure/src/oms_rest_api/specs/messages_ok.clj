(ns oms-rest-api.specs.messages-ok
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def messages-ok-data
  {
   (ds/opt :type) string?
   (ds/opt :exchange_id) string?
   (ds/opt :message) string?
   })

(def messages-ok-spec
  (ds/spec
    {:name ::messages-ok
     :spec messages-ok-data}))
