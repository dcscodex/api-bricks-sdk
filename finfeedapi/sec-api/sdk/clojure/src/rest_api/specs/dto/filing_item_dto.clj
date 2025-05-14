(ns rest-api.specs.dto/filing-item-dto
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def dto/filing-item-dto-data
  {
   (ds/opt :item_number) string?
   (ds/opt :item_title) string?
   (ds/opt :content) string?
   })

(def dto/filing-item-dto-spec
  (ds/spec
    {:name ::dto/filing-item-dto
     :spec dto/filing-item-dto-data}))
