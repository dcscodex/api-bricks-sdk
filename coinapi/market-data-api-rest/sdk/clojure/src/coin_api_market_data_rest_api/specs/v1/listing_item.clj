(ns coin-api-market-data-rest-api.specs.v1/listing-item
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def v1/listing-item-data
  {
   (ds/opt :metric_id) string?
   (ds/opt :symbol_id) string?
   (ds/opt :symbol_id_external) string?
   (ds/opt :exchange_id) string?
   (ds/opt :asset_id) string?
   (ds/opt :asset_id_external) string?
   (ds/opt :chain_id) string?
   (ds/opt :network_id) string?
   })

(def v1/listing-item-spec
  (ds/spec
    {:name ::v1/listing-item
     :spec v1/listing-item-data}))
