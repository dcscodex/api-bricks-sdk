# APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api.OrderBookL3Api

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1Orderbooks3CurrentGet**](OrderBookL3Api.md#v1orderbooks3currentget) | **GET** /v1/orderbooks3/current | Current order books |
| [**V1Orderbooks3SymbolIdCurrentGet**](OrderBookL3Api.md#v1orderbooks3symbolidcurrentget) | **GET** /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id |

<a id="v1orderbooks3currentget"></a>
# **V1Orderbooks3CurrentGet**
> List&lt;V1OrderBookBase&gt; V1Orderbooks3CurrentGet (string filterSymbolId = null, int limitLevels = null)

Current order books

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1Orderbooks3CurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest.coinapi.io";
            // Configure API key authorization: ApiKey
            config.AddApiKey("X-CoinAPI-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-CoinAPI-Key", "Bearer");

            var apiInstance = new OrderBookL3Api(config);
            var filterSymbolId = "filterSymbolId_example";  // string | Comma or semicolon delimited parts of symbol identifier used to filter the response. (optional) 
            var limitLevels = 56;  // int | The maximum number of levels to include in the response. (optional) 

            try
            {
                // Current order books
                List<V1OrderBookBase> result = apiInstance.V1Orderbooks3CurrentGet(filterSymbolId, limitLevels);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling OrderBookL3Api.V1Orderbooks3CurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1Orderbooks3CurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Current order books
    ApiResponse<List<V1OrderBookBase>> response = apiInstance.V1Orderbooks3CurrentGetWithHttpInfo(filterSymbolId, limitLevels);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OrderBookL3Api.V1Orderbooks3CurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **filterSymbolId** | **string** | Comma or semicolon delimited parts of symbol identifier used to filter the response. | [optional]  |
| **limitLevels** | **int** | The maximum number of levels to include in the response. | [optional]  |

### Return type

[**List&lt;V1OrderBookBase&gt;**](V1OrderBookBase.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1orderbooks3symbolidcurrentget"></a>
# **V1Orderbooks3SymbolIdCurrentGet**
> V1OrderBookBase V1Orderbooks3SymbolIdCurrentGet (string symbolId, int limitLevels = null)

Current order book by symbol_id

Retrieves the current order book for the specified symbol.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1Orderbooks3SymbolIdCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest.coinapi.io";
            // Configure API key authorization: ApiKey
            config.AddApiKey("X-CoinAPI-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-CoinAPI-Key", "Bearer");

            var apiInstance = new OrderBookL3Api(config);
            var symbolId = "symbolId_example";  // string | The symbol ID (from the Metadata -> Symbols)
            var limitLevels = 56;  // int | The maximum number of levels to include in the response. (optional) 

            try
            {
                // Current order book by symbol_id
                V1OrderBookBase result = apiInstance.V1Orderbooks3SymbolIdCurrentGet(symbolId, limitLevels);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling OrderBookL3Api.V1Orderbooks3SymbolIdCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1Orderbooks3SymbolIdCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Current order book by symbol_id
    ApiResponse<V1OrderBookBase> response = apiInstance.V1Orderbooks3SymbolIdCurrentGetWithHttpInfo(symbolId, limitLevels);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OrderBookL3Api.V1Orderbooks3SymbolIdCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **symbolId** | **string** | The symbol ID (from the Metadata -&gt; Symbols) |  |
| **limitLevels** | **int** | The maximum number of levels to include in the response. | [optional]  |

### Return type

[**V1OrderBookBase**](V1OrderBookBase.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

