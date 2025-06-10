(ns rest-api.specs.v1/external-asset
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def v1/external-asset-data
  {
   (ds/opt :asset_id) string?
   (ds/opt :description) string?
   (ds/opt :asset_type) string?
   })

(def v1/external-asset-spec
  (ds/spec
    {:name ::v1/external-asset
     :spec v1/external-asset-data}))
