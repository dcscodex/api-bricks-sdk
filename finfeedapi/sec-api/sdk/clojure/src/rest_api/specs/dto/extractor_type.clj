(ns rest-api.specs.dto/extractor-type
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def dto/extractor-type-data
  {
   })

(def dto/extractor-type-spec
  (ds/spec
    {:name ::dto/extractor-type
     :spec dto/extractor-type-data}))
