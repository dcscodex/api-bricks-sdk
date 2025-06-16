# APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api.TradesApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1TradesLatestGet**](TradesApi.md#v1tradeslatestget) | **GET** /v1/trades/latest | Latest data |
| [**V1TradesSymbolIdHistoryGet**](TradesApi.md#v1tradessymbolidhistoryget) | **GET** /v1/trades/{symbol_id}/history | Historical data |
| [**V1TradesSymbolIdLatestGet**](TradesApi.md#v1tradessymbolidlatestget) | **GET** /v1/trades/{symbol_id}/latest | Latest data by symbol_id |

<a id="v1tradeslatestget"></a>
# **V1TradesLatestGet**
> List&lt;V1Trade&gt; V1TradesLatestGet (string filterSymbolId = null, bool includeId = null, int limit = null)

Latest data

Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1TradesLatestGetExample
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

            var apiInstance = new TradesApi(config);
            var filterSymbolId = "filterSymbolId_example";  // string | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) (optional) 
            var includeId = false;  // bool | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers. (optional)  (default to false)
            var limit = 100;  // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional)  (default to 100)

            try
            {
                // Latest data
                List<V1Trade> result = apiInstance.V1TradesLatestGet(filterSymbolId, includeId, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling TradesApi.V1TradesLatestGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1TradesLatestGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Latest data
    ApiResponse<List<V1Trade>> response = apiInstance.V1TradesLatestGetWithHttpInfo(filterSymbolId, includeId, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradesApi.V1TradesLatestGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **filterSymbolId** | **string** | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional]  |
| **includeId** | **bool** | Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to false] |
| **limit** | **int** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**List&lt;V1Trade&gt;**](V1Trade.md)

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

<a id="v1tradessymbolidhistoryget"></a>
# **V1TradesSymbolIdHistoryGet**
> List&lt;V1Trade&gt; V1TradesSymbolIdHistoryGet (string symbolId, string date = null, string timeStart = null, string timeEnd = null, int limit = null, bool includeId = null)

Historical data

Get history transactions from specific symbol, returned in time ascending order.  :::warning The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the 'date' parameter instead for querying data for a specific day without filter. :::

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1TradesSymbolIdHistoryGetExample
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

            var apiInstance = new TradesApi(config);
            var symbolId = "symbolId_example";  // string | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
            var date = "date_example";  // string | Date in ISO 8601, returned data is for the whole given day (required if 'time_start' is not provided) (optional) 
            var timeStart = "timeStart_example";  // string | Starting time in ISO 8601 (optional) 
            var timeEnd = "timeEnd_example";  // string | Timeseries ending time in ISO 8601 (optional) 
            var limit = 100;  // int | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional)  (default to 100)
            var includeId = false;  // bool | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers. (optional)  (default to false)

            try
            {
                // Historical data
                List<V1Trade> result = apiInstance.V1TradesSymbolIdHistoryGet(symbolId, date, timeStart, timeEnd, limit, includeId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling TradesApi.V1TradesSymbolIdHistoryGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1TradesSymbolIdHistoryGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Historical data
    ApiResponse<List<V1Trade>> response = apiInstance.V1TradesSymbolIdHistoryGetWithHttpInfo(symbolId, date, timeStart, timeEnd, limit, includeId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradesApi.V1TradesSymbolIdHistoryGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **symbolId** | **string** | Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) |  |
| **date** | **string** | Date in ISO 8601, returned data is for the whole given day (required if &#39;time_start&#39; is not provided) | [optional]  |
| **timeStart** | **string** | Starting time in ISO 8601 | [optional]  |
| **timeEnd** | **string** | Timeseries ending time in ISO 8601 | [optional]  |
| **limit** | **int** | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |
| **includeId** | **bool** | Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to false] |

### Return type

[**List&lt;V1Trade&gt;**](V1Trade.md)

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

<a id="v1tradessymbolidlatestget"></a>
# **V1TradesSymbolIdLatestGet**
> List&lt;V1Trade&gt; V1TradesSymbolIdLatestGet (string symbolId, int limit = null, bool includeId = null)

Latest data by symbol_id

Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1TradesSymbolIdLatestGetExample
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

            var apiInstance = new TradesApi(config);
            var symbolId = "symbolId_example";  // string | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
            var limit = 100;  // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional)  (default to 100)
            var includeId = false;  // bool | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers. (optional)  (default to false)

            try
            {
                // Latest data by symbol_id
                List<V1Trade> result = apiInstance.V1TradesSymbolIdLatestGet(symbolId, limit, includeId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling TradesApi.V1TradesSymbolIdLatestGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1TradesSymbolIdLatestGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Latest data by symbol_id
    ApiResponse<List<V1Trade>> response = apiInstance.V1TradesSymbolIdLatestGetWithHttpInfo(symbolId, limit, includeId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradesApi.V1TradesSymbolIdLatestGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **symbolId** | **string** | Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) |  |
| **limit** | **int** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |
| **includeId** | **bool** | Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to false] |

### Return type

[**List&lt;V1Trade&gt;**](V1Trade.md)

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

