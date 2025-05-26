# OpenapiClient::XBRLConversionApi

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_xbrl_converter_get**](XBRLConversionApi.md#v1_xbrl_converter_get) | **GET** /v1/xbrl-converter | Convert XBRL data to JSON format |


## v1_xbrl_converter_get

> Hash&lt;String, Object&gt; v1_xbrl_converter_get(opts)

Convert XBRL data to JSON format

Converts XBRL data to JSON format using one of three possible input methods.    ### Input Methods    1. HTML URL (htm-url)     - URL of the filing ending with .htm or .html     - Both filing URLs and index page URLs are accepted     - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231.htm    2. XBRL URL (xbrl-url)     - URL of the XBRL file ending with .xml     - Can be found in the dataFiles array from Query API     - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231_htm.xml    3. Accession Number (accession-no)     - The SEC filing accession number     - Example: 0001564590-21-004599    :::note  Only one of the three parameters should be provided. If multiple parameters are provided, the priority order is:  1. htm-url  2. xbrl-url  3. accession-no  :::    ### Supported Filing Types    - Annual Reports (10-K)  - Quarterly Reports (10-Q)  - Current Reports (8-K)  - Registration Statements (S-1, S-3)  - Foreign Private Issuer Reports (20-F, 40-F)    ### Response Format    The API returns a JSON object containing:  - Financial statements (Income Statement, Balance Sheet, Cash Flow Statement)  - Accounting policies and footnotes  - Company information  - Filing metadata    ### Example Response  ```json  {    \"StatementsOfIncome\": {      \"RevenueFromContractWithCustomerExcludingAssessedTax\": [        {          \"decimals\": \"-6\",          \"unitRef\": \"U_USD\",          \"period\": {            \"startDate\": \"2023-07-01\",            \"endDate\": \"2024-06-30\"          },          \"value\": \"245122000000\"        }      ]    }  }  ```

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::XBRLConversionApi.new
opts = {
  htm_url: 'htm_url_example', # String | URL of the filing ending with .htm or .html
  xbrl_url: 'xbrl_url_example', # String | URL of the XBRL file ending with .xml
  accession_no: 'accession_no_example' # String | SEC filing accession number
}

begin
  # Convert XBRL data to JSON format
  result = api_instance.v1_xbrl_converter_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling XBRLConversionApi->v1_xbrl_converter_get: #{e}"
end
```

#### Using the v1_xbrl_converter_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> v1_xbrl_converter_get_with_http_info(opts)

```ruby
begin
  # Convert XBRL data to JSON format
  data, status_code, headers = api_instance.v1_xbrl_converter_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue OpenapiClient::ApiError => e
  puts "Error when calling XBRLConversionApi->v1_xbrl_converter_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **htm_url** | **String** | URL of the filing ending with .htm or .html | [optional] |
| **xbrl_url** | **String** | URL of the XBRL file ending with .xml | [optional] |
| **accession_no** | **String** | SEC filing accession number | [optional] |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

