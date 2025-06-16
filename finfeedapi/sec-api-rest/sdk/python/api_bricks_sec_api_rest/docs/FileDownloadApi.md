# api_bricks_sec_api_rest.FileDownloadApi

All URIs are relative to *https://api.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_download_get**](FileDownloadApi.md#v1_download_get) | **GET** /v1/download | Download file from SEC EDGAR archive


# **v1_download_get**
> v1_download_get(accession_no, file_name)

Download file from SEC EDGAR archive

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
:::

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_sec_api_rest
from api_bricks_sec_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.sec.finfeedapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_sec_api_rest.Configuration(
    host = "https://api.sec.finfeedapi.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_sec_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_sec_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_sec_api_rest.FileDownloadApi(api_client)
    accession_no = 'accession_no_example' # str | SEC filing accession number in format: 0000000000-00-000000
    file_name = 'file_name_example' # str | Name of the file to download from the filing

    try:
        # Download file from SEC EDGAR archive
        api_instance.v1_download_get(accession_no, file_name)
    except Exception as e:
        print("Exception when calling FileDownloadApi->v1_download_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accession_no** | **str**| SEC filing accession number in format: 0000000000-00-000000 | 
 **file_name** | **str**| Name of the file to download from the filing | 

### Return type

void (empty response body)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, text/html, application/xml, text/plain, application/pdf, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | File downloaded successfully |  -  |
**400** | Invalid request parameters |  -  |
**404** | Filing or file not found |  -  |
**500** | Server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

