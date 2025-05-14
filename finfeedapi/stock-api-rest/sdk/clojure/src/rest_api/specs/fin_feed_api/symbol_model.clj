(ns rest-api.specs.fin-feed-api/symbol-model
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def fin-feed-api/symbol-model-data
  {
   (ds/opt :symbol_id) string?
   (ds/opt :exchange_id) string?
   (ds/opt :security_category) string?
   (ds/opt :name) string?
   (ds/opt :date) string?
   (ds/opt :asset_class) string?
   })

(def fin-feed-api/symbol-model-spec
  (ds/spec
    {:name ::fin-feed-api/symbol-model
     :spec fin-feed-api/symbol-model-data}))
