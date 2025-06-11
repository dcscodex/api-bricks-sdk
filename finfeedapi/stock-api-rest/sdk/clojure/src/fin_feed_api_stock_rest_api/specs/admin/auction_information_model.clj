(ns fin-feed-api-stock-rest-api.specs.admin/auction-information-model
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def admin/auction-information-model-data
  {
   (ds/opt :symbol) string?
   (ds/opt :timestamp_nanos) int?
   (ds/opt :timestamp) inst?
   (ds/opt :auction_type) int?
   (ds/opt :auction_type_code) string?
   (ds/opt :auction_type_text) string?
   (ds/opt :is_auction_type_opening) boolean?
   (ds/opt :is_auction_type_closing) boolean?
   (ds/opt :is_auction_type_ipo) boolean?
   (ds/opt :is_auction_type_halt) boolean?
   (ds/opt :is_auction_type_volatility) boolean?
   (ds/opt :paired_shares) int?
   (ds/opt :reference_price) float?
   (ds/opt :indicative_clearing_price) float?
   (ds/opt :imbalance_shares) int?
   (ds/opt :imbalance_side) int?
   (ds/opt :imbalance_side_code) string?
   (ds/opt :imbalance_side_text) string?
   (ds/opt :is_imbalance_side_buy) boolean?
   (ds/opt :is_imbalance_side_sell) boolean?
   (ds/opt :is_imbalance_side_none) boolean?
   (ds/opt :extension_number) int?
   (ds/opt :scheduled_auction_time_seconds) int?
   (ds/opt :scheduled_auction_time) inst?
   (ds/opt :auction_book_clearing_price) float?
   (ds/opt :collar_reference_price) float?
   (ds/opt :lower_auction_collar) float?
   (ds/opt :upper_auction_collar) float?
   })

(def admin/auction-information-model-spec
  (ds/spec
    {:name ::admin/auction-information-model
     :spec admin/auction-information-model-data}))
