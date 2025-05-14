(ns rest-api.specs.dto/filing-sort-by
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def dto/filing-sort-by-data
  {
   })

(def dto/filing-sort-by-spec
  (ds/spec
    {:name ::dto/filing-sort-by
     :spec dto/filing-sort-by-data}))
