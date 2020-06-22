(ns oms-rest-api.specs.balance
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [oms-rest-api.specs.balance-data :refer :all]
            )
  (:import (java.io File)))


(def balance-data
  {
   (ds/opt :type) string?
   (ds/opt :exchange_name) string?
   (ds/opt :data) (s/coll-of balance-data-spec)
   })

(def balance-spec
  (ds/spec
    {:name ::balance
     :spec balance-data}))
