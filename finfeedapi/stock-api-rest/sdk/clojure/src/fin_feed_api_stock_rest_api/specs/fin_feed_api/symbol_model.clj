(ns fin-feed-api-stock-rest-api.specs.fin-feed-api/symbol-model
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
   (ds/opt :cfi_code) string?
   (ds/opt :cfi_category) string?
   (ds/opt :cfi_group) string?
   (ds/opt :cfi_attribute1) string?
   (ds/opt :cfi_attribute2) string?
   (ds/opt :cfi_attribute3) string?
   (ds/opt :cfi_attribute4) string?
   (ds/opt :cfi_category_desc) string?
   (ds/opt :cfi_group_desc) string?
   })

(def fin-feed-api/symbol-model-spec
  (ds/spec
    {:name ::fin-feed-api/symbol-model
     :spec fin-feed-api/symbol-model-data}))
