(ns rest-api.specs.admin/admin-message-model
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [rest-api.specs.admin/trading-status-model :refer :all]
            [rest-api.specs.admin/official-price-model :refer :all]
            [rest-api.specs.admin/security-event-model :refer :all]
            [rest-api.specs.admin/auction-information-model :refer :all]
            [rest-api.specs.admin/short-sale-price-test-status-model :refer :all]
            [rest-api.specs.admin/operational-halt-status-model :refer :all]
            [rest-api.specs.admin/retail-liquidity-indicator-model :refer :all]
            [rest-api.specs.admin/system-event-model :refer :all]
            [rest-api.specs.admin/security-directory-model :refer :all]
            )
  (:import (java.io File)))


(def admin/admin-message-model-data
  {
   (ds/opt :trading_status) admin/trading-status-model-spec
   (ds/opt :official_price) admin/official-price-model-spec
   (ds/opt :security_event) admin/security-event-model-spec
   (ds/opt :auction_information) admin/auction-information-model-spec
   (ds/opt :short_sale_price_test) admin/short-sale-price-test-status-model-spec
   (ds/opt :operational_halt_status) admin/operational-halt-status-model-spec
   (ds/opt :retail_liquidity_indicator) admin/retail-liquidity-indicator-model-spec
   (ds/opt :system_event) admin/system-event-model-spec
   (ds/opt :security_directory) admin/security-directory-model-spec
   })

(def admin/admin-message-model-spec
  (ds/spec
    {:name ::admin/admin-message-model
     :spec admin/admin-message-model-data}))
