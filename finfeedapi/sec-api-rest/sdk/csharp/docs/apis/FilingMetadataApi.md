# APIBricks.FinFeedAPI.SECAPI.REST.V1.Api.FilingMetadataApi

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1FilingsGet**](FilingMetadataApi.md#v1filingsget) | **GET** /v1/filings | Query SEC filing metadata |

<a id="v1filingsget"></a>
# **V1FilingsGet**
> List&lt;DTOFilingMetadataDto&gt; V1FilingsGet (long cik = null, string ticker = null, string formType = null, string fillingDateStart = null, string fillingDateEnd = null, string reportDateStart = null, string reportDateEnd = null, string itemsContain = null, int pageSize = null, int pageNumber = null, DTOFilingSortBy sortBy = null, string sortOrder = null)

Query SEC filing metadata

Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.    ### Available Sort Fields    Field Name | Description  - -- -- -- -- --|- -- -- -- -- -- --  AccessionNumber | SEC filing accession number  FilingDate | Date when filing was submitted  AcceptanceDateTime | Date and time of filing acceptance  ReportDate | Date of the report  Size | Size of the filing document    ### Date Format  All dates must be provided in YYYY-MM-DD format    ### Form Types  Form types can be provided as comma-separated values, e.g.: \"10-K,8-K,10-Q\"    :::tip  For optimal performance, use date ranges and form types to narrow down your search  :::

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.FinFeedAPI.SECAPI.REST.V1.Api;
using APIBricks.FinFeedAPI.SECAPI.REST.V1.Client;
using APIBricks.FinFeedAPI.SECAPI.REST.V1.Model;

namespace Example
{
    public class V1FilingsGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api-historical.sec.finfeedapi.com";
            var apiInstance = new FilingMetadataApi(config);
            var cik = 789L;  // long | Filter by Central Index Key (CIK) (optional) 
            var ticker = "ticker_example";  // string | Filter by stock ticker symbol (optional) 
            var formType = "formType_example";  // string | Filter by form type(s) (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated (optional) 
            var fillingDateStart = "fillingDateStart_example";  // string | Filter by filling date start (inclusive), format YYYY-MM-DD (optional) 
            var fillingDateEnd = "fillingDateEnd_example";  // string | Filter by filling date end (inclusive), format YYYY-MM-DD (optional) 
            var reportDateStart = "reportDateStart_example";  // string | Filter by report date start (inclusive), format YYYY-MM-DD (optional) 
            var reportDateEnd = "reportDateEnd_example";  // string | Filter by report date end (inclusive), format YYYY-MM-DD (optional) 
            var itemsContain = "itemsContain_example";  // string | Filter filings where the 'Items' field contains the specified text (optional) 
            var pageSize = 56;  // int | Number of results per page (default: 50, max: 200) (optional) 
            var pageNumber = 56;  // int | Page number to retrieve (default: 1) (optional) 
            var sortBy = (DTOFilingSortBy) "AccessionNumber";  // DTOFilingSortBy | Field to sort results by (default: AccessionNumber) (optional) 
            var sortOrder = "\"desc\"";  // string | Sort order (asc or desc, default: desc) (optional)  (default to "desc")

            try
            {
                // Query SEC filing metadata
                List<DTOFilingMetadataDto> result = apiInstance.V1FilingsGet(cik, ticker, formType, fillingDateStart, fillingDateEnd, reportDateStart, reportDateEnd, itemsContain, pageSize, pageNumber, sortBy, sortOrder);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling FilingMetadataApi.V1FilingsGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1FilingsGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Query SEC filing metadata
    ApiResponse<List<DTOFilingMetadataDto>> response = apiInstance.V1FilingsGetWithHttpInfo(cik, ticker, formType, fillingDateStart, fillingDateEnd, reportDateStart, reportDateEnd, itemsContain, pageSize, pageNumber, sortBy, sortOrder);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling FilingMetadataApi.V1FilingsGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **cik** | **long** | Filter by Central Index Key (CIK) | [optional]  |
| **ticker** | **string** | Filter by stock ticker symbol | [optional]  |
| **formType** | **string** | Filter by form type(s) (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional]  |
| **fillingDateStart** | **string** | Filter by filling date start (inclusive), format YYYY-MM-DD | [optional]  |
| **fillingDateEnd** | **string** | Filter by filling date end (inclusive), format YYYY-MM-DD | [optional]  |
| **reportDateStart** | **string** | Filter by report date start (inclusive), format YYYY-MM-DD | [optional]  |
| **reportDateEnd** | **string** | Filter by report date end (inclusive), format YYYY-MM-DD | [optional]  |
| **itemsContain** | **string** | Filter filings where the &#39;Items&#39; field contains the specified text | [optional]  |
| **pageSize** | **int** | Number of results per page (default: 50, max: 200) | [optional]  |
| **pageNumber** | **int** | Page number to retrieve (default: 1) | [optional]  |
| **sortBy** | **DTOFilingSortBy** | Field to sort results by (default: AccessionNumber) | [optional]  |
| **sortOrder** | **string** | Sort order (asc or desc, default: desc) | [optional] [default to &quot;desc&quot;] |

### Return type

[**List&lt;DTOFilingMetadataDto&gt;**](DTOFilingMetadataDto.md)

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

