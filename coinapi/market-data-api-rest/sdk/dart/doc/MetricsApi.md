# openapi.api.MetricsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1MetricsAssetCurrentGet**](MetricsApi.md#v1metricsassetcurrentget) | **GET** /v1/metrics/asset/current | Current metrics for given asset
[**v1MetricsAssetHistoryGet**](MetricsApi.md#v1metricsassethistoryget) | **GET** /v1/metrics/asset/history | Historical metrics for asset
[**v1MetricsAssetListingGet**](MetricsApi.md#v1metricsassetlistingget) | **GET** /v1/metrics/asset/listing | Listing of all supported metrics for asset
[**v1MetricsExchangeCurrentGet**](MetricsApi.md#v1metricsexchangecurrentget) | **GET** /v1/metrics/exchange/current | Current metrics for given exchange
[**v1MetricsExchangeHistoryGet**](MetricsApi.md#v1metricsexchangehistoryget) | **GET** /v1/metrics/exchange/history | Historical metrics for the exchange
[**v1MetricsExchangeListingGet**](MetricsApi.md#v1metricsexchangelistingget) | **GET** /v1/metrics/exchange/listing | Listing of all supported exchange metrics
[**v1MetricsListingGet**](MetricsApi.md#v1metricslistingget) | **GET** /v1/metrics/listing | Listing of all supported metrics by CoinAPI
[**v1MetricsSymbolCurrentGet**](MetricsApi.md#v1metricssymbolcurrentget) | **GET** /v1/metrics/symbol/current | Current metrics for given symbol
[**v1MetricsSymbolHistoryGet**](MetricsApi.md#v1metricssymbolhistoryget) | **GET** /v1/metrics/symbol/history | Historical metrics for symbol
[**v1MetricsSymbolListingGet**](MetricsApi.md#v1metricssymbollistingget) | **GET** /v1/metrics/symbol/listing | Listing of all supported metrics for symbol


# **v1MetricsAssetCurrentGet**
> List<V1GeneralData> v1MetricsAssetCurrentGet(metricId, assetId, assetIdExternal, exchangeId)

Current metrics for given asset

Get current asset metrics.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MetricsApi();
final metricId = metricId_example; // String | Metric identifier (from the Metrics -> Listing)
final assetId = assetId_example; // String | Asset identifier (from the Metadata -> Assets)
final assetIdExternal = assetIdExternal_example; // String | Exchange asset identifier
final exchangeId = exchangeId_example; // String | Exchange identifier (from the Metadata -> Exchanges)

try {
    final result = api_instance.v1MetricsAssetCurrentGet(metricId, assetId, assetIdExternal, exchangeId);
    print(result);
} catch (e) {
    print('Exception when calling MetricsApi->v1MetricsAssetCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (from the Metrics -> Listing) | [optional] 
 **assetId** | **String**| Asset identifier (from the Metadata -> Assets) | [optional] 
 **assetIdExternal** | **String**| Exchange asset identifier | [optional] 
 **exchangeId** | **String**| Exchange identifier (from the Metadata -> Exchanges) | [optional] 

### Return type

[**List<V1GeneralData>**](V1GeneralData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MetricsAssetHistoryGet**
> List<V1MetricData> v1MetricsAssetHistoryGet(metricId, exchangeId, assetId, assetIdExternal, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for asset

Get asset metrics history.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MetricsApi();
final metricId = metricId_example; // String | Metric identifier (from the Metrics -> Listing)
final exchangeId = exchangeId_example; // String | Exchange identifier (from the Metadata -> Exchanges)
final assetId = assetId_example; // String | Asset identifier (from the Metadata -> Assets)
final assetIdExternal = assetIdExternal_example; // String | Exchange asset identifier
final timeStart = 2013-10-20T19:20:30+01:00; // DateTime | Starting time in ISO 8601
final timeEnd = 2013-10-20T19:20:30+01:00; // DateTime | Ending time in ISO 8601
final timeFormat = timeFormat_example; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
final periodId = periodId_example; // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
final limit = 56; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    final result = api_instance.v1MetricsAssetHistoryGet(metricId, exchangeId, assetId, assetIdExternal, timeStart, timeEnd, timeFormat, periodId, limit);
    print(result);
} catch (e) {
    print('Exception when calling MetricsApi->v1MetricsAssetHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (from the Metrics -> Listing) | 
 **exchangeId** | **String**| Exchange identifier (from the Metadata -> Exchanges) | 
 **assetId** | **String**| Asset identifier (from the Metadata -> Assets) | [optional] 
 **assetIdExternal** | **String**| Exchange asset identifier | [optional] 
 **timeStart** | **DateTime**| Starting time in ISO 8601 | [optional] 
 **timeEnd** | **DateTime**| Ending time in ISO 8601 | [optional] 
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC` | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List<V1MetricData>**](V1MetricData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MetricsAssetListingGet**
> List<V1ListingItem> v1MetricsAssetListingGet(metricId, exchangeId, chainId, networkId, assetId, assetIdExternal)

Listing of all supported metrics for asset

Get data metrics for asset.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MetricsApi();
final metricId = metricId_example; // String | Metric identifier (from the Metrics -> Listing)
final exchangeId = exchangeId_example; // String | Exchange identifier (from the Metadata -> Exchanges)
final chainId = chainId_example; // String | Chain identifier
final networkId = networkId_example; // String | Network identifier
final assetId = assetId_example; // String | Asset identifier (from the Metadata -> Assets)
final assetIdExternal = assetIdExternal_example; // String | The asset external identifier

try {
    final result = api_instance.v1MetricsAssetListingGet(metricId, exchangeId, chainId, networkId, assetId, assetIdExternal);
    print(result);
} catch (e) {
    print('Exception when calling MetricsApi->v1MetricsAssetListingGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (from the Metrics -> Listing) | [optional] 
 **exchangeId** | **String**| Exchange identifier (from the Metadata -> Exchanges) | [optional] 
 **chainId** | **String**| Chain identifier | [optional] 
 **networkId** | **String**| Network identifier | [optional] 
 **assetId** | **String**| Asset identifier (from the Metadata -> Assets) | [optional] 
 **assetIdExternal** | **String**| The asset external identifier | [optional] 

### Return type

[**List<V1ListingItem>**](V1ListingItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MetricsExchangeCurrentGet**
> List<V1GeneralData> v1MetricsExchangeCurrentGet(exchangeId, metricId)

Current metrics for given exchange

Get current exchange metrics values.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MetricsApi();
final exchangeId = exchangeId_example; // String | The exchange identifier (from the Metadata -> Exchanges)
final metricId = metricId_example; // String | The metric identifier (from the Metrics -> Listing)

try {
    final result = api_instance.v1MetricsExchangeCurrentGet(exchangeId, metricId);
    print(result);
} catch (e) {
    print('Exception when calling MetricsApi->v1MetricsExchangeCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| The exchange identifier (from the Metadata -> Exchanges) | 
 **metricId** | **String**| The metric identifier (from the Metrics -> Listing) | [optional] 

### Return type

[**List<V1GeneralData>**](V1GeneralData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MetricsExchangeHistoryGet**
> List<V1MetricData> v1MetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the exchange

Get exchange metrics history.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MetricsApi();
final metricId = metricId_example; // String | Metric identifier (from the Metrics -> Listing)
final exchangeId = exchangeId_example; // String | Exchange identifier (from the Metadata -> Exchanges)
final timeStart = 2013-10-20T19:20:30+01:00; // DateTime | Starting time in ISO 8601
final timeEnd = 2013-10-20T19:20:30+01:00; // DateTime | Ending time in ISO 8601
final timeFormat = timeFormat_example; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
final periodId = periodId_example; // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
final limit = 56; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    final result = api_instance.v1MetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit);
    print(result);
} catch (e) {
    print('Exception when calling MetricsApi->v1MetricsExchangeHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (from the Metrics -> Listing) | 
 **exchangeId** | **String**| Exchange identifier (from the Metadata -> Exchanges) | 
 **timeStart** | **DateTime**| Starting time in ISO 8601 | [optional] 
 **timeEnd** | **DateTime**| Ending time in ISO 8601 | [optional] 
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC` | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List<V1MetricData>**](V1MetricData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MetricsExchangeListingGet**
> List<V1ListingItem> v1MetricsExchangeListingGet(exchangeId, metricId)

Listing of all supported exchange metrics

Get data metrics for exchange.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MetricsApi();
final exchangeId = exchangeId_example; // String | The exchange identifier (from the Metadata -> Exchanges)
final metricId = metricId_example; // String | The metric identifier (from the Metrics -> Listing)

try {
    final result = api_instance.v1MetricsExchangeListingGet(exchangeId, metricId);
    print(result);
} catch (e) {
    print('Exception when calling MetricsApi->v1MetricsExchangeListingGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| The exchange identifier (from the Metadata -> Exchanges) | 
 **metricId** | **String**| The metric identifier (from the Metrics -> Listing) | [optional] 

### Return type

[**List<V1ListingItem>**](V1ListingItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MetricsListingGet**
> List<V1Metric> v1MetricsListingGet()

Listing of all supported metrics by CoinAPI

Get all data metrics.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MetricsApi();

try {
    final result = api_instance.v1MetricsListingGet();
    print(result);
} catch (e) {
    print('Exception when calling MetricsApi->v1MetricsListingGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<V1Metric>**](V1Metric.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MetricsSymbolCurrentGet**
> List<V1GeneralData> v1MetricsSymbolCurrentGet(metricId, symbolId, exchangeId)

Current metrics for given symbol

Get current symbol metrics.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MetricsApi();
final metricId = metricId_example; // String | Metric identifier (from the Metrics -> Listing)
final symbolId = symbolId_example; // String | Symbol identifier (from the Metadata -> Symbols)
final exchangeId = exchangeId_example; // String | Exchange id (from the Metadata -> Exchanges)

try {
    final result = api_instance.v1MetricsSymbolCurrentGet(metricId, symbolId, exchangeId);
    print(result);
} catch (e) {
    print('Exception when calling MetricsApi->v1MetricsSymbolCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (from the Metrics -> Listing) | [optional] 
 **symbolId** | **String**| Symbol identifier (from the Metadata -> Symbols) | [optional] 
 **exchangeId** | **String**| Exchange id (from the Metadata -> Exchanges) | [optional] 

### Return type

[**List<V1GeneralData>**](V1GeneralData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MetricsSymbolHistoryGet**
> List<V1MetricData> v1MetricsSymbolHistoryGet(metricId, symbolId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for symbol

Get symbol metrics history.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MetricsApi();
final metricId = metricId_example; // String | Metric identifier (from the Metrics -> Listing)
final symbolId = symbolId_example; // String | Symbol identifier (from the Metadata -> Symbols)
final timeStart = 2013-10-20T19:20:30+01:00; // DateTime | Starting time in ISO 8601
final timeEnd = 2013-10-20T19:20:30+01:00; // DateTime | Ending time in ISO 8601
final timeFormat = timeFormat_example; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
final periodId = periodId_example; // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
final limit = 56; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    final result = api_instance.v1MetricsSymbolHistoryGet(metricId, symbolId, timeStart, timeEnd, timeFormat, periodId, limit);
    print(result);
} catch (e) {
    print('Exception when calling MetricsApi->v1MetricsSymbolHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (from the Metrics -> Listing) | 
 **symbolId** | **String**| Symbol identifier (from the Metadata -> Symbols) | 
 **timeStart** | **DateTime**| Starting time in ISO 8601 | [optional] 
 **timeEnd** | **DateTime**| Ending time in ISO 8601 | [optional] 
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC` | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List<V1MetricData>**](V1MetricData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MetricsSymbolListingGet**
> List<V1ListingItem> v1MetricsSymbolListingGet(metricId, exchangeId, symbolId)

Listing of all supported metrics for symbol

Get data metrics for symbol.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MetricsApi();
final metricId = metricId_example; // String | Metric identifier (from the Metrics -> Listing)
final exchangeId = exchangeId_example; // String | Exchange identifier (from the Metadata -> Exchanges)
final symbolId = symbolId_example; // String | Symbol identifier (from the Metadata -> Symbols)

try {
    final result = api_instance.v1MetricsSymbolListingGet(metricId, exchangeId, symbolId);
    print(result);
} catch (e) {
    print('Exception when calling MetricsApi->v1MetricsSymbolListingGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (from the Metrics -> Listing) | [optional] 
 **exchangeId** | **String**| Exchange identifier (from the Metadata -> Exchanges) | [optional] 
 **symbolId** | **String**| Symbol identifier (from the Metadata -> Symbols) | [optional] 

### Return type

[**List<V1ListingItem>**](V1ListingItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

