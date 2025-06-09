# APIBricks.FinFeedAPI.SECAPI.REST.V1.Api.FullTextSearchApi

All URIs are relative to *https://api.sec.finfeedapi.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1FullTextGet**](FullTextSearchApi.md#v1fulltextget) | **GET** /v1/full-text | Full-text search of SEC filing documents |

<a id="v1fulltextget"></a>
# **V1FullTextGet**
> List&lt;DTOSecFilingResultDto&gt; V1FullTextGet (string formType = null, string fillingDateStart = null, string fillingDateEnd = null, string textContains = null, string textNotContain = null, int pageSize = null, int pageNumber = null, string sortBy = null, string sortOrder = null)

Full-text search of SEC filing documents

Search across SEC filing documents with advanced filtering and sorting capabilities.    ### Available Sort Fields    Field Name | Description  - -- -- -- -- --|- -- -- -- -- -- --  AccessionNumber | SEC filing accession number  FormType | Type of the filing document  FilingDate | Date when filing was submitted  CompanyName | Name of the company  CIK | Central Index Key  DocumentFilename | Name of the filing document  DocumentDescription | Description of the document    ### Search Options    Option | Description  - -- -- -- -|- -- -- -- -- -- --  text_contains | Keywords that must appear in the document  text_not_contain | Keywords that must not appear in the document    ### Date Format  All dates must be provided in YYYY-MM-DD format    :::tip  Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches  :::    :::note  The search is case-insensitive and supports partial word matches  :::

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.FinFeedAPI.SECAPI.REST.V1.Api;
using APIBricks.FinFeedAPI.SECAPI.REST.V1.Client;
using APIBricks.FinFeedAPI.SECAPI.REST.V1.Model;

namespace Example
{
    public class V1FullTextGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.sec.finfeedapi.com";
            var apiInstance = new FullTextSearchApi(config);
            var formType = "formType_example";  // string | Filter by form type (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated (optional) 
            var fillingDateStart = "fillingDateStart_example";  // string | Filter by filling date start (inclusive), format YYYY-MM-DD (optional) 
            var fillingDateEnd = "fillingDateEnd_example";  // string | Filter by filling date end (inclusive), format YYYY-MM-DD (optional) 
            var textContains = "textContains_example";  // string | Keywords that the text must contain. Multiple values can be comma-separated (optional) 
            var textNotContain = "textNotContain_example";  // string | Keywords that the text must not contain. Multiple values can be comma-separated (optional) 
            var pageSize = 56;  // int | Number of results per page (default: 100) (optional) 
            var pageNumber = 56;  // int | Page number to retrieve (default: 1) (optional) 
            var sortBy = "\"AccessionNumber\"";  // string | Field to sort by (default: AccessionNumber) (optional)  (default to "AccessionNumber")
            var sortOrder = "\"asc\"";  // string | Sort order (asc or desc). Defaults to asc (optional)  (default to "asc")

            try
            {
                // Full-text search of SEC filing documents
                List<DTOSecFilingResultDto> result = apiInstance.V1FullTextGet(formType, fillingDateStart, fillingDateEnd, textContains, textNotContain, pageSize, pageNumber, sortBy, sortOrder);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling FullTextSearchApi.V1FullTextGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1FullTextGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Full-text search of SEC filing documents
    ApiResponse<List<DTOSecFilingResultDto>> response = apiInstance.V1FullTextGetWithHttpInfo(formType, fillingDateStart, fillingDateEnd, textContains, textNotContain, pageSize, pageNumber, sortBy, sortOrder);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling FullTextSearchApi.V1FullTextGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **formType** | **string** | Filter by form type (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional]  |
| **fillingDateStart** | **string** | Filter by filling date start (inclusive), format YYYY-MM-DD | [optional]  |
| **fillingDateEnd** | **string** | Filter by filling date end (inclusive), format YYYY-MM-DD | [optional]  |
| **textContains** | **string** | Keywords that the text must contain. Multiple values can be comma-separated | [optional]  |
| **textNotContain** | **string** | Keywords that the text must not contain. Multiple values can be comma-separated | [optional]  |
| **pageSize** | **int** | Number of results per page (default: 100) | [optional]  |
| **pageNumber** | **int** | Page number to retrieve (default: 1) | [optional]  |
| **sortBy** | **string** | Field to sort by (default: AccessionNumber) | [optional] [default to &quot;AccessionNumber&quot;] |
| **sortOrder** | **string** | Sort order (asc or desc). Defaults to asc | [optional] [default to &quot;asc&quot;] |

### Return type

[**List&lt;DTOSecFilingResultDto&gt;**](DTOSecFilingResultDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful operation |  -  |
| **400** | Invalid request |  -  |
| **500** | Server error |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

