# OpenapiClient::FileDownloadApi

All URIs are relative to *https://api.sec.finfeedapi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_download_get**](FileDownloadApi.md#v1_download_get) | **GET** /v1/download | Download file from SEC EDGAR archive |


## v1_download_get

> v1_download_get(accession_no, file_name)

Download file from SEC EDGAR archive

Downloads a specific file from the SEC EDGAR archive using the accession number and filename. The file is streamed directly from the SEC servers to the client.  ### Accession Number Format Accession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)  ### File Name Examples - Primary documents: `d123456d10k.htm`, `d789012d8k.htm` - XBRL files: `d123456d10k_htm.xml`, `FilingSummary.xml` - Exhibits: `d123456dexhibit99.htm`, `d123456dex101.htm`  ### File Types The endpoint supports downloading various file types from SEC filings: - HTML documents (.htm, .html) - XBRL files (.xml, .xsd) - Text files (.txt) - PDF files (.pdf) - Other document formats as submitted to SEC  :::tip You can find available filenames for a specific filing using the `/v1/filings` endpoint first :::  :::warning This endpoint streams files directly from the SEC. Large files may take longer to download. :::

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::FileDownloadApi.new
accession_no = 'accession_no_example' # String | SEC filing accession number in format: 0000000000-00-000000
file_name = 'file_name_example' # String | Name of the file to download from the filing

begin
  # Download file from SEC EDGAR archive
  api_instance.v1_download_get(accession_no, file_name)
rescue OpenapiClient::ApiError => e
  puts "Error when calling FileDownloadApi->v1_download_get: #{e}"
end
```

#### Using the v1_download_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_download_get_with_http_info(accession_no, file_name)

```ruby
begin
  # Download file from SEC EDGAR archive
  data, status_code, headers = api_instance.v1_download_get_with_http_info(accession_no, file_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling FileDownloadApi->v1_download_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accession_no** | **String** | SEC filing accession number in format: 0000000000-00-000000 |  |
| **file_name** | **String** | Name of the file to download from the filing |  |

### Return type

nil (empty response body)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, text/html, application/xml, text/plain, application/pdf, application/json

