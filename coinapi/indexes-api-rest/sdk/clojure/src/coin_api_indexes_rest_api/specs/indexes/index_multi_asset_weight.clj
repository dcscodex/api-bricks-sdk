(ns coin-api-indexes-rest-api.specs.indexes/index-multi-asset-weight
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def indexes/index-multi-asset-weight-data
  {
   (ds/opt :indexId) string?
   (ds/opt :assetId) string?
   (ds/opt :weight) float?
   })

(def indexes/index-multi-asset-weight-spec
  (ds/spec
    {:name ::indexes/index-multi-asset-weight
     :spec indexes/index-multi-asset-weight-data}))
