(ns rest-api.specs.dto/filing-metadata-dto
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def dto/filing-metadata-dto-data
  {
   (ds/opt :cik) int?
   (ds/opt :accession_number) string?
   (ds/opt :filing_date) inst?
   (ds/opt :report_date) inst?
   (ds/opt :acceptance_date_time) inst?
   (ds/opt :act) string?
   (ds/opt :form) string?
   (ds/opt :file_number) string?
   (ds/opt :film_number) string?
   (ds/opt :items) string?
   (ds/opt :core_type) string?
   (ds/opt :size) int?
   (ds/opt :is_xbrl) boolean?
   (ds/opt :is_inline_xbrl) boolean?
   (ds/opt :primary_document) string?
   (ds/opt :primary_doc_description) string?
   (ds/opt :source_file) string?
   })

(def dto/filing-metadata-dto-spec
  (ds/spec
    {:name ::dto/filing-metadata-dto
     :spec dto/filing-metadata-dto-data}))
