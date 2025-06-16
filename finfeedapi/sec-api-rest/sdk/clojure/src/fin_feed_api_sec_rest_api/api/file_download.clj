(ns fin-feed-api-sec-rest-api.api.file-download
  (:require [fin-feed-api-sec-rest-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [fin-feed-api-sec-rest-api.specs.dto/sec-filing-result-dto :refer :all]
            [fin-feed-api-sec-rest-api.specs.dto/filing-metadata-dto :refer :all]
            [fin-feed-api-sec-rest-api.specs.dto/filing-sort-by :refer :all]
            [fin-feed-api-sec-rest-api.specs.mvc/problem-details :refer :all]
            [fin-feed-api-sec-rest-api.specs.mvc/validation-problem-details :refer :all]
            [fin-feed-api-sec-rest-api.specs.dto/extractor-type :refer :all]
            )
  (:import (java.io File)))


(defn-spec v1-download-get-with-http-info any?
  "Download file from SEC EDGAR archive
  Downloads a specific file from the SEC EDGAR archive using the accession number and filename.
The file is streamed directly from the SEC servers to the client.

### Accession Number Format
Accession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)

### File Name Examples
- Primary documents: `d123456d10k.htm`, `d789012d8k.htm`
- XBRL files: `d123456d10k_htm.xml`, `FilingSummary.xml`
- Exhibits: `d123456dexhibit99.htm`, `d123456dex101.htm`

### File Types
The endpoint supports downloading various file types from SEC filings:
- HTML documents (.htm, .html)
- XBRL files (.xml, .xsd)
- Text files (.txt)
- PDF files (.pdf)
- Other document formats as submitted to SEC

:::tip
You can find available filenames for a specific filing using the `/v1/filings` endpoint first
:::

:::warning
This endpoint streams files directly from the SEC. Large files may take longer to download.
:::"
  [accession_no string?, file_name string?]
  (check-required-params accession_no file_name)
  (call-api "/v1/download" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"accession_no" accession_no "file_name" file_name }
             :form-params   {}
             :content-types []
             :accepts       ["application/octet-stream" "text/html" "application/xml" "text/plain" "application/pdf" "application/json"]
             :auth-names    ["APIKey" "JWT"]}))

(defn-spec v1-download-get any?
  "Download file from SEC EDGAR archive
  Downloads a specific file from the SEC EDGAR archive using the accession number and filename.
The file is streamed directly from the SEC servers to the client.

### Accession Number Format
Accession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)

### File Name Examples
- Primary documents: `d123456d10k.htm`, `d789012d8k.htm`
- XBRL files: `d123456d10k_htm.xml`, `FilingSummary.xml`
- Exhibits: `d123456dexhibit99.htm`, `d123456dex101.htm`

### File Types
The endpoint supports downloading various file types from SEC filings:
- HTML documents (.htm, .html)
- XBRL files (.xml, .xsd)
- Text files (.txt)
- PDF files (.pdf)
- Other document formats as submitted to SEC

:::tip
You can find available filenames for a specific filing using the `/v1/filings` endpoint first
:::

:::warning
This endpoint streams files directly from the SEC. Large files may take longer to download.
:::"
  [accession_no string?, file_name string?]
  (let [res (:data (v1-download-get-with-http-info accession_no file_name))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


