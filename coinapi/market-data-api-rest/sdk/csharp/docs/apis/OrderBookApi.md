# APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api.OrderBookApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1OrderbooksSymbolIdCurrentGet**](OrderBookApi.md#v1orderbookssymbolidcurrentget) | **GET** /v1/orderbooks/{symbol_id}/current | Get current order book |
| [**V1OrderbooksSymbolIdDepthCurrentGet**](OrderBookApi.md#v1orderbookssymboliddepthcurrentget) | **GET** /v1/orderbooks/{symbol_id}/depth/current | Current depth of the order book |
| [**V1OrderbooksSymbolIdHistoryGet**](OrderBookApi.md#v1orderbookssymbolidhistoryget) | **GET** /v1/orderbooks/{symbol_id}/history | Historical data |
| [**V1OrderbooksSymbolIdLatestGet**](OrderBookApi.md#v1orderbookssymbolidlatestget) | **GET** /v1/orderbooks/{symbol_id}/latest | Latest data |

<a id="v1orderbookssymbolidcurrentget"></a>
# **V1OrderbooksSymbolIdCurrentGet**
> V1OrderBookBase V1OrderbooksSymbolIdCurrentGet (string symbolId, int limitLevels = null)

Get current order book

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
    public class V1OrderbooksSymbolIdCurrentGetExample
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

            var apiInstance = new OrderBookApi(config);
            var symbolId = "symbolId_example";  // string | The symbol ID (from the Metadata -> Symbols)
            var limitLevels = 56;  // int | The maximum number of levels to include in the response. (optional) 

            try
            {
                // Get current order book
                V1OrderBookBase result = apiInstance.V1OrderbooksSymbolIdCurrentGet(symbolId, limitLevels);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling OrderBookApi.V1OrderbooksSymbolIdCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1OrderbooksSymbolIdCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get current order book
    ApiResponse<V1OrderBookBase> response = apiInstance.V1OrderbooksSymbolIdCurrentGetWithHttpInfo(symbolId, limitLevels);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OrderBookApi.V1OrderbooksSymbolIdCurrentGetWithHttpInfo: " + e.Message);
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

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1orderbookssymboliddepthcurrentget"></a>
# **V1OrderbooksSymbolIdDepthCurrentGet**
> V1OrderBookDepth V1OrderbooksSymbolIdDepthCurrentGet (string symbolId, int limitLevels = null)

Current depth of the order book

Retrieves the current depth of the order book for the specified symbol.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1OrderbooksSymbolIdDepthCurrentGetExample
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

            var apiInstance = new OrderBookApi(config);
            var symbolId = "symbolId_example";  // string | The symbol ID (from the Metadata -> Symbols)
            var limitLevels = 56;  // int | The maximum number of levels to include in the response. (optional) 

            try
            {
                // Current depth of the order book
                V1OrderBookDepth result = apiInstance.V1OrderbooksSymbolIdDepthCurrentGet(symbolId, limitLevels);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling OrderBookApi.V1OrderbooksSymbolIdDepthCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1OrderbooksSymbolIdDepthCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Current depth of the order book
    ApiResponse<V1OrderBookDepth> response = apiInstance.V1OrderbooksSymbolIdDepthCurrentGetWithHttpInfo(symbolId, limitLevels);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OrderBookApi.V1OrderbooksSymbolIdDepthCurrentGetWithHttpInfo: " + e.Message);
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

[**V1OrderBookDepth**](V1OrderBookDepth.md)

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

<a id="v1orderbookssymbolidhistoryget"></a>
# **V1OrderbooksSymbolIdHistoryGet**
> List&lt;V1OrderBook&gt; V1OrderbooksSymbolIdHistoryGet (string symbolId, string date = null, string timeStart = null, string timeEnd = null, int limit = null, int limitLevels = null)

Historical data

Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.              :::info The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels. :::  :::warning The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the 'date' parameter instead for querying data for a specific day without filter. :::

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1OrderbooksSymbolIdHistoryGetExample
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

            var apiInstance = new OrderBookApi(config);
            var symbolId = "symbolId_example";  // string | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
            var date = "date_example";  // string | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided) (optional) 
            var timeStart = "timeStart_example";  // string | Starting time in ISO 8601 (deprecated, use 'date' instead) (optional) 
            var timeEnd = "timeEnd_example";  // string | Timeseries ending time in ISO 8601 (deprecated, use 'date' instead) (optional) 
            var limit = 100;  // int | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional)  (default to 100)
            var limitLevels = 56;  // int | Maximum amount of levels from each side of the book to include in response (optional) (optional) 

            try
            {
                // Historical data
                List<V1OrderBook> result = apiInstance.V1OrderbooksSymbolIdHistoryGet(symbolId, date, timeStart, timeEnd, limit, limitLevels);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling OrderBookApi.V1OrderbooksSymbolIdHistoryGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1OrderbooksSymbolIdHistoryGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Historical data
    ApiResponse<List<V1OrderBook>> response = apiInstance.V1OrderbooksSymbolIdHistoryGetWithHttpInfo(symbolId, date, timeStart, timeEnd, limit, limitLevels);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OrderBookApi.V1OrderbooksSymbolIdHistoryGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **symbolId** | **string** | Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) |  |
| **date** | **string** | Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | [optional]  |
| **timeStart** | **string** | Starting time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional]  |
| **timeEnd** | **string** | Timeseries ending time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional]  |
| **limit** | **int** | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |
| **limitLevels** | **int** | Maximum amount of levels from each side of the book to include in response (optional) | [optional]  |

### Return type

[**List&lt;V1OrderBook&gt;**](V1OrderBook.md)

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

<a id="v1orderbookssymbolidlatestget"></a>
# **V1OrderbooksSymbolIdLatestGet**
> List&lt;V1OrderBook&gt; V1OrderbooksSymbolIdLatestGet (string symbolId, int limit = null, int limitLevels = null)

Latest data

Get latest order book snapshots for a specific symbol, returned in time descending order.              :::info The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels. :::

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1OrderbooksSymbolIdLatestGetExample
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

            var apiInstance = new OrderBookApi(config);
            var symbolId = "symbolId_example";  // string | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
            var limit = 100;  // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional)  (default to 100)
            var limitLevels = 56;  // int | Maximum amount of levels from each side of the book to include in response (optional) (optional) 

            try
            {
                // Latest data
                List<V1OrderBook> result = apiInstance.V1OrderbooksSymbolIdLatestGet(symbolId, limit, limitLevels);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling OrderBookApi.V1OrderbooksSymbolIdLatestGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1OrderbooksSymbolIdLatestGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Latest data
    ApiResponse<List<V1OrderBook>> response = apiInstance.V1OrderbooksSymbolIdLatestGetWithHttpInfo(symbolId, limit, limitLevels);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OrderBookApi.V1OrderbooksSymbolIdLatestGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **symbolId** | **string** | Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) |  |
| **limit** | **int** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |
| **limitLevels** | **int** | Maximum amount of levels from each side of the book to include in response (optional) | [optional]  |

### Return type

[**List&lt;V1OrderBook&gt;**](V1OrderBook.md)

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

