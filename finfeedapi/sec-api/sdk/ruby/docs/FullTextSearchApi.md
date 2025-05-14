# OpenapiClient::FullTextSearchApi

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_full_text_get**](FullTextSearchApi.md#v1_full_text_get) | **GET** /v1/full-text | Full-text search of SEC filing documents |


## v1_full_text_get

> <Array<DTOSecFilingResultDto>> v1_full_text_get(opts)

Full-text search of SEC filing documents

Search across SEC filing documents with advanced filtering and sorting capabilities.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FormType | Type of the filing document  FilingDate | Date when filing was submitted  CompanyName | Name of the company  CIK | Central Index Key  DocumentFilename | Name of the filing document  DocumentDescription | Description of the document    ### Search Options    Option | Description  --------|-------------  text_contains | Keywords that must appear in the document  text_not_contain | Keywords that must not appear in the document    ### Date Format  All dates must be provided in YYYY-MM-DD format    :::tip  Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches  :::    :::note  The search is case-insensitive and supports partial word matches  :::

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FullTextSearchApi.new
opts = {
  form_type: 'form_type_example', # String | Filter by form type (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
  filling_date_start: 'filling_date_start_example', # String | Filter by filling date start (inclusive), format YYYY-MM-DD
  filling_date_end: 'filling_date_end_example', # String | Filter by filling date end (inclusive), format YYYY-MM-DD
  text_contains: 'text_contains_example', # String | Keywords that the text must contain. Multiple values can be comma-separated
  text_not_contain: 'text_not_contain_example', # String | Keywords that the text must not contain. Multiple values can be comma-separated
  page_size: 56, # Integer | Number of results per page (default: 100)
  page_number: 56, # Integer | Page number to retrieve (default: 1)
  sort_by: 'sort_by_example', # String | Field to sort by (default: AccessionNumber)
  sort_order: 'sort_order_example' # String | Sort order (asc or desc). Defaults to asc
}

begin
  # Full-text search of SEC filing documents
  result = api_instance.v1_full_text_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FullTextSearchApi->v1_full_text_get: #{e}"
end
```

#### Using the v1_full_text_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DTOSecFilingResultDto>>, Integer, Hash)> v1_full_text_get_with_http_info(opts)

```ruby
begin
  # Full-text search of SEC filing documents
  data, status_code, headers = api_instance.v1_full_text_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DTOSecFilingResultDto>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FullTextSearchApi->v1_full_text_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_type** | **String** | Filter by form type (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional] |
| **filling_date_start** | **String** | Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] |
| **filling_date_end** | **String** | Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] |
| **text_contains** | **String** | Keywords that the text must contain. Multiple values can be comma-separated | [optional] |
| **text_not_contain** | **String** | Keywords that the text must not contain. Multiple values can be comma-separated | [optional] |
| **page_size** | **Integer** | Number of results per page (default: 100) | [optional] |
| **page_number** | **Integer** | Page number to retrieve (default: 1) | [optional] |
| **sort_by** | **String** | Field to sort by (default: AccessionNumber) | [optional][default to &#39;AccessionNumber&#39;] |
| **sort_order** | **String** | Sort order (asc or desc). Defaults to asc | [optional][default to &#39;asc&#39;] |

### Return type

[**Array&lt;DTOSecFilingResultDto&gt;**](DTOSecFilingResultDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

