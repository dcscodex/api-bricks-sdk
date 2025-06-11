(ns fin-feed-api-stock-rest-api.specs.level3/order-book-model
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [fin-feed-api-stock-rest-api.specs.level3/add-order-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.level3/delete-order-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.level3/modify-order-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.level3/executed-order-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.level3/clear-book-model :refer :all]
            )
  (:import (java.io File)))


(def level3/order-book-model-data
  {
   (ds/opt :add_order) level3/add-order-model-spec
   (ds/opt :delete_order) level3/delete-order-model-spec
   (ds/opt :modify_order) level3/modify-order-model-spec
   (ds/opt :executed_order) level3/executed-order-model-spec
   (ds/opt :clear_book) level3/clear-book-model-spec
   })

(def level3/order-book-model-spec
  (ds/spec
    {:name ::level3/order-book-model
     :spec level3/order-book-model-data}))
