(ns rest-api.specs.dto/filing-extract-result-dto
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [rest-api.specs.dto/filing-item-dto :refer :all]
            )
  (:import (java.io File)))


(def dto/filing-extract-result-dto-data
  {
   (ds/opt :accession_number) string?
   (ds/opt :form_type) string?
   (ds/opt :items) (s/coll-of dto/filing-item-dto-spec)
   })

(def dto/filing-extract-result-dto-spec
  (ds/spec
    {:name ::dto/filing-extract-result-dto
     :spec dto/filing-extract-result-dto-data}))
