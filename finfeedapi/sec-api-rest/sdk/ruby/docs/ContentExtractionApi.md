# OpenapiClient::ContentExtractionApi

All URIs are relative to *https://api.sec.finfeedapi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_extractor_get**](ContentExtractionApi.md#v1_extractor_get) | **GET** /v1/extractor | Extract and classify SEC filing content |
| [**v1_extractor_item_get**](ContentExtractionApi.md#v1_extractor_item_get) | **GET** /v1/extractor/item | Extract specific item content from SEC filing |


## v1_extractor_get

> Hash&lt;String, Object&gt; v1_extractor_get(accession_number, opts)

Extract and classify SEC filing content

Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.    ### Supported Form Types    Form Type | Description  ----------|------------  8-K      | Current report filing  10-K     | Annual report filing  10-Q     | Quarterly report filing    ### Content Classification  - 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01)  - 10-K/10-Q forms: Items categorized by their respective part and item structure    :::note  Both HTML and plain text documents are supported for content extraction.  :::

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::ContentExtractionApi.new
accession_number = 'accession_number_example' # String | The SEC filing accession number used to retrieve the filing from EDGAR database.
opts = {
  type: OpenapiClient::DTOExtractorType::TEXT # DTOExtractorType | Result type (text or html, default: text)
}

begin
  # Extract and classify SEC filing content
  result = api_instance.v1_extractor_get(accession_number, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContentExtractionApi->v1_extractor_get: #{e}"
end
```

#### Using the v1_extractor_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> v1_extractor_get_with_http_info(accession_number, opts)

```ruby
begin
  # Extract and classify SEC filing content
  data, status_code, headers = api_instance.v1_extractor_get_with_http_info(accession_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContentExtractionApi->v1_extractor_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accession_number** | **String** | The SEC filing accession number used to retrieve the filing from EDGAR database. |  |
| **type** | [**DTOExtractorType**](.md) | Result type (text or html, default: text) | [optional] |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_extractor_item_get

> String v1_extractor_item_get(accession_number, item_number, opts)

Extract specific item content from SEC filing

Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.    ### Item Number Format    Form Type | Item Format Examples  -----------|-------------------  8-K       | 1.01, 2.01, 7.01  10-K      | 1, 2, 3  10-K/10-Q | PartI 1, PartII 2    :::tip  For best results, ensure the item number matches exactly with the filing's structure.  :::

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::ContentExtractionApi.new
accession_number = 'accession_number_example' # String | The SEC filing accession number used to retrieve the filing from EDGAR database.
item_number = 'item_number_example' # String | The specific item number to extract (e.g., \"1.01\", \"2.01\", \"7.01\").
opts = {
  type: OpenapiClient::DTOExtractorType::TEXT # DTOExtractorType | Result type (text or html, default: text)
}

begin
  # Extract specific item content from SEC filing
  result = api_instance.v1_extractor_item_get(accession_number, item_number, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContentExtractionApi->v1_extractor_item_get: #{e}"
end
```

#### Using the v1_extractor_item_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> v1_extractor_item_get_with_http_info(accession_number, item_number, opts)

```ruby
begin
  # Extract specific item content from SEC filing
  data, status_code, headers = api_instance.v1_extractor_item_get_with_http_info(accession_number, item_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContentExtractionApi->v1_extractor_item_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accession_number** | **String** | The SEC filing accession number used to retrieve the filing from EDGAR database. |  |
| **item_number** | **String** | The specific item number to extract (e.g., \&quot;1.01\&quot;, \&quot;2.01\&quot;, \&quot;7.01\&quot;). |  |
| **type** | [**DTOExtractorType**](.md) | Result type (text or html, default: text) | [optional] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

