(ns rest-api.api.full-text-search
  (:require [rest-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [rest-api.specs.dto/sec-filing-result-dto :refer :all]
            [rest-api.specs.dto/filing-metadata-dto :refer :all]
            [rest-api.specs.dto/filing-sort-by :refer :all]
            [rest-api.specs.mvc/problem-details :refer :all]
            [rest-api.specs.mvc/validation-problem-details :refer :all]
            [rest-api.specs.dto/extractor-type :refer :all]
            )
  (:import (java.io File)))


(defn-spec v1-full-text-get-with-http-info any?
  "Full-text search of SEC filing documents
  Search across SEC filing documents with advanced filtering and sorting capabilities.

### Available Sort Fields

Field Name | Description
-----------|-------------
AccessionNumber | SEC filing accession number
FormType | Type of the filing document
FilingDate | Date when filing was submitted
CompanyName | Name of the company
CIK | Central Index Key
DocumentFilename | Name of the filing document
DocumentDescription | Description of the document

### Search Options

Option | Description
--------|-------------
text_contains | Keywords that must appear in the document
text_not_contain | Keywords that must not appear in the document

### Date Format
All dates must be provided in YYYY-MM-DD format

:::tip
Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches
:::

:::note
The search is case-insensitive and supports partial word matches
:::"
  ([] (v1-full-text-get-with-http-info nil))
  ([{:keys [form_type filling_date_start filling_date_end text_contains text_not_contain page_size page_number sort_by sort_order]} (s/map-of keyword? any?)]
   (call-api "/v1/full-text" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"form_type" form_type "filling_date_start" filling_date_start "filling_date_end" filling_date_end "text_contains" text_contains "text_not_contain" text_not_contain "page_size" page_size "page_number" page_number "sort_by" sort_by "sort_order" sort_order }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec v1-full-text-get (s/coll-of dto/sec-filing-result-dto-spec)
  "Full-text search of SEC filing documents
  Search across SEC filing documents with advanced filtering and sorting capabilities.

### Available Sort Fields

Field Name | Description
-----------|-------------
AccessionNumber | SEC filing accession number
FormType | Type of the filing document
FilingDate | Date when filing was submitted
CompanyName | Name of the company
CIK | Central Index Key
DocumentFilename | Name of the filing document
DocumentDescription | Description of the document

### Search Options

Option | Description
--------|-------------
text_contains | Keywords that must appear in the document
text_not_contain | Keywords that must not appear in the document

### Date Format
All dates must be provided in YYYY-MM-DD format

:::tip
Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches
:::

:::note
The search is case-insensitive and supports partial word matches
:::"
  ([] (v1-full-text-get nil))
  ([optional-params any?]
   (let [res (:data (v1-full-text-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dto/sec-filing-result-dto-spec) res st/string-transformer)
        res))))


