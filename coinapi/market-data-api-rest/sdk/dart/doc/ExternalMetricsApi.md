# openapi.api.ExternalMetricsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ExternalmetricsAssetHistoryGet**](ExternalMetricsApi.md#v1externalmetricsassethistoryget) | **GET** /v1/externalmetrics/asset/history | Historical metrics for the asset
[**v1ExternalmetricsAssetListingGet**](ExternalMetricsApi.md#v1externalmetricsassetlistingget) | **GET** /v1/externalmetrics/asset/listing | Listing of metrics available for specific asset
[**v1ExternalmetricsChainHistoryGet**](ExternalMetricsApi.md#v1externalmetricschainhistoryget) | **GET** /v1/externalmetrics/chain/history | Historical metrics for the chain
[**v1ExternalmetricsChainListingGet**](ExternalMetricsApi.md#v1externalmetricschainlistingget) | **GET** /v1/externalmetrics/chain/listing | Listing of metrics available for specific chain
[**v1ExternalmetricsExchangeHistoryGet**](ExternalMetricsApi.md#v1externalmetricsexchangehistoryget) | **GET** /v1/externalmetrics/exchange/history | Historical metrics for the exchange
[**v1ExternalmetricsExchangeListingGet**](ExternalMetricsApi.md#v1externalmetricsexchangelistingget) | **GET** /v1/externalmetrics/exchange/listing | Listing of metrics available for specific exchange
[**v1ExternalmetricsListingGet**](ExternalMetricsApi.md#v1externalmetricslistingget) | **GET** /v1/externalmetrics/listing | Listing of all supported metrics


# **v1ExternalmetricsAssetHistoryGet**
> List<Object> v1ExternalmetricsAssetHistoryGet(metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the asset

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

final api_instance = ExternalMetricsApi();
final metricId = metricId_example; // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
final assetId = assetId_example; // String | Asset identifier (e.g., `USDC`, `USDT`)
final timeStart = 2013-10-20T19:20:30+01:00; // DateTime | Starting time in ISO 8601
final timeEnd = 2013-10-20T19:20:30+01:00; // DateTime | Ending time in ISO 8601
final timeFormat = timeFormat_example; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
final periodId = periodId_example; // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
final limit = 56; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    final result = api_instance.v1ExternalmetricsAssetHistoryGet(metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit);
    print(result);
} catch (e) {
    print('Exception when calling ExternalMetricsApi->v1ExternalmetricsAssetHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`) | 
 **assetId** | **String**| Asset identifier (e.g., `USDC`, `USDT`) | 
 **timeStart** | **DateTime**| Starting time in ISO 8601 | [optional] 
 **timeEnd** | **DateTime**| Ending time in ISO 8601 | [optional] 
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List<Object>**](Object.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ExternalmetricsAssetListingGet**
> List<V1MetricInfo> v1ExternalmetricsAssetListingGet(assetId)

Listing of metrics available for specific asset

Get all metrics that are actually available for the specified asset.

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

final api_instance = ExternalMetricsApi();
final assetId = assetId_example; // String | Asset identifier (e.g., USDC, USDT)

try {
    final result = api_instance.v1ExternalmetricsAssetListingGet(assetId);
    print(result);
} catch (e) {
    print('Exception when calling ExternalMetricsApi->v1ExternalmetricsAssetListingGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **String**| Asset identifier (e.g., USDC, USDT) | 

### Return type

[**List<V1MetricInfo>**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ExternalmetricsChainHistoryGet**
> List<Object> v1ExternalmetricsChainHistoryGet(metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the chain

Get chain metrics history.

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

final api_instance = ExternalMetricsApi();
final metricId = metricId_example; // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
final chainId = chainId_example; // String | Chain identifier (e.g., `Ethereum`, `Arbitrum`)
final timeStart = 2013-10-20T19:20:30+01:00; // DateTime | Starting time in ISO 8601
final timeEnd = 2013-10-20T19:20:30+01:00; // DateTime | Ending time in ISO 8601
final timeFormat = timeFormat_example; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
final periodId = periodId_example; // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
final limit = 56; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    final result = api_instance.v1ExternalmetricsChainHistoryGet(metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit);
    print(result);
} catch (e) {
    print('Exception when calling ExternalMetricsApi->v1ExternalmetricsChainHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`) | 
 **chainId** | **String**| Chain identifier (e.g., `Ethereum`, `Arbitrum`) | 
 **timeStart** | **DateTime**| Starting time in ISO 8601 | [optional] 
 **timeEnd** | **DateTime**| Ending time in ISO 8601 | [optional] 
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List<Object>**](Object.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ExternalmetricsChainListingGet**
> List<V1MetricInfo> v1ExternalmetricsChainListingGet(chainId)

Listing of metrics available for specific chain

Get all metrics that are actually available for the specified blockchain chain.

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

final api_instance = ExternalMetricsApi();
final chainId = chainId_example; // String | Chain identifier (e.g., ETHEREUM, ARBITRUM)

try {
    final result = api_instance.v1ExternalmetricsChainListingGet(chainId);
    print(result);
} catch (e) {
    print('Exception when calling ExternalMetricsApi->v1ExternalmetricsChainListingGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain identifier (e.g., ETHEREUM, ARBITRUM) | 

### Return type

[**List<V1MetricInfo>**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ExternalmetricsExchangeHistoryGet**
> List<Object> v1ExternalmetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit)

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

final api_instance = ExternalMetricsApi();
final metricId = metricId_example; // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
final exchangeId = exchangeId_example; // String | Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`)
final timeStart = 2013-10-20T19:20:30+01:00; // DateTime | Starting time in ISO 8601
final timeEnd = 2013-10-20T19:20:30+01:00; // DateTime | Ending time in ISO 8601
final timeFormat = timeFormat_example; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
final periodId = periodId_example; // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
final limit = 56; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    final result = api_instance.v1ExternalmetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit);
    print(result);
} catch (e) {
    print('Exception when calling ExternalMetricsApi->v1ExternalmetricsExchangeHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`) | 
 **exchangeId** | **String**| Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`) | 
 **timeStart** | **DateTime**| Starting time in ISO 8601 | [optional] 
 **timeEnd** | **DateTime**| Ending time in ISO 8601 | [optional] 
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List<Object>**](Object.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ExternalmetricsExchangeListingGet**
> List<V1MetricInfo> v1ExternalmetricsExchangeListingGet(exchangeId)

Listing of metrics available for specific exchange

Get all metrics that are actually available for the specified exchange.

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

final api_instance = ExternalMetricsApi();
final exchangeId = exchangeId_example; // String | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)

try {
    final result = api_instance.v1ExternalmetricsExchangeListingGet(exchangeId);
    print(result);
} catch (e) {
    print('Exception when calling ExternalMetricsApi->v1ExternalmetricsExchangeListingGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) | 

### Return type

[**List<V1MetricInfo>**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ExternalmetricsListingGet**
> List<V1MetricInfo> v1ExternalmetricsListingGet()

Listing of all supported metrics

Get all metrics available in the system.

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

final api_instance = ExternalMetricsApi();

try {
    final result = api_instance.v1ExternalmetricsListingGet();
    print(result);
} catch (e) {
    print('Exception when calling ExternalMetricsApi->v1ExternalmetricsListingGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<V1MetricInfo>**](V1MetricInfo.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

