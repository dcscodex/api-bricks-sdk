(ns indexes-rest-api.specs.metadata/exchange
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def metadata/exchange-data
  {
   (ds/opt :exchange_id) string?
   (ds/opt :website) string?
   (ds/opt :name) string?
   })

(def metadata/exchange-spec
  (ds/spec
    {:name ::metadata/exchange
     :spec metadata/exchange-data}))
