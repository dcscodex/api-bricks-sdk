# APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api.OptionsApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1OptionsExchangeIdCurrentGet**](OptionsApi.md#v1optionsexchangeidcurrentget) | **GET** /v1/options/{exchange_id}/current | Current data by Exchange |

<a id="v1optionsexchangeidcurrentget"></a>
# **V1OptionsExchangeIdCurrentGet**
> List&lt;OptionsOptionExchangeGroup&gt; V1OptionsExchangeIdCurrentGet (string exchangeId)

Current data by Exchange

Get current options data for a specific exchange.  Returns option data grouped by underlying asset, quote currency, and expiration time, with quotes for both calls and puts at each strike price.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1OptionsExchangeIdCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure Bearer token for authorization: JWT
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new OptionsApi(config);
            var exchangeId = "exchangeId_example";  // string | Exchange identifier (from the Metadata -> Exchanges)

            try
            {
                // Current data by Exchange
                List<OptionsOptionExchangeGroup> result = apiInstance.V1OptionsExchangeIdCurrentGet(exchangeId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling OptionsApi.V1OptionsExchangeIdCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1OptionsExchangeIdCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Current data by Exchange
    ApiResponse<List<OptionsOptionExchangeGroup>> response = apiInstance.V1OptionsExchangeIdCurrentGetWithHttpInfo(exchangeId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OptionsApi.V1OptionsExchangeIdCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **exchangeId** | **string** | Exchange identifier (from the Metadata -&gt; Exchanges) |  |

### Return type

[**List&lt;OptionsOptionExchangeGroup&gt;**](OptionsOptionExchangeGroup.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

