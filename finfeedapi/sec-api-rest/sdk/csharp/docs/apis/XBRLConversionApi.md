# APIBricks.FinFeedAPI.SECAPI.REST.V1.Api.XBRLConversionApi

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1XbrlConverterGet**](XBRLConversionApi.md#v1xbrlconverterget) | **GET** /v1/xbrl-converter | Convert XBRL data to JSON format |

<a id="v1xbrlconverterget"></a>
# **V1XbrlConverterGet**
> Dictionary&lt;string, Object&gt; V1XbrlConverterGet (string htmUrl = null, string xbrlUrl = null, string accessionNo = null)

Convert XBRL data to JSON format

Converts XBRL data to JSON format using one of three possible input methods.    ### Input Methods    1. HTML URL (htm-url)     - URL of the filing ending with .htm or .html     - Both filing URLs and index page URLs are accepted     - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231.htm    2. XBRL URL (xbrl-url)     - URL of the XBRL file ending with .xml     - Can be found in the dataFiles array from Query API     - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231_htm.xml    3. Accession Number (accession-no)     - The SEC filing accession number     - Example: 0001564590-21-004599    :::note  Only one of the three parameters should be provided. If multiple parameters are provided, the priority order is:  1. htm-url  2. xbrl-url  3. accession-no  :::    ### Supported Filing Types    - Annual Reports (10-K)  - Quarterly Reports (10-Q)  - Current Reports (8-K)  - Registration Statements (S-1, S-3)  - Foreign Private Issuer Reports (20-F, 40-F)    ### Response Format    The API returns a JSON object containing:  - Financial statements (Income Statement, Balance Sheet, Cash Flow Statement)  - Accounting policies and footnotes  - Company information  - Filing metadata    ### Example Response  ```json  {    \"StatementsOfIncome\": {      \"RevenueFromContractWithCustomerExcludingAssessedTax\": [        {          \"decimals\": \"-6\",          \"unitRef\": \"U_USD\",          \"period\": {            \"startDate\": \"2023-07-01\",            \"endDate\": \"2024-06-30\"          },          \"value\": \"245122000000\"        }      ]    }  }  ```

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.FinFeedAPI.SECAPI.REST.V1.Api;
using APIBricks.FinFeedAPI.SECAPI.REST.V1.Client;
using APIBricks.FinFeedAPI.SECAPI.REST.V1.Model;

namespace Example
{
    public class V1XbrlConverterGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api-historical.sec.finfeedapi.com";
            var apiInstance = new XBRLConversionApi(config);
            var htmUrl = "htmUrl_example";  // string | URL of the filing ending with .htm or .html (optional) 
            var xbrlUrl = "xbrlUrl_example";  // string | URL of the XBRL file ending with .xml (optional) 
            var accessionNo = "accessionNo_example";  // string | SEC filing accession number (optional) 

            try
            {
                // Convert XBRL data to JSON format
                Dictionary<string, Object> result = apiInstance.V1XbrlConverterGet(htmUrl, xbrlUrl, accessionNo);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling XBRLConversionApi.V1XbrlConverterGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1XbrlConverterGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Convert XBRL data to JSON format
    ApiResponse<Dictionary<string, Object>> response = apiInstance.V1XbrlConverterGetWithHttpInfo(htmUrl, xbrlUrl, accessionNo);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling XBRLConversionApi.V1XbrlConverterGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **htmUrl** | **string** | URL of the filing ending with .htm or .html | [optional]  |
| **xbrlUrl** | **string** | URL of the XBRL file ending with .xml | [optional]  |
| **accessionNo** | **string** | SEC filing accession number | [optional]  |

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
| **200** | Successful conversion |  -  |
| **400** | Invalid request - check parameter format |  -  |
| **404** | Filing or XBRL data not found |  -  |
| **500** | Server error |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

