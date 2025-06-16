# openapi.api.TradesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1TradesLatestGet**](TradesApi.md#v1tradeslatestget) | **GET** /v1/trades/latest | Latest data
[**v1TradesSymbolIdHistoryGet**](TradesApi.md#v1tradessymbolidhistoryget) | **GET** /v1/trades/{symbol_id}/history | Historical data
[**v1TradesSymbolIdLatestGet**](TradesApi.md#v1tradessymbolidlatestget) | **GET** /v1/trades/{symbol_id}/latest | Latest data by symbol_id


# **v1TradesLatestGet**
> BuiltList<V1Trade> v1TradesLatestGet(filterSymbolId, includeId, limit)

Latest data

Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getTradesApi();
final String filterSymbolId = filterSymbolId_example; // String | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
final bool includeId = true; // bool | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.
final int limit = 56; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    final response = api.v1TradesLatestGet(filterSymbolId, includeId, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TradesApi->v1TradesLatestGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSymbolId** | **String**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] 
 **includeId** | **bool**| Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers. | [optional] [default to false]
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**BuiltList&lt;V1Trade&gt;**](V1Trade.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1TradesSymbolIdHistoryGet**
> BuiltList<V1Trade> v1TradesSymbolIdHistoryGet(symbolId, date, timeStart, timeEnd, limit, includeId)

Historical data

Get history transactions from specific symbol, returned in time ascending order.  :::warning The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the 'date' parameter instead for querying data for a specific day without filter. :::

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getTradesApi();
final String symbolId = symbolId_example; // String | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
final String date = date_example; // String | Date in ISO 8601, returned data is for the whole given day (required if 'time_start' is not provided)
final String timeStart = timeStart_example; // String | Starting time in ISO 8601
final String timeEnd = timeEnd_example; // String | Timeseries ending time in ISO 8601
final int limit = 56; // int | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
final bool includeId = true; // bool | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.

try {
    final response = api.v1TradesSymbolIdHistoryGet(symbolId, date, timeStart, timeEnd, limit, includeId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TradesApi->v1TradesSymbolIdHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **String**| Symbol identifier for requested timeseries (from the Metadata -> Symbols) | 
 **date** | **String**| Date in ISO 8601, returned data is for the whole given day (required if 'time_start' is not provided) | [optional] 
 **timeStart** | **String**| Starting time in ISO 8601 | [optional] 
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 | [optional] 
 **limit** | **int**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **includeId** | **bool**| Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers. | [optional] [default to false]

### Return type

[**BuiltList&lt;V1Trade&gt;**](V1Trade.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1TradesSymbolIdLatestGet**
> BuiltList<V1Trade> v1TradesSymbolIdLatestGet(symbolId, limit, includeId)

Latest data by symbol_id

Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getTradesApi();
final String symbolId = symbolId_example; // String | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
final int limit = 56; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
final bool includeId = true; // bool | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.

try {
    final response = api.v1TradesSymbolIdLatestGet(symbolId, limit, includeId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TradesApi->v1TradesSymbolIdLatestGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **String**| Symbol identifier for requested timeseries (from the Metadata -> Symbols) | 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **includeId** | **bool**| Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers. | [optional] [default to false]

### Return type

[**BuiltList&lt;V1Trade&gt;**](V1Trade.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

