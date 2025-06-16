# APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api.QuotesApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1QuotesCurrentGet**](QuotesApi.md#v1quotescurrentget) | **GET** /v1/quotes/current | Current data |
| [**V1QuotesLatestGet**](QuotesApi.md#v1quoteslatestget) | **GET** /v1/quotes/latest | Latest data |
| [**V1QuotesSymbolIdCurrentGet**](QuotesApi.md#v1quotessymbolidcurrentget) | **GET** /v1/quotes/{symbol_id}/current | Current quotes for a specific symbol |
| [**V1QuotesSymbolIdHistoryGet**](QuotesApi.md#v1quotessymbolidhistoryget) | **GET** /v1/quotes/{symbol_id}/history | Historical data |
| [**V1QuotesSymbolIdLatestGet**](QuotesApi.md#v1quotessymbolidlatestget) | **GET** /v1/quotes/{symbol_id}/latest | Latest quote updates for a specific symbol |

<a id="v1quotescurrentget"></a>
# **V1QuotesCurrentGet**
> List&lt;V1QuoteTrade&gt; V1QuotesCurrentGet (string filterSymbolId = null)

Current data

Get current quotes for all symbols or for a specific symbol.              :::info When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned. :::

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1QuotesCurrentGetExample
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

            var apiInstance = new QuotesApi(config);
            var filterSymbolId = "filterSymbolId_example";  // string | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) (optional) 

            try
            {
                // Current data
                List<V1QuoteTrade> result = apiInstance.V1QuotesCurrentGet(filterSymbolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling QuotesApi.V1QuotesCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1QuotesCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Current data
    ApiResponse<List<V1QuoteTrade>> response = apiInstance.V1QuotesCurrentGetWithHttpInfo(filterSymbolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling QuotesApi.V1QuotesCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **filterSymbolId** | **string** | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional]  |

### Return type

[**List&lt;V1QuoteTrade&gt;**](V1QuoteTrade.md)

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

<a id="v1quoteslatestget"></a>
# **V1QuotesLatestGet**
> List&lt;V1Quote&gt; V1QuotesLatestGet (string filterSymbolId = null, int limit = null)

Latest data

Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1QuotesLatestGetExample
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

            var apiInstance = new QuotesApi(config);
            var filterSymbolId = "filterSymbolId_example";  // string | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) (optional) 
            var limit = 100;  // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional)  (default to 100)

            try
            {
                // Latest data
                List<V1Quote> result = apiInstance.V1QuotesLatestGet(filterSymbolId, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling QuotesApi.V1QuotesLatestGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1QuotesLatestGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Latest data
    ApiResponse<List<V1Quote>> response = apiInstance.V1QuotesLatestGetWithHttpInfo(filterSymbolId, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling QuotesApi.V1QuotesLatestGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **filterSymbolId** | **string** | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional]  |
| **limit** | **int** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**List&lt;V1Quote&gt;**](V1Quote.md)

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

<a id="v1quotessymbolidcurrentget"></a>
# **V1QuotesSymbolIdCurrentGet**
> V1QuoteTrade V1QuotesSymbolIdCurrentGet (string symbolId)

Current quotes for a specific symbol

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1QuotesSymbolIdCurrentGetExample
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

            var apiInstance = new QuotesApi(config);
            var symbolId = "symbolId_example";  // string | The symbol identifier (from the Metadata -> Symbols)

            try
            {
                // Current quotes for a specific symbol
                V1QuoteTrade result = apiInstance.V1QuotesSymbolIdCurrentGet(symbolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling QuotesApi.V1QuotesSymbolIdCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1QuotesSymbolIdCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Current quotes for a specific symbol
    ApiResponse<V1QuoteTrade> response = apiInstance.V1QuotesSymbolIdCurrentGetWithHttpInfo(symbolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling QuotesApi.V1QuotesSymbolIdCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **symbolId** | **string** | The symbol identifier (from the Metadata -&gt; Symbols) |  |

### Return type

[**V1QuoteTrade**](V1QuoteTrade.md)

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

<a id="v1quotessymbolidhistoryget"></a>
# **V1QuotesSymbolIdHistoryGet**
> List&lt;V1Quote&gt; V1QuotesSymbolIdHistoryGet (string symbolId, string date = null, string timeStart = null, string timeEnd = null, int limit = null)

Historical data

Get historical quote updates within requested time range, returned in time ascending order.  :::warning The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the 'date' parameter instead for querying data for a specific day without filter. :::

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1QuotesSymbolIdHistoryGetExample
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

            var apiInstance = new QuotesApi(config);
            var symbolId = "symbolId_example";  // string | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
            var date = "date_example";  // string | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided) (optional) 
            var timeStart = "timeStart_example";  // string | Starting time in ISO 8601 (optional) 
            var timeEnd = "timeEnd_example";  // string | Timeseries ending time in ISO 8601 (optional) 
            var limit = 100;  // int | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional)  (default to 100)

            try
            {
                // Historical data
                List<V1Quote> result = apiInstance.V1QuotesSymbolIdHistoryGet(symbolId, date, timeStart, timeEnd, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling QuotesApi.V1QuotesSymbolIdHistoryGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1QuotesSymbolIdHistoryGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Historical data
    ApiResponse<List<V1Quote>> response = apiInstance.V1QuotesSymbolIdHistoryGetWithHttpInfo(symbolId, date, timeStart, timeEnd, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling QuotesApi.V1QuotesSymbolIdHistoryGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **symbolId** | **string** | Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) |  |
| **date** | **string** | Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | [optional]  |
| **timeStart** | **string** | Starting time in ISO 8601 | [optional]  |
| **timeEnd** | **string** | Timeseries ending time in ISO 8601 | [optional]  |
| **limit** | **int** | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**List&lt;V1Quote&gt;**](V1Quote.md)

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

<a id="v1quotessymbolidlatestget"></a>
# **V1QuotesSymbolIdLatestGet**
> List&lt;V1Quote&gt; V1QuotesSymbolIdLatestGet (string symbolId, int limit = null)

Latest quote updates for a specific symbol

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1QuotesSymbolIdLatestGetExample
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

            var apiInstance = new QuotesApi(config);
            var symbolId = "symbolId_example";  // string | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
            var limit = 100;  // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional)  (default to 100)

            try
            {
                // Latest quote updates for a specific symbol
                List<V1Quote> result = apiInstance.V1QuotesSymbolIdLatestGet(symbolId, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling QuotesApi.V1QuotesSymbolIdLatestGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1QuotesSymbolIdLatestGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Latest quote updates for a specific symbol
    ApiResponse<List<V1Quote>> response = apiInstance.V1QuotesSymbolIdLatestGetWithHttpInfo(symbolId, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling QuotesApi.V1QuotesSymbolIdLatestGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **symbolId** | **string** | Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) |  |
| **limit** | **int** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**List&lt;V1Quote&gt;**](V1Quote.md)

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

