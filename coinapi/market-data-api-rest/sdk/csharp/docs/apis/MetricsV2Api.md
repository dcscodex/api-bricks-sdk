# APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api.MetricsV2Api

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V2MetricsAssetHistoryGet**](MetricsV2Api.md#v2metricsassethistoryget) | **GET** /v2/metrics/asset/history | Historical metrics for the asset |
| [**V2MetricsAssetListingGet**](MetricsV2Api.md#v2metricsassetlistingget) | **GET** /v2/metrics/asset/listing | Listing of metrics available for specific asset |
| [**V2MetricsChainHistoryGet**](MetricsV2Api.md#v2metricschainhistoryget) | **GET** /v2/metrics/chain/history | Historical metrics for the chain |
| [**V2MetricsChainListingGet**](MetricsV2Api.md#v2metricschainlistingget) | **GET** /v2/metrics/chain/listing | Listing of metrics available for specific chain |
| [**V2MetricsExchangeHistoryGet**](MetricsV2Api.md#v2metricsexchangehistoryget) | **GET** /v2/metrics/exchange/history | Historical metrics for the exchange |
| [**V2MetricsExchangeListingGet**](MetricsV2Api.md#v2metricsexchangelistingget) | **GET** /v2/metrics/exchange/listing | Listing of metrics available for specific exchange |
| [**V2MetricsListingGet**](MetricsV2Api.md#v2metricslistingget) | **GET** /v2/metrics/listing | Listing of all supported metrics |

<a id="v2metricsassethistoryget"></a>
# **V2MetricsAssetHistoryGet**
> List&lt;Object&gt; V2MetricsAssetHistoryGet (string metricId, string assetId, DateTime timeStart = null, DateTime timeEnd = null, string timeFormat = null, string periodId = null, int limit = null)

Historical metrics for the asset

Get asset metrics history.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V2MetricsAssetHistoryGetExample
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

            var apiInstance = new MetricsV2Api(config);
            var metricId = "metricId_example";  // string | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
            var assetId = "assetId_example";  // string | Asset identifier (e.g., `USDC`, `USDT`)
            var timeStart = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime | Starting time in ISO 8601 (optional) 
            var timeEnd = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime | Ending time in ISO 8601 (optional) 
            var timeFormat = "timeFormat_example";  // string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional) 
            var periodId = "periodId_example";  // string | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` (optional) 
            var limit = 100;  // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional)  (default to 100)

            try
            {
                // Historical metrics for the asset
                List<Object> result = apiInstance.V2MetricsAssetHistoryGet(metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetricsV2Api.V2MetricsAssetHistoryGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V2MetricsAssetHistoryGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Historical metrics for the asset
    ApiResponse<List<Object>> response = apiInstance.V2MetricsAssetHistoryGetWithHttpInfo(metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetricsV2Api.V2MetricsAssetHistoryGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **metricId** | **string** | Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) |  |
| **assetId** | **string** | Asset identifier (e.g., &#x60;USDC&#x60;, &#x60;USDT&#x60;) |  |
| **timeStart** | **DateTime** | Starting time in ISO 8601 | [optional]  |
| **timeEnd** | **DateTime** | Ending time in ISO 8601 | [optional]  |
| **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional]  |
| **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional]  |
| **limit** | **int** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

**List<Object>**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **400** | Invalid input, e.g., missing required parameters, invalid asset_id. |  -  |
| **500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v2metricsassetlistingget"></a>
# **V2MetricsAssetListingGet**
> List&lt;V1MetricInfo&gt; V2MetricsAssetListingGet (string assetId)

Listing of metrics available for specific asset

Get all metrics that are actually available for the specified asset.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V2MetricsAssetListingGetExample
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

            var apiInstance = new MetricsV2Api(config);
            var assetId = "assetId_example";  // string | Asset identifier (e.g., USDC, USDT)

            try
            {
                // Listing of metrics available for specific asset
                List<V1MetricInfo> result = apiInstance.V2MetricsAssetListingGet(assetId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetricsV2Api.V2MetricsAssetListingGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V2MetricsAssetListingGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Listing of metrics available for specific asset
    ApiResponse<List<V1MetricInfo>> response = apiInstance.V2MetricsAssetListingGetWithHttpInfo(assetId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetricsV2Api.V2MetricsAssetListingGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **assetId** | **string** | Asset identifier (e.g., USDC, USDT) |  |

### Return type

[**List&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

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

<a id="v2metricschainhistoryget"></a>
# **V2MetricsChainHistoryGet**
> List&lt;Object&gt; V2MetricsChainHistoryGet (string metricId, string chainId, DateTime timeStart = null, DateTime timeEnd = null, string timeFormat = null, string periodId = null, int limit = null)

Historical metrics for the chain

Get chain metrics history.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V2MetricsChainHistoryGetExample
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

            var apiInstance = new MetricsV2Api(config);
            var metricId = "metricId_example";  // string | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
            var chainId = "chainId_example";  // string | Chain identifier (e.g., `Ethereum`, `Arbitrum`)
            var timeStart = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime | Starting time in ISO 8601 (optional) 
            var timeEnd = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime | Ending time in ISO 8601 (optional) 
            var timeFormat = "timeFormat_example";  // string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional) 
            var periodId = "periodId_example";  // string | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` (optional) 
            var limit = 100;  // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional)  (default to 100)

            try
            {
                // Historical metrics for the chain
                List<Object> result = apiInstance.V2MetricsChainHistoryGet(metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetricsV2Api.V2MetricsChainHistoryGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V2MetricsChainHistoryGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Historical metrics for the chain
    ApiResponse<List<Object>> response = apiInstance.V2MetricsChainHistoryGetWithHttpInfo(metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetricsV2Api.V2MetricsChainHistoryGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **metricId** | **string** | Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) |  |
| **chainId** | **string** | Chain identifier (e.g., &#x60;Ethereum&#x60;, &#x60;Arbitrum&#x60;) |  |
| **timeStart** | **DateTime** | Starting time in ISO 8601 | [optional]  |
| **timeEnd** | **DateTime** | Ending time in ISO 8601 | [optional]  |
| **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional]  |
| **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional]  |
| **limit** | **int** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

**List<Object>**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **400** | Invalid input, e.g., missing required parameters, invalid chain_id. |  -  |
| **500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v2metricschainlistingget"></a>
# **V2MetricsChainListingGet**
> List&lt;V1MetricInfo&gt; V2MetricsChainListingGet (string chainId)

Listing of metrics available for specific chain

Get all metrics that are actually available for the specified blockchain chain.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V2MetricsChainListingGetExample
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

            var apiInstance = new MetricsV2Api(config);
            var chainId = "chainId_example";  // string | Chain identifier (e.g., ETHEREUM, ARBITRUM)

            try
            {
                // Listing of metrics available for specific chain
                List<V1MetricInfo> result = apiInstance.V2MetricsChainListingGet(chainId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetricsV2Api.V2MetricsChainListingGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V2MetricsChainListingGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Listing of metrics available for specific chain
    ApiResponse<List<V1MetricInfo>> response = apiInstance.V2MetricsChainListingGetWithHttpInfo(chainId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetricsV2Api.V2MetricsChainListingGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **chainId** | **string** | Chain identifier (e.g., ETHEREUM, ARBITRUM) |  |

### Return type

[**List&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

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

<a id="v2metricsexchangehistoryget"></a>
# **V2MetricsExchangeHistoryGet**
> List&lt;Object&gt; V2MetricsExchangeHistoryGet (string metricId, string exchangeId, DateTime timeStart = null, DateTime timeEnd = null, string timeFormat = null, string periodId = null, int limit = null)

Historical metrics for the exchange

Get exchange metrics history.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V2MetricsExchangeHistoryGetExample
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

            var apiInstance = new MetricsV2Api(config);
            var metricId = "metricId_example";  // string | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
            var exchangeId = "exchangeId_example";  // string | Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`)
            var timeStart = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime | Starting time in ISO 8601 (optional) 
            var timeEnd = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime | Ending time in ISO 8601 (optional) 
            var timeFormat = "timeFormat_example";  // string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional) 
            var periodId = "periodId_example";  // string | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` (optional) 
            var limit = 100;  // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional)  (default to 100)

            try
            {
                // Historical metrics for the exchange
                List<Object> result = apiInstance.V2MetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetricsV2Api.V2MetricsExchangeHistoryGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V2MetricsExchangeHistoryGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Historical metrics for the exchange
    ApiResponse<List<Object>> response = apiInstance.V2MetricsExchangeHistoryGetWithHttpInfo(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetricsV2Api.V2MetricsExchangeHistoryGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **metricId** | **string** | Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) |  |
| **exchangeId** | **string** | Exchange identifier (e.g., &#x60;BINANCE&#x60;, &#x60;UNISWAP-V3-ETHEREUM&#x60;) |  |
| **timeStart** | **DateTime** | Starting time in ISO 8601 | [optional]  |
| **timeEnd** | **DateTime** | Ending time in ISO 8601 | [optional]  |
| **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional]  |
| **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional]  |
| **limit** | **int** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

**List<Object>**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **400** | Invalid input, e.g., missing required parameters, invalid exchange_id mapping. |  -  |
| **500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v2metricsexchangelistingget"></a>
# **V2MetricsExchangeListingGet**
> List&lt;V1MetricInfo&gt; V2MetricsExchangeListingGet (string exchangeId)

Listing of metrics available for specific exchange

Get all metrics that are actually available for the specified exchange.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V2MetricsExchangeListingGetExample
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

            var apiInstance = new MetricsV2Api(config);
            var exchangeId = "exchangeId_example";  // string | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)

            try
            {
                // Listing of metrics available for specific exchange
                List<V1MetricInfo> result = apiInstance.V2MetricsExchangeListingGet(exchangeId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetricsV2Api.V2MetricsExchangeListingGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V2MetricsExchangeListingGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Listing of metrics available for specific exchange
    ApiResponse<List<V1MetricInfo>> response = apiInstance.V2MetricsExchangeListingGetWithHttpInfo(exchangeId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetricsV2Api.V2MetricsExchangeListingGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **exchangeId** | **string** | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) |  |

### Return type

[**List&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

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

<a id="v2metricslistingget"></a>
# **V2MetricsListingGet**
> List&lt;V1MetricInfo&gt; V2MetricsListingGet ()

Listing of all supported metrics

Get all metrics available in the system.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V2MetricsListingGetExample
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

            var apiInstance = new MetricsV2Api(config);

            try
            {
                // Listing of all supported metrics
                List<V1MetricInfo> result = apiInstance.V2MetricsListingGet();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetricsV2Api.V2MetricsListingGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V2MetricsListingGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Listing of all supported metrics
    ApiResponse<List<V1MetricInfo>> response = apiInstance.V2MetricsListingGetWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetricsV2Api.V2MetricsListingGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

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

