(ns coin-api-market-data-rest-api.specs.v1/chain
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def v1/chain-data
  {
   (ds/opt :chain_id) string?
   (ds/opt :name) string?
   })

(def v1/chain-spec
  (ds/spec
    {:name ::v1/chain
     :spec v1/chain-data}))
