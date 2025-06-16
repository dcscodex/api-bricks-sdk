# APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api.ExchangeRatesApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GetSpecificRate**](ExchangeRatesApi.md#getspecificrate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate |
| [**V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet**](ExchangeRatesApi.md#v1exchangerateassetidbaseassetidquotehistoryget) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote}/history | Timeseries data |
| [**V1ExchangerateAssetIdBaseGet**](ExchangeRatesApi.md#v1exchangerateassetidbaseget) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates |
| [**V1ExchangerateHistoryPeriodsGet**](ExchangeRatesApi.md#v1exchangeratehistoryperiodsget) | **GET** /v1/exchangerate/history/periods | Timeseries periods |

<a id="getspecificrate"></a>
# **GetSpecificRate**
> V1ExchangeRate GetSpecificRate (string assetIdBase, string assetIdQuote, string time = null)

Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class GetSpecificRateExample
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

            var apiInstance = new ExchangeRatesApi(config);
            var assetIdBase = "assetIdBase_example";  // string | Requested exchange rate base asset identifier (from the Metadata -> Assets)
            var assetIdQuote = "assetIdQuote_example";  // string | Requested exchange rate quote asset identifier (from the Metadata -> Assets)
            var time = "time_example";  // string | Time at which exchange rate is calculated (optional, if not supplied then current rate is returned) (optional) 

            try
            {
                // Get specific rate
                V1ExchangeRate result = apiInstance.GetSpecificRate(assetIdBase, assetIdQuote, time);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ExchangeRatesApi.GetSpecificRate: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetSpecificRateWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get specific rate
    ApiResponse<V1ExchangeRate> response = apiInstance.GetSpecificRateWithHttpInfo(assetIdBase, assetIdQuote, time);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ExchangeRatesApi.GetSpecificRateWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **assetIdBase** | **string** | Requested exchange rate base asset identifier (from the Metadata -&gt; Assets) |  |
| **assetIdQuote** | **string** | Requested exchange rate quote asset identifier (from the Metadata -&gt; Assets) |  |
| **time** | **string** | Time at which exchange rate is calculated (optional, if not supplied then current rate is returned) | [optional]  |

### Return type

[**V1ExchangeRate**](V1ExchangeRate.md)

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

<a id="v1exchangerateassetidbaseassetidquotehistoryget"></a>
# **V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet**
> List&lt;V1ExchangeRatesTimeseriesItem&gt; V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet (string assetIdBase, string assetIdQuote, string periodId = null, string timeStart = null, string timeEnd = null, int limit = null)

Timeseries data

Get the historical exchange rates between two assets in the form of the timeseries.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGetExample
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

            var apiInstance = new ExchangeRatesApi(config);
            var assetIdBase = "assetIdBase_example";  // string | Requested exchange rates base asset identifier (from the Metadata -> Assets)
            var assetIdQuote = "assetIdQuote_example";  // string | Requested exchange rates base asset identifier (from the Metadata -> Assets)
            var periodId = "periodId_example";  // string | Identifier of requested timeseries period (required, e.g. `5SEC` or `1HRS`) (optional) 
            var timeStart = "timeStart_example";  // string | Timeseries starting time in ISO 8601 (required) (optional) 
            var timeEnd = "timeEnd_example";  // string | Timeseries ending time in ISO 8601 (required) (optional) 
            var limit = 100;  // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional)  (default to 100)

            try
            {
                // Timeseries data
                List<V1ExchangeRatesTimeseriesItem> result = apiInstance.V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet(assetIdBase, assetIdQuote, periodId, timeStart, timeEnd, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ExchangeRatesApi.V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Timeseries data
    ApiResponse<List<V1ExchangeRatesTimeseriesItem>> response = apiInstance.V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGetWithHttpInfo(assetIdBase, assetIdQuote, periodId, timeStart, timeEnd, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ExchangeRatesApi.V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **assetIdBase** | **string** | Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) |  |
| **assetIdQuote** | **string** | Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) |  |
| **periodId** | **string** | Identifier of requested timeseries period (required, e.g. &#x60;5SEC&#x60; or &#x60;1HRS&#x60;) | [optional]  |
| **timeStart** | **string** | Timeseries starting time in ISO 8601 (required) | [optional]  |
| **timeEnd** | **string** | Timeseries ending time in ISO 8601 (required) | [optional]  |
| **limit** | **int** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**List&lt;V1ExchangeRatesTimeseriesItem&gt;**](V1ExchangeRatesTimeseriesItem.md)

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

<a id="v1exchangerateassetidbaseget"></a>
# **V1ExchangerateAssetIdBaseGet**
> V1ExchangeRates V1ExchangerateAssetIdBaseGet (string assetIdBase, string filterAssetId = null, bool invert = null, string time = null)

Get all current rates

Get the current exchange rate between requested asset and all other assets.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::              :::info You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC); :::

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1ExchangerateAssetIdBaseGetExample
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

            var apiInstance = new ExchangeRatesApi(config);
            var assetIdBase = "assetIdBase_example";  // string | Requested exchange rates base asset identifier (from the Metadata -> Assets)
            var filterAssetId = "filterAssetId_example";  // string | Comma or semicolon delimited asset identifiers used to filter response (optional) (optional) 
            var invert = false;  // bool | True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`) (optional)  (default to false)
            var time = "time_example";  // string | Time for historical rates (optional) (optional) 

            try
            {
                // Get all current rates
                V1ExchangeRates result = apiInstance.V1ExchangerateAssetIdBaseGet(assetIdBase, filterAssetId, invert, time);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ExchangeRatesApi.V1ExchangerateAssetIdBaseGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1ExchangerateAssetIdBaseGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get all current rates
    ApiResponse<V1ExchangeRates> response = apiInstance.V1ExchangerateAssetIdBaseGetWithHttpInfo(assetIdBase, filterAssetId, invert, time);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ExchangeRatesApi.V1ExchangerateAssetIdBaseGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **assetIdBase** | **string** | Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) |  |
| **filterAssetId** | **string** | Comma or semicolon delimited asset identifiers used to filter response (optional) | [optional]  |
| **invert** | **bool** | True will invert all the rates (optional, if true then rates will be calculated as &#x60;rate &#x3D; 1 / actual_rate&#x60; eg. &#x60;USD/BTC&#x60; as &#x60;BTC/USD&#x60;) | [optional] [default to false] |
| **time** | **string** | Time for historical rates (optional) | [optional]  |

### Return type

[**V1ExchangeRates**](V1ExchangeRates.md)

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

<a id="v1exchangeratehistoryperiodsget"></a>
# **V1ExchangerateHistoryPeriodsGet**
> List&lt;V1TimeseriesPeriod&gt; V1ExchangerateHistoryPeriodsGet ()

Timeseries periods

You can also obtain historical exchange rates of any asset pair, grouped into time periods. Get full list of supported time periods available for requesting exchange rates historical timeseries data.              ## Timeseries periods Time unit | Period identifiers - -- | - -- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;

namespace Example
{
    public class V1ExchangerateHistoryPeriodsGetExample
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

            var apiInstance = new ExchangeRatesApi(config);

            try
            {
                // Timeseries periods
                List<V1TimeseriesPeriod> result = apiInstance.V1ExchangerateHistoryPeriodsGet();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ExchangeRatesApi.V1ExchangerateHistoryPeriodsGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1ExchangerateHistoryPeriodsGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Timeseries periods
    ApiResponse<List<V1TimeseriesPeriod>> response = apiInstance.V1ExchangerateHistoryPeriodsGetWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ExchangeRatesApi.V1ExchangerateHistoryPeriodsGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;V1TimeseriesPeriod&gt;**](V1TimeseriesPeriod.md)

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

