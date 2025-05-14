(ns rest-api.specs.admin/short-sale-price-test-status-model
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def admin/short-sale-price-test-status-model-data
  {
   (ds/opt :symbol) string?
   (ds/opt :timestamp_nanos) int?
   (ds/opt :timestamp) inst?
   (ds/opt :short_sale_price_test_status) int?
   (ds/opt :short_sale_price_test_status_code) string?
   (ds/opt :short_sale_price_test_status_text) string?
   (ds/opt :is_short_sale_price_test_not_in_effect) boolean?
   (ds/opt :is_short_sale_price_test_in_effect) boolean?
   (ds/opt :detail) int?
   (ds/opt :detail_code) string?
   (ds/opt :detail_text) string?
   (ds/opt :is_detail_no_price_test) boolean?
   (ds/opt :is_detail_activated) boolean?
   (ds/opt :is_detail_continued) boolean?
   (ds/opt :is_detail_deactivated) boolean?
   (ds/opt :is_detail_not_available) boolean?
   })

(def admin/short-sale-price-test-status-model-spec
  (ds/spec
    {:name ::admin/short-sale-price-test-status-model
     :spec admin/short-sale-price-test-status-model-data}))
