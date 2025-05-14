(ns rest-api.api.content-extraction
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


(defn-spec v1-extractor-get-with-http-info any?
  "Extract and classify SEC filing content
  Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.

### Supported Form Types

Form Type | Description
----------|------------
8-K      | Current report filing
10-K     | Annual report filing
10-Q     | Quarterly report filing

### Content Classification
- 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01)
- 10-K/10-Q forms: Items categorized by their respective part and item structure

:::note
Both HTML and plain text documents are supported for content extraction.
:::"
  ([accession_number string?, ] (v1-extractor-get-with-http-info accession_number nil))
  ([accession_number string?, {:keys [type]} (s/map-of keyword? any?)]
   (check-required-params accession_number)
   (call-api "/v1/extractor" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"accession_number" accession_number "type" type }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec v1-extractor-get dto/filing-extract-result-dto-spec
  "Extract and classify SEC filing content
  Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.

### Supported Form Types

Form Type | Description
----------|------------
8-K      | Current report filing
10-K     | Annual report filing
10-Q     | Quarterly report filing

### Content Classification
- 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01)
- 10-K/10-Q forms: Items categorized by their respective part and item structure

:::note
Both HTML and plain text documents are supported for content extraction.
:::"
  ([accession_number string?, ] (v1-extractor-get accession_number nil))
  ([accession_number string?, optional-params any?]
   (let [res (:data (v1-extractor-get-with-http-info accession_number optional-params))]
     (if (:decode-models *api-context*)
        (st/decode dto/filing-extract-result-dto-spec res st/string-transformer)
        res))))


(defn-spec v1-extractor-item-get-with-http-info any?
  "Extract specific item content from SEC filing
  Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.

### Item Number Format

Form Type | Item Format Examples
-----------|-------------------
8-K       | 1.01, 2.01, 7.01
10-K      | 1, 2, 3
10-K/10-Q | PartI 1, PartII 2

:::tip
For best results, ensure the item number matches exactly with the filing's structure.
:::"
  ([accession_number string?, item_number string?, ] (v1-extractor-item-get-with-http-info accession_number item_number nil))
  ([accession_number string?, item_number string?, {:keys [type]} (s/map-of keyword? any?)]
   (check-required-params accession_number item_number)
   (call-api "/v1/extractor/item" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"accession_number" accession_number "item_number" item_number "type" type }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec v1-extractor-item-get string?
  "Extract specific item content from SEC filing
  Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.

### Item Number Format

Form Type | Item Format Examples
-----------|-------------------
8-K       | 1.01, 2.01, 7.01
10-K      | 1, 2, 3
10-K/10-Q | PartI 1, PartII 2

:::tip
For best results, ensure the item number matches exactly with the filing's structure.
:::"
  ([accession_number string?, item_number string?, ] (v1-extractor-item-get accession_number item_number nil))
  ([accession_number string?, item_number string?, optional-params any?]
   (let [res (:data (v1-extractor-item-get-with-http-info accession_number item_number optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


