(ns rest-api.specs.admin/security-directory-model
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def admin/security-directory-model-data
  {
   (ds/opt :symbol) string?
   (ds/opt :timestamp_nanos) int?
   (ds/opt :timestamp) inst?
   (ds/opt :flags) int?
   (ds/opt :round_lot_size) int?
   (ds/opt :adjusted_poc_price) float?
   (ds/opt :luld_tier) int?
   (ds/opt :luld_tier_code) string?
   (ds/opt :luld_tier_text) string?
   (ds/opt :is_luld_tier_not_applicable) boolean?
   (ds/opt :is_luld_tier1) boolean?
   (ds/opt :is_luld_tier2) boolean?
   })

(def admin/security-directory-model-spec
  (ds/spec
    {:name ::admin/security-directory-model
     :spec admin/security-directory-model-data}))
