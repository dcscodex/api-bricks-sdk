# APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Api.OhlcvApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1OhlcvExchangeExchangeIdHistoryGet**](OhlcvApi.md#v1ohlcvexchangeexchangeidhistoryget) | **GET** /v1/ohlcv/exchange/{exchange_id}/history | Historical data by exchange |
| [**V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet**](OhlcvApi.md#v1ohlcvexchangesymbolexchangeidsymbolidhistoryget) | **GET** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/history | Historical data |
| [**V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet**](OhlcvApi.md#v1ohlcvexchangesymbolexchangeidsymbolidlatestget) | **GET** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/latest | Latest data |
| [**V1OhlcvPeriodsGet**](OhlcvApi.md#v1ohlcvperiodsget) | **GET** /v1/ohlcv/periods | List all periods |

<a id="v1ohlcvexchangeexchangeidhistoryget"></a>
# **V1OhlcvExchangeExchangeIdHistoryGet**
> List&lt;OHLCVExchangeTimeseriesItem&gt; V1OhlcvExchangeExchangeIdHistoryGet (string exchangeId, string periodId, string timeStart, string timeEnd)

Historical data by exchange

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Api;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Client;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model;

namespace Example
{
    public class V1OhlcvExchangeExchangeIdHistoryGetExample
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

            var apiInstance = new OhlcvApi(config);
            var exchangeId = "exchangeId_example";  // string | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
            var periodId = "periodId_example";  // string | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
            var timeStart = "timeStart_example";  // string | Timeseries starting time in ISO 8601
            var timeEnd = "timeEnd_example";  // string | Timeseries ending time in ISO 8601

            try
            {
                // Historical data by exchange
                List<OHLCVExchangeTimeseriesItem> result = apiInstance.V1OhlcvExchangeExchangeIdHistoryGet(exchangeId, periodId, timeStart, timeEnd);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling OhlcvApi.V1OhlcvExchangeExchangeIdHistoryGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1OhlcvExchangeExchangeIdHistoryGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Historical data by exchange
    ApiResponse<List<OHLCVExchangeTimeseriesItem>> response = apiInstance.V1OhlcvExchangeExchangeIdHistoryGetWithHttpInfo(exchangeId, periodId, timeStart, timeEnd);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OhlcvApi.V1OhlcvExchangeExchangeIdHistoryGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **exchangeId** | **string** | Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) |  |
| **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) |  |
| **timeStart** | **string** | Timeseries starting time in ISO 8601 |  |
| **timeEnd** | **string** | Timeseries ending time in ISO 8601 |  |

### Return type

[**List&lt;OHLCVExchangeTimeseriesItem&gt;**](OHLCVExchangeTimeseriesItem.md)

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

<a id="v1ohlcvexchangesymbolexchangeidsymbolidhistoryget"></a>
# **V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet**
> List&lt;OHLCVTimeseriesItem&gt; V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet (string exchangeId, string symbolId, string periodId, string timeStart = null, string timeEnd = null, int limit = null)

Historical data

Get OHLCV timeseries data returned in time ascending order.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Api;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Client;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model;

namespace Example
{
    public class V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGetExample
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

            var apiInstance = new OhlcvApi(config);
            var exchangeId = "exchangeId_example";  // string | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
            var symbolId = "symbolId_example";  // string | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
            var periodId = "periodId_example";  // string | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
            var timeStart = "timeStart_example";  // string | Timeseries starting time in ISO 8601 (optional) 
            var timeEnd = "timeEnd_example";  // string | Timeseries ending time in ISO 8601 (optional) 
            var limit = 100;  // int | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional)  (default to 100)

            try
            {
                // Historical data
                List<OHLCVTimeseriesItem> result = apiInstance.V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet(exchangeId, symbolId, periodId, timeStart, timeEnd, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling OhlcvApi.V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Historical data
    ApiResponse<List<OHLCVTimeseriesItem>> response = apiInstance.V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGetWithHttpInfo(exchangeId, symbolId, periodId, timeStart, timeEnd, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OhlcvApi.V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **exchangeId** | **string** | Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) |  |
| **symbolId** | **string** | Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) |  |
| **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) |  |
| **timeStart** | **string** | Timeseries starting time in ISO 8601 | [optional]  |
| **timeEnd** | **string** | Timeseries ending time in ISO 8601 | [optional]  |
| **limit** | **int** | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**List&lt;OHLCVTimeseriesItem&gt;**](OHLCVTimeseriesItem.md)

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

<a id="v1ohlcvexchangesymbolexchangeidsymbolidlatestget"></a>
# **V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet**
> List&lt;OHLCVTimeseriesItem&gt; V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet (string exchangeId, string symbolId, string periodId, int limit = null)

Latest data

Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Api;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Client;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model;

namespace Example
{
    public class V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGetExample
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

            var apiInstance = new OhlcvApi(config);
            var exchangeId = "exchangeId_example";  // string | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
            var symbolId = "symbolId_example";  // string | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
            var periodId = "periodId_example";  // string | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
            var limit = 100;  // int | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional)  (default to 100)

            try
            {
                // Latest data
                List<OHLCVTimeseriesItem> result = apiInstance.V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet(exchangeId, symbolId, periodId, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling OhlcvApi.V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Latest data
    ApiResponse<List<OHLCVTimeseriesItem>> response = apiInstance.V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGetWithHttpInfo(exchangeId, symbolId, periodId, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OhlcvApi.V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **exchangeId** | **string** | Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) |  |
| **symbolId** | **string** | Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) |  |
| **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) |  |
| **limit** | **int** | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**List&lt;OHLCVTimeseriesItem&gt;**](OHLCVTimeseriesItem.md)

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

<a id="v1ohlcvperiodsget"></a>
# **V1OhlcvPeriodsGet**
> List&lt;OHLCVTimeseriesPeriod&gt; V1OhlcvPeriodsGet ()

List all periods

Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers - -- -- -- -- | - -- -- -- -- -- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Api;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Client;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model;

namespace Example
{
    public class V1OhlcvPeriodsGetExample
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

            var apiInstance = new OhlcvApi(config);

            try
            {
                // List all periods
                List<OHLCVTimeseriesPeriod> result = apiInstance.V1OhlcvPeriodsGet();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling OhlcvApi.V1OhlcvPeriodsGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1OhlcvPeriodsGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List all periods
    ApiResponse<List<OHLCVTimeseriesPeriod>> response = apiInstance.V1OhlcvPeriodsGetWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OhlcvApi.V1OhlcvPeriodsGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;OHLCVTimeseriesPeriod&gt;**](OHLCVTimeseriesPeriod.md)

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

