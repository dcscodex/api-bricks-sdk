(ns coin-api-market-data-rest-api.specs.v1/symbol-mapping
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def v1/symbol-mapping-data
  {
   (ds/opt :symbol_id) string?
   (ds/opt :symbol_id_exchange) string?
   (ds/opt :coinapi_datainfo_id) int?
   (ds/opt :asset_id_base_exchange) string?
   (ds/opt :asset_id_quote_exchange) string?
   (ds/opt :asset_id_base) string?
   (ds/opt :asset_id_quote) string?
   (ds/opt :price_precision) float?
   (ds/opt :size_precision) float?
   })

(def v1/symbol-mapping-spec
  (ds/spec
    {:name ::v1/symbol-mapping
     :spec v1/symbol-mapping-data}))
