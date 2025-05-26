# APIBricks.FinFeedAPI.SECAPI.REST.V1.Api.ContentExtractionApi

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1ExtractorGet**](ContentExtractionApi.md#v1extractorget) | **GET** /v1/extractor | Extract and classify SEC filing content |
| [**V1ExtractorItemGet**](ContentExtractionApi.md#v1extractoritemget) | **GET** /v1/extractor/item | Extract specific item content from SEC filing |

<a id="v1extractorget"></a>
# **V1ExtractorGet**
> Dictionary&lt;string, Object&gt; V1ExtractorGet (string accessionNumber, DTOExtractorType type = null)

Extract and classify SEC filing content

Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.    ### Supported Form Types    Form Type | Description  - -- -- -- -- -|- -- -- -- -- -- -  8-K      | Current report filing  10-K     | Annual report filing  10-Q     | Quarterly report filing    ### Content Classification  - 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01)  - 10-K/10-Q forms: Items categorized by their respective part and item structure    :::note  Both HTML and plain text documents are supported for content extraction.  :::

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.FinFeedAPI.SECAPI.REST.V1.Api;
using APIBricks.FinFeedAPI.SECAPI.REST.V1.Client;
using APIBricks.FinFeedAPI.SECAPI.REST.V1.Model;

namespace Example
{
    public class V1ExtractorGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api-historical.sec.finfeedapi.com";
            var apiInstance = new ContentExtractionApi(config);
            var accessionNumber = "accessionNumber_example";  // string | The SEC filing accession number used to retrieve the filing from EDGAR database.
            var type = (DTOExtractorType) "text";  // DTOExtractorType | Result type (text or html, default: text) (optional) 

            try
            {
                // Extract and classify SEC filing content
                Dictionary<string, Object> result = apiInstance.V1ExtractorGet(accessionNumber, type);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ContentExtractionApi.V1ExtractorGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1ExtractorGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Extract and classify SEC filing content
    ApiResponse<Dictionary<string, Object>> response = apiInstance.V1ExtractorGetWithHttpInfo(accessionNumber, type);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ContentExtractionApi.V1ExtractorGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accessionNumber** | **string** | The SEC filing accession number used to retrieve the filing from EDGAR database. |  |
| **type** | **DTOExtractorType** | Result type (text or html, default: text) | [optional]  |

### Return type

**Dictionary<string, Object>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful extraction |  -  |
| **400** | Invalid request |  -  |
| **404** | Filing not found |  -  |
| **500** | Server error |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1extractoritemget"></a>
# **V1ExtractorItemGet**
> string V1ExtractorItemGet (string accessionNumber, string itemNumber, DTOExtractorType type = null)

Extract specific item content from SEC filing

Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.    ### Item Number Format    Form Type | Item Format Examples  - -- -- -- -- --|- -- -- -- -- -- -- -- -- --  8-K       | 1.01, 2.01, 7.01  10-K      | 1, 2, 3  10-K/10-Q | PartI 1, PartII 2    :::tip  For best results, ensure the item number matches exactly with the filing's structure.  :::

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.FinFeedAPI.SECAPI.REST.V1.Api;
using APIBricks.FinFeedAPI.SECAPI.REST.V1.Client;
using APIBricks.FinFeedAPI.SECAPI.REST.V1.Model;

namespace Example
{
    public class V1ExtractorItemGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api-historical.sec.finfeedapi.com";
            var apiInstance = new ContentExtractionApi(config);
            var accessionNumber = "accessionNumber_example";  // string | The SEC filing accession number used to retrieve the filing from EDGAR database.
            var itemNumber = "itemNumber_example";  // string | The specific item number to extract (e.g., \"1.01\", \"2.01\", \"7.01\").
            var type = (DTOExtractorType) "text";  // DTOExtractorType | Result type (text or html, default: text) (optional) 

            try
            {
                // Extract specific item content from SEC filing
                string result = apiInstance.V1ExtractorItemGet(accessionNumber, itemNumber, type);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ContentExtractionApi.V1ExtractorItemGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1ExtractorItemGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Extract specific item content from SEC filing
    ApiResponse<string> response = apiInstance.V1ExtractorItemGetWithHttpInfo(accessionNumber, itemNumber, type);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ContentExtractionApi.V1ExtractorItemGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accessionNumber** | **string** | The SEC filing accession number used to retrieve the filing from EDGAR database. |  |
| **itemNumber** | **string** | The specific item number to extract (e.g., \&quot;1.01\&quot;, \&quot;2.01\&quot;, \&quot;7.01\&quot;). |  |
| **type** | **DTOExtractorType** | Result type (text or html, default: text) | [optional]  |

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful extraction |  -  |
| **400** | Invalid request |  -  |
| **404** | Filing or item not found |  -  |
| **500** | Server error |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

