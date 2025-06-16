# APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api.ExternalMetricsApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1ExternalmetricsAssetHistoryGet**](ExternalMetricsApi.md#v1externalmetricsassethistoryget) | **GET** /v1/externalmetrics/asset/history | Historical metrics for the asset |
| [**V1ExternalmetricsAssetListingGet**](ExternalMetricsApi.md#v1externalmetricsassetlistingget) | **GET** /v1/externalmetrics/asset/listing | Listing of metrics available for specific asset |
| [**V1ExternalmetricsChainHistoryGet**](ExternalMetricsApi.md#v1externalmetricschainhistoryget) | **GET** /v1/externalmetrics/chain/history | Historical metrics for the chain |
| [**V1ExternalmetricsChainListingGet**](ExternalMetricsApi.md#v1externalmetricschainlistingget) | **GET** /v1/externalmetrics/chain/listing | Listing of metrics available for specific chain |
| [**V1ExternalmetricsExchangeHistoryGet**](ExternalMetricsApi.md#v1externalmetricsexchangehistoryget) | **GET** /v1/externalmetrics/exchange/history | Historical metrics for the exchange |
| [**V1ExternalmetricsExchangeListingGet**](ExternalMetricsApi.md#v1externalmetricsexchangelistingget) | **GET** /v1/externalmetrics/exchange/listing | Listing of metrics available for specific exchange |
| [**V1ExternalmetricsListingGet**](ExternalMetricsApi.md#v1externalmetricslistingget) | **GET** /v1/externalmetrics/listing | Listing of all supported metrics |

<a id="v1externalmetricsassethistoryget"></a>
# **V1ExternalmetricsAssetHistoryGet**
> List&lt;Object&gt; V1ExternalmetricsAssetHistoryGet (string metricId, string assetId, DateTime timeStart = null, DateTime timeEnd = null, string timeFormat = null, string periodId = null, int limit = null)

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
    public class V1ExternalmetricsAssetHistoryGetExample
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

            var apiInstance = new ExternalMetricsApi(config);
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
                List<Object> result = apiInstance.V1ExternalmetricsAssetHistoryGet(metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ExternalMetricsApi.V1ExternalmetricsAssetHistoryGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1ExternalmetricsAssetHistoryGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Historical metrics for the asset
    ApiResponse<List<Object>> response = apiInstance.V1ExternalmetricsAssetHistoryGetWithHttpInfo(metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ExternalMetricsApi.V1ExternalmetricsAssetHistoryGetWithHttpInfo: " + e.Message);
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

<a id="v1externalmetricsassetlistingget"></a>
# **V1ExternalmetricsAssetListingGet**
> List&lt;V1MetricInfo&gt; V1ExternalmetricsAssetListingGet (string assetId)

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
    public class V1ExternalmetricsAssetListingGetExample
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

            var apiInstance = new ExternalMetricsApi(config);
            var assetId = "assetId_example";  // string | Asset identifier (e.g., USDC, USDT)

            try
            {
                // Listing of metrics available for specific asset
                List<V1MetricInfo> result = apiInstance.V1ExternalmetricsAssetListingGet(assetId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ExternalMetricsApi.V1ExternalmetricsAssetListingGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1ExternalmetricsAssetListingGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Listing of metrics available for specific asset
    ApiResponse<List<V1MetricInfo>> response = apiInstance.V1ExternalmetricsAssetListingGetWithHttpInfo(assetId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ExternalMetricsApi.V1ExternalmetricsAssetListingGetWithHttpInfo: " + e.Message);
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

<a id="v1externalmetricschainhistoryget"></a>
# **V1ExternalmetricsChainHistoryGet**
> List&lt;Object&gt; V1ExternalmetricsChainHistoryGet (string metricId, string chainId, DateTime timeStart = null, DateTime timeEnd = null, string timeFormat = null, string periodId = null, int limit = null)

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
    public class V1ExternalmetricsChainHistoryGetExample
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

            var apiInstance = new ExternalMetricsApi(config);
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
                List<Object> result = apiInstance.V1ExternalmetricsChainHistoryGet(metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ExternalMetricsApi.V1ExternalmetricsChainHistoryGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1ExternalmetricsChainHistoryGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Historical metrics for the chain
    ApiResponse<List<Object>> response = apiInstance.V1ExternalmetricsChainHistoryGetWithHttpInfo(metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ExternalMetricsApi.V1ExternalmetricsChainHistoryGetWithHttpInfo: " + e.Message);
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

<a id="v1externalmetricschainlistingget"></a>
# **V1ExternalmetricsChainListingGet**
> List&lt;V1MetricInfo&gt; V1ExternalmetricsChainListingGet (string chainId)

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
    public class V1ExternalmetricsChainListingGetExample
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

            var apiInstance = new ExternalMetricsApi(config);
            var chainId = "chainId_example";  // string | Chain identifier (e.g., ETHEREUM, ARBITRUM)

            try
            {
                // Listing of metrics available for specific chain
                List<V1MetricInfo> result = apiInstance.V1ExternalmetricsChainListingGet(chainId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ExternalMetricsApi.V1ExternalmetricsChainListingGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1ExternalmetricsChainListingGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Listing of metrics available for specific chain
    ApiResponse<List<V1MetricInfo>> response = apiInstance.V1ExternalmetricsChainListingGetWithHttpInfo(chainId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ExternalMetricsApi.V1ExternalmetricsChainListingGetWithHttpInfo: " + e.Message);
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

<a id="v1externalmetricsexchangehistoryget"></a>
# **V1ExternalmetricsExchangeHistoryGet**
> List&lt;Object&gt; V1ExternalmetricsExchangeHistoryGet (string metricId, string exchangeId, DateTime timeStart = null, DateTime timeEnd = null, string timeFormat = null, string periodId = null, int limit = null)

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
    public class V1ExternalmetricsExchangeHistoryGetExample
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

            var apiInstance = new ExternalMetricsApi(config);
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
                List<Object> result = apiInstance.V1ExternalmetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ExternalMetricsApi.V1ExternalmetricsExchangeHistoryGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1ExternalmetricsExchangeHistoryGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Historical metrics for the exchange
    ApiResponse<List<Object>> response = apiInstance.V1ExternalmetricsExchangeHistoryGetWithHttpInfo(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ExternalMetricsApi.V1ExternalmetricsExchangeHistoryGetWithHttpInfo: " + e.Message);
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

<a id="v1externalmetricsexchangelistingget"></a>
# **V1ExternalmetricsExchangeListingGet**
> List&lt;V1MetricInfo&gt; V1ExternalmetricsExchangeListingGet (string exchangeId)

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
    public class V1ExternalmetricsExchangeListingGetExample
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

            var apiInstance = new ExternalMetricsApi(config);
            var exchangeId = "exchangeId_example";  // string | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)

            try
            {
                // Listing of metrics available for specific exchange
                List<V1MetricInfo> result = apiInstance.V1ExternalmetricsExchangeListingGet(exchangeId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ExternalMetricsApi.V1ExternalmetricsExchangeListingGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1ExternalmetricsExchangeListingGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Listing of metrics available for specific exchange
    ApiResponse<List<V1MetricInfo>> response = apiInstance.V1ExternalmetricsExchangeListingGetWithHttpInfo(exchangeId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ExternalMetricsApi.V1ExternalmetricsExchangeListingGetWithHttpInfo: " + e.Message);
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

<a id="v1externalmetricslistingget"></a>
# **V1ExternalmetricsListingGet**
> List&lt;V1MetricInfo&gt; V1ExternalmetricsListingGet ()

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
    public class V1ExternalmetricsListingGetExample
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

            var apiInstance = new ExternalMetricsApi(config);

            try
            {
                // Listing of all supported metrics
                List<V1MetricInfo> result = apiInstance.V1ExternalmetricsListingGet();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ExternalMetricsApi.V1ExternalmetricsListingGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1ExternalmetricsListingGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Listing of all supported metrics
    ApiResponse<List<V1MetricInfo>> response = apiInstance.V1ExternalmetricsListingGetWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ExternalMetricsApi.V1ExternalmetricsListingGetWithHttpInfo: " + e.Message);
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

