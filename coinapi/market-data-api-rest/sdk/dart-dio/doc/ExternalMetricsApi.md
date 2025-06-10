# openapi.api.ExternalMetricsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ExternalmetricsAssetHistoryGet**](ExternalMetricsApi.md#v1externalmetricsassethistoryget) | **GET** /v1/externalmetrics/asset/history | Historical metrics for the asset from external sources
[**v1ExternalmetricsAssetListingGet**](ExternalMetricsApi.md#v1externalmetricsassetlistingget) | **GET** /v1/externalmetrics/asset/listing | Listing of metrics available for specific asset
[**v1ExternalmetricsAssetsGet**](ExternalMetricsApi.md#v1externalmetricsassetsget) | **GET** /v1/externalmetrics/assets | Listing of all supported external assets
[**v1ExternalmetricsChainHistoryGet**](ExternalMetricsApi.md#v1externalmetricschainhistoryget) | **GET** /v1/externalmetrics/chain/history | Historical metrics for the chain from external sources
[**v1ExternalmetricsChainListingGet**](ExternalMetricsApi.md#v1externalmetricschainlistingget) | **GET** /v1/externalmetrics/chain/listing | Listing of metrics available for specific chain
[**v1ExternalmetricsChainsGet**](ExternalMetricsApi.md#v1externalmetricschainsget) | **GET** /v1/externalmetrics/chains | Listing of all supported external chains
[**v1ExternalmetricsExchangeHistoryGet**](ExternalMetricsApi.md#v1externalmetricsexchangehistoryget) | **GET** /v1/externalmetrics/exchange/history | Historical metrics for the exchange from both external and internal sources
[**v1ExternalmetricsExchangeListingGet**](ExternalMetricsApi.md#v1externalmetricsexchangelistingget) | **GET** /v1/externalmetrics/exchange/listing | Listing of metrics available for specific exchange (both external and generic)
[**v1ExternalmetricsExchangesGet**](ExternalMetricsApi.md#v1externalmetricsexchangesget) | **GET** /v1/externalmetrics/exchanges | Listing of all supported external exchanges
[**v1ExternalmetricsListingGet**](ExternalMetricsApi.md#v1externalmetricslistingget) | **GET** /v1/externalmetrics/listing | Listing of all supported metrics (both external and generic)


# **v1ExternalmetricsAssetHistoryGet**
> BuiltList<JsonObject> v1ExternalmetricsAssetHistoryGet(metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the asset from external sources

Get asset metrics history from external data providers. Data is typically aggregated daily.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getExternalMetricsApi();
final String metricId = metricId_example; // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key)
final String assetId = assetId_example; // String | Asset identifier (e.g., `USDC`, `USDT` - from supported assets list)
final DateTime timeStart = 2013-10-20T19:20:30+01:00; // DateTime | Starting time in ISO 8601
final DateTime timeEnd = 2013-10-20T19:20:30+01:00; // DateTime | Ending time in ISO 8601
final String timeFormat = timeFormat_example; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
final String periodId = periodId_example; // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
final int limit = 56; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    final response = api.v1ExternalmetricsAssetHistoryGet(metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExternalMetricsApi->v1ExternalmetricsAssetHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key) | 
 **assetId** | **String**| Asset identifier (e.g., `USDC`, `USDT` - from supported assets list) | 
 **timeStart** | **DateTime**| Starting time in ISO 8601 | [optional] 
 **timeEnd** | **DateTime**| Ending time in ISO 8601 | [optional] 
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**BuiltList&lt;JsonObject&gt;**](JsonObject.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ExternalmetricsAssetListingGet**
> BuiltList<V1MetricInfo> v1ExternalmetricsAssetListingGet(assetId)

Listing of metrics available for specific asset

Get all metrics that are actually available for the specified asset from external providers.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getExternalMetricsApi();
final String assetId = assetId_example; // String | Asset identifier (e.g., USDC, USDT)

try {
    final response = api.v1ExternalmetricsAssetListingGet(assetId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExternalMetricsApi->v1ExternalmetricsAssetListingGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **String**| Asset identifier (e.g., USDC, USDT) | 

### Return type

[**BuiltList&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ExternalmetricsAssetsGet**
> BuiltList<V1ExternalAsset> v1ExternalmetricsAssetsGet()

Listing of all supported external assets

Get all assets (primarily stablecoins) supported by external data providers.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getExternalMetricsApi();

try {
    final response = api.v1ExternalmetricsAssetsGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExternalMetricsApi->v1ExternalmetricsAssetsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;V1ExternalAsset&gt;**](V1ExternalAsset.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ExternalmetricsChainHistoryGet**
> BuiltList<JsonObject> v1ExternalmetricsChainHistoryGet(metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the chain from external sources

Get chain metrics history from external data providers. Data is typically aggregated daily.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getExternalMetricsApi();
final String metricId = metricId_example; // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key)
final String chainId = chainId_example; // String | Chain identifier (e.g., `Ethereum`, `Arbitrum` - from supported chains list)
final DateTime timeStart = 2013-10-20T19:20:30+01:00; // DateTime | Starting time in ISO 8601
final DateTime timeEnd = 2013-10-20T19:20:30+01:00; // DateTime | Ending time in ISO 8601
final String timeFormat = timeFormat_example; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
final String periodId = periodId_example; // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
final int limit = 56; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    final response = api.v1ExternalmetricsChainHistoryGet(metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExternalMetricsApi->v1ExternalmetricsChainHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key) | 
 **chainId** | **String**| Chain identifier (e.g., `Ethereum`, `Arbitrum` - from supported chains list) | 
 **timeStart** | **DateTime**| Starting time in ISO 8601 | [optional] 
 **timeEnd** | **DateTime**| Ending time in ISO 8601 | [optional] 
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**BuiltList&lt;JsonObject&gt;**](JsonObject.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ExternalmetricsChainListingGet**
> BuiltList<V1MetricInfo> v1ExternalmetricsChainListingGet(chainId)

Listing of metrics available for specific chain

Get all metrics that are actually available for the specified blockchain chain from external providers.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getExternalMetricsApi();
final String chainId = chainId_example; // String | Chain identifier (e.g., ETHEREUM, ARBITRUM)

try {
    final response = api.v1ExternalmetricsChainListingGet(chainId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExternalMetricsApi->v1ExternalmetricsChainListingGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain identifier (e.g., ETHEREUM, ARBITRUM) | 

### Return type

[**BuiltList&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ExternalmetricsChainsGet**
> BuiltList<V1Chain> v1ExternalmetricsChainsGet()

Listing of all supported external chains

Get all blockchain chains supported by external data providers.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getExternalMetricsApi();

try {
    final response = api.v1ExternalmetricsChainsGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExternalMetricsApi->v1ExternalmetricsChainsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;V1Chain&gt;**](V1Chain.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ExternalmetricsExchangeHistoryGet**
> BuiltList<JsonObject> v1ExternalmetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the exchange from both external and internal sources

Get exchange metrics history from external data providers or internal sources based on metric type.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getExternalMetricsApi();
final String metricId = metricId_example; // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` for external, or generic metric IDs)
final String exchangeId = exchangeId_example; // String | Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`)
final DateTime timeStart = 2013-10-20T19:20:30+01:00; // DateTime | Starting time in ISO 8601
final DateTime timeEnd = 2013-10-20T19:20:30+01:00; // DateTime | Ending time in ISO 8601
final String timeFormat = timeFormat_example; // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
final String periodId = periodId_example; // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
final int limit = 56; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    final response = api.v1ExternalmetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExternalMetricsApi->v1ExternalmetricsExchangeHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` for external, or generic metric IDs) | 
 **exchangeId** | **String**| Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`) | 
 **timeStart** | **DateTime**| Starting time in ISO 8601 | [optional] 
 **timeEnd** | **DateTime**| Ending time in ISO 8601 | [optional] 
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**BuiltList&lt;JsonObject&gt;**](JsonObject.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ExternalmetricsExchangeListingGet**
> BuiltList<V1MetricInfo> v1ExternalmetricsExchangeListingGet(exchangeId)

Listing of metrics available for specific exchange (both external and generic)

Get all metrics that are actually available for the specified exchange from both external providers and internal sources.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getExternalMetricsApi();
final String exchangeId = exchangeId_example; // String | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)

try {
    final response = api.v1ExternalmetricsExchangeListingGet(exchangeId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExternalMetricsApi->v1ExternalmetricsExchangeListingGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) | 

### Return type

[**BuiltList&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ExternalmetricsExchangesGet**
> BuiltList<V1ExternalExchange> v1ExternalmetricsExchangesGet()

Listing of all supported external exchanges

Get all exchanges that have mapping to external data providers for metrics that actually have sources.  Only returns exchanges that are properly mapped to external protocols for metrics with defined sources.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getExternalMetricsApi();

try {
    final response = api.v1ExternalmetricsExchangesGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExternalMetricsApi->v1ExternalmetricsExchangesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;V1ExternalExchange&gt;**](V1ExternalExchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ExternalmetricsListingGet**
> BuiltList<V1MetricInfo> v1ExternalmetricsListingGet()

Listing of all supported metrics (both external and generic)

Get all metrics available from external data providers and internal generic metrics.  External metrics have detailed descriptions, while generic metrics are marked as such.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getExternalMetricsApi();

try {
    final response = api.v1ExternalmetricsListingGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExternalMetricsApi->v1ExternalmetricsListingGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

