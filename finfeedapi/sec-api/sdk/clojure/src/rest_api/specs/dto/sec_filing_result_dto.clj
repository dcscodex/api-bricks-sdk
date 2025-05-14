(ns rest-api.specs.dto/sec-filing-result-dto
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def dto/sec-filing-result-dto-data
  {
   (ds/opt :accession_number) string?
   (ds/opt :form_type) string?
   (ds/opt :filing_date) inst?
   (ds/opt :company_name) string?
   (ds/opt :cik) int?
   (ds/opt :document_filename) string?
   (ds/opt :document_description) string?
   (ds/opt :source_file) string?
   })

(def dto/sec-filing-result-dto-spec
  (ds/spec
    {:name ::dto/sec-filing-result-dto
     :spec dto/sec-filing-result-dto-data}))
