# OpenapiClient::FilingMetadataApi

All URIs are relative to *https://api.sec.finfeedapi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_filings_get**](FilingMetadataApi.md#v1_filings_get) | **GET** /v1/filings | Query SEC filing metadata |


## v1_filings_get

> <Array<DTOFilingMetadataDto>> v1_filings_get(opts)

Query SEC filing metadata

Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FilingDate | Date when filing was submitted  AcceptanceDateTime | Date and time of filing acceptance  ReportDate | Date of the report  Size | Size of the filing document    ### Date Format  All dates must be provided in YYYY-MM-DD format    ### Form Types  Form types can be provided as comma-separated values, e.g.: \"10-K,8-K,10-Q\"    :::tip  For optimal performance, use date ranges and form types to narrow down your search  :::

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FilingMetadataApi.new
opts = {
  cik: 789, # Integer | Filter by Central Index Key (CIK)
  ticker: 'ticker_example', # String | Filter by stock ticker symbol
  form_type: 'form_type_example', # String | Filter by form type(s) (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
  filling_date_start: 'filling_date_start_example', # String | Filter by filling date start (inclusive), format YYYY-MM-DD
  filling_date_end: 'filling_date_end_example', # String | Filter by filling date end (inclusive), format YYYY-MM-DD
  report_date_start: 'report_date_start_example', # String | Filter by report date start (inclusive), format YYYY-MM-DD
  report_date_end: 'report_date_end_example', # String | Filter by report date end (inclusive), format YYYY-MM-DD
  items_contain: 'items_contain_example', # String | Filter filings where the 'Items' field contains the specified text
  page_size: 56, # Integer | Number of results per page (default: 50, max: 200)
  page_number: 56, # Integer | Page number to retrieve (default: 1)
  sort_by: OpenapiClient::DTOFilingSortBy::ACCESSION_NUMBER, # DTOFilingSortBy | Field to sort results by (default: AccessionNumber)
  sort_order: 'sort_order_example' # String | Sort order (asc or desc, default: desc)
}

begin
  # Query SEC filing metadata
  result = api_instance.v1_filings_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FilingMetadataApi->v1_filings_get: #{e}"
end
```

#### Using the v1_filings_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DTOFilingMetadataDto>>, Integer, Hash)> v1_filings_get_with_http_info(opts)

```ruby
begin
  # Query SEC filing metadata
  data, status_code, headers = api_instance.v1_filings_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DTOFilingMetadataDto>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FilingMetadataApi->v1_filings_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cik** | **Integer** | Filter by Central Index Key (CIK) | [optional] |
| **ticker** | **String** | Filter by stock ticker symbol | [optional] |
| **form_type** | **String** | Filter by form type(s) (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional] |
| **filling_date_start** | **String** | Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] |
| **filling_date_end** | **String** | Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] |
| **report_date_start** | **String** | Filter by report date start (inclusive), format YYYY-MM-DD | [optional] |
| **report_date_end** | **String** | Filter by report date end (inclusive), format YYYY-MM-DD | [optional] |
| **items_contain** | **String** | Filter filings where the &#39;Items&#39; field contains the specified text | [optional] |
| **page_size** | **Integer** | Number of results per page (default: 50, max: 200) | [optional] |
| **page_number** | **Integer** | Page number to retrieve (default: 1) | [optional] |
| **sort_by** | [**DTOFilingSortBy**](.md) | Field to sort results by (default: AccessionNumber) | [optional] |
| **sort_order** | **String** | Sort order (asc or desc, default: desc) | [optional][default to &#39;desc&#39;] |

### Return type

[**Array&lt;DTOFilingMetadataDto&gt;**](DTOFilingMetadataDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

