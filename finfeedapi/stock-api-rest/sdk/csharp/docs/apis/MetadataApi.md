# APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Api.MetadataApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1ExchangesGet**](MetadataApi.md#v1exchangesget) | **GET** /v1/exchanges | List of exchanges |
| [**V1SymbolsExchangeIdGet**](MetadataApi.md#v1symbolsexchangeidget) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange |

<a id="v1exchangesget"></a>
# **V1ExchangesGet**
> List&lt;FinFeedAPIExchangeModel&gt; V1ExchangesGet ()

List of exchanges

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Api;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Client;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model;

namespace Example
{
    public class V1ExchangesGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api-historical.stock.finfeedapi.com";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure Bearer token for authorization: JWT
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new MetadataApi(config);

            try
            {
                // List of exchanges
                List<FinFeedAPIExchangeModel> result = apiInstance.V1ExchangesGet();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetadataApi.V1ExchangesGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1ExchangesGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List of exchanges
    ApiResponse<List<FinFeedAPIExchangeModel>> response = apiInstance.V1ExchangesGetWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetadataApi.V1ExchangesGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;FinFeedAPIExchangeModel&gt;**](FinFeedAPIExchangeModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1symbolsexchangeidget"></a>
# **V1SymbolsExchangeIdGet**
> List&lt;FinFeedAPISymbolModel&gt; V1SymbolsExchangeIdGet (string exchangeId)

List of symbols for the exchange

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Api;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Client;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model;

namespace Example
{
    public class V1SymbolsExchangeIdGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api-historical.stock.finfeedapi.com";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure Bearer token for authorization: JWT
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new MetadataApi(config);
            var exchangeId = "exchangeId_example";  // string | 

            try
            {
                // List of symbols for the exchange
                List<FinFeedAPISymbolModel> result = apiInstance.V1SymbolsExchangeIdGet(exchangeId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetadataApi.V1SymbolsExchangeIdGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1SymbolsExchangeIdGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List of symbols for the exchange
    ApiResponse<List<FinFeedAPISymbolModel>> response = apiInstance.V1SymbolsExchangeIdGetWithHttpInfo(exchangeId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetadataApi.V1SymbolsExchangeIdGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **exchangeId** | **string** |  |  |

### Return type

[**List&lt;FinFeedAPISymbolModel&gt;**](FinFeedAPISymbolModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

