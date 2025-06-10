(ns rest-api.specs.v1/order-book-base
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [rest-api.specs. :refer :all]
            [rest-api.specs. :refer :all]
            )
  (:import (java.io File)))


(def v1/order-book-base-data
  {
   (ds/opt :symbol_id) string?
   (ds/opt :time_exchange) inst?
   (ds/opt :time_coinapi) inst?
   (ds/opt :asks) any-type-spec
   (ds/opt :bids) any-type-spec
   })

(def v1/order-book-base-spec
  (ds/spec
    {:name ::v1/order-book-base
     :spec v1/order-book-base-data}))
