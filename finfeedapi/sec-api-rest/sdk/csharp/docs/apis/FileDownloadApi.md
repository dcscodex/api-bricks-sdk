# APIBricks.FinFeedAPI.SECAPI.REST.V1.Api.FileDownloadApi

All URIs are relative to *https://api.sec.finfeedapi.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1DownloadGet**](FileDownloadApi.md#v1downloadget) | **GET** /v1/download | Download file from SEC EDGAR archive |

<a id="v1downloadget"></a>
# **V1DownloadGet**
> void V1DownloadGet (string accessionNo, string fileName)

Download file from SEC EDGAR archive

Downloads a specific file from the SEC EDGAR archive using the accession number and filename. The file is streamed directly from the SEC servers to the client.  ### Accession Number Format Accession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)  ### File Name Examples - Primary documents: `d123456d10k.htm`, `d789012d8k.htm` - XBRL files: `d123456d10k_htm.xml`, `FilingSummary.xml` - Exhibits: `d123456dexhibit99.htm`, `d123456dex101.htm`  ### File Types The endpoint supports downloading various file types from SEC filings: - HTML documents (.htm, .html) - XBRL files (.xml, .xsd) - Text files (.txt) - PDF files (.pdf) - Other document formats as submitted to SEC  :::tip You can find available filenames for a specific filing using the `/v1/filings` endpoint first :::  :::warning This endpoint streams files directly from the SEC. Large files may take longer to download. :::

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.FinFeedAPI.SECAPI.REST.V1.Api;
using APIBricks.FinFeedAPI.SECAPI.REST.V1.Client;
using APIBricks.FinFeedAPI.SECAPI.REST.V1.Model;

namespace Example
{
    public class V1DownloadGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.sec.finfeedapi.com";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure Bearer token for authorization: JWT
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new FileDownloadApi(config);
            var accessionNo = "accessionNo_example";  // string | SEC filing accession number in format: 0000000000-00-000000
            var fileName = "fileName_example";  // string | Name of the file to download from the filing

            try
            {
                // Download file from SEC EDGAR archive
                apiInstance.V1DownloadGet(accessionNo, fileName);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling FileDownloadApi.V1DownloadGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1DownloadGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Download file from SEC EDGAR archive
    apiInstance.V1DownloadGetWithHttpInfo(accessionNo, fileName);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling FileDownloadApi.V1DownloadGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accessionNo** | **string** | SEC filing accession number in format: 0000000000-00-000000 |  |
| **fileName** | **string** | Name of the file to download from the filing |  |

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
| **200** | File downloaded successfully |  -  |
| **400** | Invalid request parameters |  -  |
| **404** | Filing or file not found |  -  |
| **500** | Server error |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

