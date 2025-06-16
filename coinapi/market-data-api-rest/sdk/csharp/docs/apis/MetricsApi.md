# APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api.MetricsApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1MetricsAssetCurrentGet**](MetricsApi.md#v1metricsassetcurrentget) | **GET** /v1/metrics/asset/current | Current metrics for given asset |
| [**V1MetricsAssetHistoryGet**](MetricsApi.md#v1metricsassethistoryget) | **GET** /v1/metrics/asset/history | Historical metrics for asset |
| [**V1MetricsAssetListingGet**](MetricsApi.md#v1metricsassetlistingget) | **GET** /v1/metrics/asset/listing | Listing of all supported metrics for asset |
| [**V1MetricsExchangeCurrentGet**](MetricsApi.md#v1metricsexchangecurrentget) | **GET** /v1/metrics/exchange/current | Current metrics for given exchange |
| [**V1MetricsExchangeHistoryGet**](MetricsApi.md#v1metricsexchangehistoryget) | **GET** /v1/metrics/exchange/history | Historical metrics for the exchange |
| [**V1MetricsExchangeListingGet**](MetricsApi.md#v1metricsexchangelistingget) | **GET** /v1/metrics/exchange/listing | Listing of all supported exchange metrics |
| [**V1MetricsListingGet**](MetricsApi.md#v1metricslistingget) | **GET** /v1/metrics/listing | Listing of all supported metrics by CoinAPI |
| [**V1MetricsSymbolCurrentGet**](MetricsApi.md#v1metricssymbolcurrentget) | **GET** /v1/metrics/symbol/current | Current metrics for given symbol |
| [**V1MetricsSymbolHistoryGet**](MetricsApi.md#v1metricssymbolhistoryget) | **GET** /v1/metrics/symbol/history | Historical metrics for symbol |
| [**V1MetricsSymbolListingGet**](MetricsApi.md#v1metricssymbollistingget) | **GET** /v1/metrics/symbol/listing | Listing of all supported metrics for symbol |

<a id="v1metricsassetcurrentget"></a>
# **V1MetricsAssetCurrentGet**
> List&lt;V1GeneralData&gt; V1MetricsAssetCurrentGet (string metricId = null, string assetId = null, string assetIdExternal = null, string exchangeId = null)

Current metrics for given asset

Get current asset metrics.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1MetricsAssetCurrentGetExample
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

            var apiInstance = new MetricsApi(config);
            var metricId = "metricId_example";  // string | Metric identifier (from the Metrics -> Listing) (optional) 
            var assetId = "assetId_example";  // string | Asset identifier (from the Metadata -> Assets) (optional) 
            var assetIdExternal = "assetIdExternal_example";  // string | Exchange asset identifier (optional) 
            var exchangeId = "exchangeId_example";  // string | Exchange identifier (from the Metadata -> Exchanges) (optional) 

            try
            {
                // Current metrics for given asset
                List<V1GeneralData> result = apiInstance.V1MetricsAssetCurrentGet(metricId, assetId, assetIdExternal, exchangeId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetricsApi.V1MetricsAssetCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1MetricsAssetCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Current metrics for given asset
    ApiResponse<List<V1GeneralData>> response = apiInstance.V1MetricsAssetCurrentGetWithHttpInfo(metricId, assetId, assetIdExternal, exchangeId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetricsApi.V1MetricsAssetCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **metricId** | **string** | Metric identifier (from the Metrics -&gt; Listing) | [optional]  |
| **assetId** | **string** | Asset identifier (from the Metadata -&gt; Assets) | [optional]  |
| **assetIdExternal** | **string** | Exchange asset identifier | [optional]  |
| **exchangeId** | **string** | Exchange identifier (from the Metadata -&gt; Exchanges) | [optional]  |

### Return type

[**List&lt;V1GeneralData&gt;**](V1GeneralData.md)

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

<a id="v1metricsassethistoryget"></a>
# **V1MetricsAssetHistoryGet**
> List&lt;V1MetricData&gt; V1MetricsAssetHistoryGet (string metricId, string exchangeId, string assetId = null, string assetIdExternal = null, DateTime timeStart = null, DateTime timeEnd = null, string timeFormat = null, string periodId = null, int limit = null)

Historical metrics for asset

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
    public class V1MetricsAssetHistoryGetExample
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

            var apiInstance = new MetricsApi(config);
            var metricId = "metricId_example";  // string | Metric identifier (from the Metrics -> Listing)
            var exchangeId = "exchangeId_example";  // string | Exchange identifier (from the Metadata -> Exchanges)
            var assetId = "assetId_example";  // string | Asset identifier (from the Metadata -> Assets) (optional) 
            var assetIdExternal = "assetIdExternal_example";  // string | Exchange asset identifier (optional) 
            var timeStart = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime | Starting time in ISO 8601 (optional) 
            var timeEnd = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime | Ending time in ISO 8601 (optional) 
            var timeFormat = "timeFormat_example";  // string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional) 
            var periodId = "periodId_example";  // string | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC` (optional) 
            var limit = 100;  // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional)  (default to 100)

            try
            {
                // Historical metrics for asset
                List<V1MetricData> result = apiInstance.V1MetricsAssetHistoryGet(metricId, exchangeId, assetId, assetIdExternal, timeStart, timeEnd, timeFormat, periodId, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetricsApi.V1MetricsAssetHistoryGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1MetricsAssetHistoryGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Historical metrics for asset
    ApiResponse<List<V1MetricData>> response = apiInstance.V1MetricsAssetHistoryGetWithHttpInfo(metricId, exchangeId, assetId, assetIdExternal, timeStart, timeEnd, timeFormat, periodId, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetricsApi.V1MetricsAssetHistoryGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **metricId** | **string** | Metric identifier (from the Metrics -&gt; Listing) |  |
| **exchangeId** | **string** | Exchange identifier (from the Metadata -&gt; Exchanges) |  |
| **assetId** | **string** | Asset identifier (from the Metadata -&gt; Assets) | [optional]  |
| **assetIdExternal** | **string** | Exchange asset identifier | [optional]  |
| **timeStart** | **DateTime** | Starting time in ISO 8601 | [optional]  |
| **timeEnd** | **DateTime** | Ending time in ISO 8601 | [optional]  |
| **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional]  |
| **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional]  |
| **limit** | **int** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**List&lt;V1MetricData&gt;**](V1MetricData.md)

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

<a id="v1metricsassetlistingget"></a>
# **V1MetricsAssetListingGet**
> List&lt;V1ListingItem&gt; V1MetricsAssetListingGet (string metricId = null, string exchangeId = null, string chainId = null, string networkId = null, string assetId = null, string assetIdExternal = null)

Listing of all supported metrics for asset

Get data metrics for asset.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1MetricsAssetListingGetExample
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

            var apiInstance = new MetricsApi(config);
            var metricId = "metricId_example";  // string | Metric identifier (from the Metrics -> Listing) (optional) 
            var exchangeId = "exchangeId_example";  // string | Exchange identifier (from the Metadata -> Exchanges) (optional) 
            var chainId = "chainId_example";  // string | Chain identifier (optional) 
            var networkId = "networkId_example";  // string | Network identifier (optional) 
            var assetId = "assetId_example";  // string | Asset identifier (from the Metadata -> Assets) (optional) 
            var assetIdExternal = "assetIdExternal_example";  // string | The asset external identifier (optional) 

            try
            {
                // Listing of all supported metrics for asset
                List<V1ListingItem> result = apiInstance.V1MetricsAssetListingGet(metricId, exchangeId, chainId, networkId, assetId, assetIdExternal);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetricsApi.V1MetricsAssetListingGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1MetricsAssetListingGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Listing of all supported metrics for asset
    ApiResponse<List<V1ListingItem>> response = apiInstance.V1MetricsAssetListingGetWithHttpInfo(metricId, exchangeId, chainId, networkId, assetId, assetIdExternal);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetricsApi.V1MetricsAssetListingGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **metricId** | **string** | Metric identifier (from the Metrics -&gt; Listing) | [optional]  |
| **exchangeId** | **string** | Exchange identifier (from the Metadata -&gt; Exchanges) | [optional]  |
| **chainId** | **string** | Chain identifier | [optional]  |
| **networkId** | **string** | Network identifier | [optional]  |
| **assetId** | **string** | Asset identifier (from the Metadata -&gt; Assets) | [optional]  |
| **assetIdExternal** | **string** | The asset external identifier | [optional]  |

### Return type

[**List&lt;V1ListingItem&gt;**](V1ListingItem.md)

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

<a id="v1metricsexchangecurrentget"></a>
# **V1MetricsExchangeCurrentGet**
> List&lt;V1GeneralData&gt; V1MetricsExchangeCurrentGet (string exchangeId, string metricId = null)

Current metrics for given exchange

Get current exchange metrics values.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1MetricsExchangeCurrentGetExample
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

            var apiInstance = new MetricsApi(config);
            var exchangeId = "exchangeId_example";  // string | The exchange identifier (from the Metadata -> Exchanges)
            var metricId = "metricId_example";  // string | The metric identifier (from the Metrics -> Listing) (optional) 

            try
            {
                // Current metrics for given exchange
                List<V1GeneralData> result = apiInstance.V1MetricsExchangeCurrentGet(exchangeId, metricId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetricsApi.V1MetricsExchangeCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1MetricsExchangeCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Current metrics for given exchange
    ApiResponse<List<V1GeneralData>> response = apiInstance.V1MetricsExchangeCurrentGetWithHttpInfo(exchangeId, metricId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetricsApi.V1MetricsExchangeCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **exchangeId** | **string** | The exchange identifier (from the Metadata -&gt; Exchanges) |  |
| **metricId** | **string** | The metric identifier (from the Metrics -&gt; Listing) | [optional]  |

### Return type

[**List&lt;V1GeneralData&gt;**](V1GeneralData.md)

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

<a id="v1metricsexchangehistoryget"></a>
# **V1MetricsExchangeHistoryGet**
> List&lt;V1MetricData&gt; V1MetricsExchangeHistoryGet (string metricId, string exchangeId, DateTime timeStart = null, DateTime timeEnd = null, string timeFormat = null, string periodId = null, int limit = null)

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
    public class V1MetricsExchangeHistoryGetExample
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

            var apiInstance = new MetricsApi(config);
            var metricId = "metricId_example";  // string | Metric identifier (from the Metrics -> Listing)
            var exchangeId = "exchangeId_example";  // string | Exchange identifier (from the Metadata -> Exchanges)
            var timeStart = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime | Starting time in ISO 8601 (optional) 
            var timeEnd = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime | Ending time in ISO 8601 (optional) 
            var timeFormat = "timeFormat_example";  // string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional) 
            var periodId = "periodId_example";  // string | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC` (optional) 
            var limit = 100;  // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional)  (default to 100)

            try
            {
                // Historical metrics for the exchange
                List<V1MetricData> result = apiInstance.V1MetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetricsApi.V1MetricsExchangeHistoryGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1MetricsExchangeHistoryGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Historical metrics for the exchange
    ApiResponse<List<V1MetricData>> response = apiInstance.V1MetricsExchangeHistoryGetWithHttpInfo(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetricsApi.V1MetricsExchangeHistoryGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **metricId** | **string** | Metric identifier (from the Metrics -&gt; Listing) |  |
| **exchangeId** | **string** | Exchange identifier (from the Metadata -&gt; Exchanges) |  |
| **timeStart** | **DateTime** | Starting time in ISO 8601 | [optional]  |
| **timeEnd** | **DateTime** | Ending time in ISO 8601 | [optional]  |
| **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional]  |
| **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional]  |
| **limit** | **int** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**List&lt;V1MetricData&gt;**](V1MetricData.md)

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

<a id="v1metricsexchangelistingget"></a>
# **V1MetricsExchangeListingGet**
> List&lt;V1ListingItem&gt; V1MetricsExchangeListingGet (string exchangeId, string metricId = null)

Listing of all supported exchange metrics

Get data metrics for exchange.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1MetricsExchangeListingGetExample
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

            var apiInstance = new MetricsApi(config);
            var exchangeId = "exchangeId_example";  // string | The exchange identifier (from the Metadata -> Exchanges)
            var metricId = "metricId_example";  // string | The metric identifier (from the Metrics -> Listing) (optional) 

            try
            {
                // Listing of all supported exchange metrics
                List<V1ListingItem> result = apiInstance.V1MetricsExchangeListingGet(exchangeId, metricId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetricsApi.V1MetricsExchangeListingGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1MetricsExchangeListingGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Listing of all supported exchange metrics
    ApiResponse<List<V1ListingItem>> response = apiInstance.V1MetricsExchangeListingGetWithHttpInfo(exchangeId, metricId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetricsApi.V1MetricsExchangeListingGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **exchangeId** | **string** | The exchange identifier (from the Metadata -&gt; Exchanges) |  |
| **metricId** | **string** | The metric identifier (from the Metrics -&gt; Listing) | [optional]  |

### Return type

[**List&lt;V1ListingItem&gt;**](V1ListingItem.md)

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

<a id="v1metricslistingget"></a>
# **V1MetricsListingGet**
> List&lt;V1Metric&gt; V1MetricsListingGet ()

Listing of all supported metrics by CoinAPI

Get all data metrics.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1MetricsListingGetExample
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

            var apiInstance = new MetricsApi(config);

            try
            {
                // Listing of all supported metrics by CoinAPI
                List<V1Metric> result = apiInstance.V1MetricsListingGet();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetricsApi.V1MetricsListingGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1MetricsListingGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Listing of all supported metrics by CoinAPI
    ApiResponse<List<V1Metric>> response = apiInstance.V1MetricsListingGetWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetricsApi.V1MetricsListingGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;V1Metric&gt;**](V1Metric.md)

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

<a id="v1metricssymbolcurrentget"></a>
# **V1MetricsSymbolCurrentGet**
> List&lt;V1GeneralData&gt; V1MetricsSymbolCurrentGet (string metricId = null, string symbolId = null, string exchangeId = null)

Current metrics for given symbol

Get current symbol metrics.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1MetricsSymbolCurrentGetExample
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

            var apiInstance = new MetricsApi(config);
            var metricId = "metricId_example";  // string | Metric identifier (from the Metrics -> Listing) (optional) 
            var symbolId = "symbolId_example";  // string | Symbol identifier (from the Metadata -> Symbols) (optional) 
            var exchangeId = "exchangeId_example";  // string | Exchange id (from the Metadata -> Exchanges) (optional) 

            try
            {
                // Current metrics for given symbol
                List<V1GeneralData> result = apiInstance.V1MetricsSymbolCurrentGet(metricId, symbolId, exchangeId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetricsApi.V1MetricsSymbolCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1MetricsSymbolCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Current metrics for given symbol
    ApiResponse<List<V1GeneralData>> response = apiInstance.V1MetricsSymbolCurrentGetWithHttpInfo(metricId, symbolId, exchangeId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetricsApi.V1MetricsSymbolCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **metricId** | **string** | Metric identifier (from the Metrics -&gt; Listing) | [optional]  |
| **symbolId** | **string** | Symbol identifier (from the Metadata -&gt; Symbols) | [optional]  |
| **exchangeId** | **string** | Exchange id (from the Metadata -&gt; Exchanges) | [optional]  |

### Return type

[**List&lt;V1GeneralData&gt;**](V1GeneralData.md)

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

<a id="v1metricssymbolhistoryget"></a>
# **V1MetricsSymbolHistoryGet**
> List&lt;V1MetricData&gt; V1MetricsSymbolHistoryGet (string metricId, string symbolId, DateTime timeStart = null, DateTime timeEnd = null, string timeFormat = null, string periodId = null, int limit = null)

Historical metrics for symbol

Get symbol metrics history.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1MetricsSymbolHistoryGetExample
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

            var apiInstance = new MetricsApi(config);
            var metricId = "metricId_example";  // string | Metric identifier (from the Metrics -> Listing)
            var symbolId = "symbolId_example";  // string | Symbol identifier (from the Metadata -> Symbols)
            var timeStart = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime | Starting time in ISO 8601 (optional) 
            var timeEnd = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime | Ending time in ISO 8601 (optional) 
            var timeFormat = "timeFormat_example";  // string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional) 
            var periodId = "periodId_example";  // string | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC` (optional) 
            var limit = 100;  // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional)  (default to 100)

            try
            {
                // Historical metrics for symbol
                List<V1MetricData> result = apiInstance.V1MetricsSymbolHistoryGet(metricId, symbolId, timeStart, timeEnd, timeFormat, periodId, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetricsApi.V1MetricsSymbolHistoryGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1MetricsSymbolHistoryGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Historical metrics for symbol
    ApiResponse<List<V1MetricData>> response = apiInstance.V1MetricsSymbolHistoryGetWithHttpInfo(metricId, symbolId, timeStart, timeEnd, timeFormat, periodId, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetricsApi.V1MetricsSymbolHistoryGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **metricId** | **string** | Metric identifier (from the Metrics -&gt; Listing) |  |
| **symbolId** | **string** | Symbol identifier (from the Metadata -&gt; Symbols) |  |
| **timeStart** | **DateTime** | Starting time in ISO 8601 | [optional]  |
| **timeEnd** | **DateTime** | Ending time in ISO 8601 | [optional]  |
| **timeFormat** | **string** | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional]  |
| **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional]  |
| **limit** | **int** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**List&lt;V1MetricData&gt;**](V1MetricData.md)

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

<a id="v1metricssymbollistingget"></a>
# **V1MetricsSymbolListingGet**
> List&lt;V1ListingItem&gt; V1MetricsSymbolListingGet (string metricId = null, string exchangeId = null, string symbolId = null)

Listing of all supported metrics for symbol

Get data metrics for symbol.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1MetricsSymbolListingGetExample
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

            var apiInstance = new MetricsApi(config);
            var metricId = "metricId_example";  // string | Metric identifier (from the Metrics -> Listing) (optional) 
            var exchangeId = "exchangeId_example";  // string | Exchange identifier (from the Metadata -> Exchanges) (optional) 
            var symbolId = "symbolId_example";  // string | Symbol identifier (from the Metadata -> Symbols) (optional) 

            try
            {
                // Listing of all supported metrics for symbol
                List<V1ListingItem> result = apiInstance.V1MetricsSymbolListingGet(metricId, exchangeId, symbolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MetricsApi.V1MetricsSymbolListingGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1MetricsSymbolListingGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Listing of all supported metrics for symbol
    ApiResponse<List<V1ListingItem>> response = apiInstance.V1MetricsSymbolListingGetWithHttpInfo(metricId, exchangeId, symbolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MetricsApi.V1MetricsSymbolListingGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **metricId** | **string** | Metric identifier (from the Metrics -&gt; Listing) | [optional]  |
| **exchangeId** | **string** | Exchange identifier (from the Metadata -&gt; Exchanges) | [optional]  |
| **symbolId** | **string** | Symbol identifier (from the Metadata -&gt; Symbols) | [optional]  |

### Return type

[**List&lt;V1ListingItem&gt;**](V1ListingItem.md)

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

