(ns rest-api.api.filing-metadata
  (:require [rest-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [rest-api.specs.dto/sec-filing-result-dto :refer :all]
            [rest-api.specs.dto/filing-metadata-dto :refer :all]
            [rest-api.specs.dto/filing-sort-by :refer :all]
            [rest-api.specs.mvc/problem-details :refer :all]
            [rest-api.specs.dto/filing-extract-result-dto :refer :all]
            [rest-api.specs.mvc/validation-problem-details :refer :all]
            [rest-api.specs.dto/filing-item-dto :refer :all]
            [rest-api.specs.dto/extractor-type :refer :all]
            )
  (:import (java.io File)))


(defn-spec v1-filings-get-with-http-info any?
  "Query SEC filing metadata
  Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.

### Available Sort Fields

Field Name | Description
-----------|-------------
AccessionNumber | SEC filing accession number
FilingDate | Date when filing was submitted
AcceptanceDateTime | Date and time of filing acceptance
ReportDate | Date of the report
Size | Size of the filing document

### Date Format
All dates must be provided in YYYY-MM-DD format

### Form Types
Form types can be provided as comma-separated values, e.g.: \"10-K,8-K,10-Q\"

:::tip
For optimal performance, use date ranges and form types to narrow down your search
:::"
  ([] (v1-filings-get-with-http-info nil))
  ([{:keys [cik form_type filling_date_start filling_date_end report_date_start report_date_end items_contain page_size page_number sort_by sort_order]} (s/map-of keyword? any?)]
   (call-api "/v1/filings" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"cik" cik "form_type" form_type "filling_date_start" filling_date_start "filling_date_end" filling_date_end "report_date_start" report_date_start "report_date_end" report_date_end "items_contain" items_contain "page_size" page_size "page_number" page_number "sort_by" sort_by "sort_order" sort_order }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec v1-filings-get (s/coll-of dto/filing-metadata-dto-spec)
  "Query SEC filing metadata
  Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.

### Available Sort Fields

Field Name | Description
-----------|-------------
AccessionNumber | SEC filing accession number
FilingDate | Date when filing was submitted
AcceptanceDateTime | Date and time of filing acceptance
ReportDate | Date of the report
Size | Size of the filing document

### Date Format
All dates must be provided in YYYY-MM-DD format

### Form Types
Form types can be provided as comma-separated values, e.g.: \"10-K,8-K,10-Q\"

:::tip
For optimal performance, use date ranges and form types to narrow down your search
:::"
  ([] (v1-filings-get nil))
  ([optional-params any?]
   (let [res (:data (v1-filings-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dto/filing-metadata-dto-spec) res st/string-transformer)
        res))))


