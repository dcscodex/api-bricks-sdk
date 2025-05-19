(ns fx-realtime-rest-api.specs.v1/chain-network-address
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def v1/chain-network-address-data
  {
   (ds/opt :chain_id) string?
   (ds/opt :network_id) string?
   (ds/opt :address) string?
   })

(def v1/chain-network-address-spec
  (ds/spec
    {:name ::v1/chain-network-address
     :spec v1/chain-network-address-data}))
