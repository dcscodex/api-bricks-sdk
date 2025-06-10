# openapi.api.ExchangeRatesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-historical.exrates.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSpecificRate**](ExchangeRatesApi.md#getspecificrate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
[**v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet**](ExchangeRatesApi.md#v1exchangerateassetidbaseassetidquotehistoryget) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote}/history | Timeseries data
[**v1ExchangerateAssetIdBaseGet**](ExchangeRatesApi.md#v1exchangerateassetidbaseget) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates
[**v1ExchangerateHistoryPeriodsGet**](ExchangeRatesApi.md#v1exchangeratehistoryperiodsget) | **GET** /v1/exchangerate/history/periods | Timeseries periods


# **getSpecificRate**
> V1ExchangeRate getSpecificRate(assetIdBase, assetIdQuote, time)

Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getExchangeRatesApi();
final String assetIdBase = assetIdBase_example; // String | Requested exchange rate base asset identifier (from the Metadata -> Assets)
final String assetIdQuote = assetIdQuote_example; // String | Requested exchange rate quote asset identifier (from the Metadata -> Assets)
final String time = time_example; // String | Time at which exchange rate is calculated (optional, if not supplied then current rate is returned)

try {
    final response = api.getSpecificRate(assetIdBase, assetIdQuote, time);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExchangeRatesApi->getSpecificRate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetIdBase** | **String**| Requested exchange rate base asset identifier (from the Metadata -> Assets) | 
 **assetIdQuote** | **String**| Requested exchange rate quote asset identifier (from the Metadata -> Assets) | 
 **time** | **String**| Time at which exchange rate is calculated (optional, if not supplied then current rate is returned) | [optional] 

### Return type

[**V1ExchangeRate**](V1ExchangeRate.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet**
> BuiltList<V1ExchangeRatesTimeseriesItem> v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet(assetIdBase, assetIdQuote, periodId, timeStart, timeEnd, limit)

Timeseries data

Get the historical exchange rates between two assets in the form of the timeseries.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getExchangeRatesApi();
final String assetIdBase = assetIdBase_example; // String | Requested exchange rates base asset identifier (from the Metadata -> Assets)
final String assetIdQuote = assetIdQuote_example; // String | Requested exchange rates base asset identifier (from the Metadata -> Assets)
final String periodId = periodId_example; // String | Identifier of requested timeseries period (required, e.g. `5SEC` or `1HRS`)
final String timeStart = timeStart_example; // String | Timeseries starting time in ISO 8601 (required)
final String timeEnd = timeEnd_example; // String | Timeseries ending time in ISO 8601 (required)
final int limit = 56; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    final response = api.v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet(assetIdBase, assetIdQuote, periodId, timeStart, timeEnd, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExchangeRatesApi->v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetIdBase** | **String**| Requested exchange rates base asset identifier (from the Metadata -> Assets) | 
 **assetIdQuote** | **String**| Requested exchange rates base asset identifier (from the Metadata -> Assets) | 
 **periodId** | **String**| Identifier of requested timeseries period (required, e.g. `5SEC` or `1HRS`) | [optional] 
 **timeStart** | **String**| Timeseries starting time in ISO 8601 (required) | [optional] 
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 (required) | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**BuiltList&lt;V1ExchangeRatesTimeseriesItem&gt;**](V1ExchangeRatesTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ExchangerateAssetIdBaseGet**
> V1ExchangeRates v1ExchangerateAssetIdBaseGet(assetIdBase, filterAssetId, invert, time)

Get all current rates

Get the current exchange rate between requested asset and all other assets.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::              :::info You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC); :::

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getExchangeRatesApi();
final String assetIdBase = assetIdBase_example; // String | Requested exchange rates base asset identifier (from the Metadata -> Assets)
final String filterAssetId = filterAssetId_example; // String | Comma or semicolon delimited asset identifiers used to filter response (optional)
final bool invert = true; // bool | True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`)
final String time = time_example; // String | Time for historical rates (optional)

try {
    final response = api.v1ExchangerateAssetIdBaseGet(assetIdBase, filterAssetId, invert, time);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExchangeRatesApi->v1ExchangerateAssetIdBaseGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetIdBase** | **String**| Requested exchange rates base asset identifier (from the Metadata -> Assets) | 
 **filterAssetId** | **String**| Comma or semicolon delimited asset identifiers used to filter response (optional) | [optional] 
 **invert** | **bool**| True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`) | [optional] [default to false]
 **time** | **String**| Time for historical rates (optional) | [optional] 

### Return type

[**V1ExchangeRates**](V1ExchangeRates.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ExchangerateHistoryPeriodsGet**
> BuiltList<V1TimeseriesPeriod> v1ExchangerateHistoryPeriodsGet()

Timeseries periods

You can also obtain historical exchange rates of any asset pair, grouped into time periods. Get full list of supported time periods available for requesting exchange rates historical timeseries data.              ## Timeseries periods Time unit | Period identifiers --- | --- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getExchangeRatesApi();

try {
    final response = api.v1ExchangerateHistoryPeriodsGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExchangeRatesApi->v1ExchangerateHistoryPeriodsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;V1TimeseriesPeriod&gt;**](V1TimeseriesPeriod.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

