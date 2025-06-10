(ns rest-api.specs.v1/icon
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def v1/icon-data
  {
   (ds/opt :exchange_id) string?
   (ds/opt :asset_id) string?
   (ds/opt :url) string?
   })

(def v1/icon-spec
  (ds/spec
    {:name ::v1/icon
     :spec v1/icon-data}))
