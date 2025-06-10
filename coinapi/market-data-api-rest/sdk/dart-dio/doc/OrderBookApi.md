# openapi.api.OrderBookApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrderbooksSymbolIdCurrentGet**](OrderBookApi.md#v1orderbookssymbolidcurrentget) | **GET** /v1/orderbooks/{symbol_id}/current | Get current order book
[**v1OrderbooksSymbolIdDepthCurrentGet**](OrderBookApi.md#v1orderbookssymboliddepthcurrentget) | **GET** /v1/orderbooks/{symbol_id}/depth/current | Current depth of the order book
[**v1OrderbooksSymbolIdHistoryGet**](OrderBookApi.md#v1orderbookssymbolidhistoryget) | **GET** /v1/orderbooks/{symbol_id}/history | Historical data
[**v1OrderbooksSymbolIdLatestGet**](OrderBookApi.md#v1orderbookssymbolidlatestget) | **GET** /v1/orderbooks/{symbol_id}/latest | Latest data


# **v1OrderbooksSymbolIdCurrentGet**
> V1OrderBookBase v1OrderbooksSymbolIdCurrentGet(symbolId, limitLevels)

Get current order book

Retrieves the current order book for the specified symbol.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getOrderBookApi();
final String symbolId = symbolId_example; // String | The symbol ID (from the Metadata -> Symbols)
final int limitLevels = 56; // int | The maximum number of levels to include in the response.

try {
    final response = api.v1OrderbooksSymbolIdCurrentGet(symbolId, limitLevels);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderBookApi->v1OrderbooksSymbolIdCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **String**| The symbol ID (from the Metadata -> Symbols) | 
 **limitLevels** | **int**| The maximum number of levels to include in the response. | [optional] 

### Return type

[**V1OrderBookBase**](V1OrderBookBase.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrderbooksSymbolIdDepthCurrentGet**
> V1OrderBookDepth v1OrderbooksSymbolIdDepthCurrentGet(symbolId, limitLevels)

Current depth of the order book

Retrieves the current depth of the order book for the specified symbol.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getOrderBookApi();
final String symbolId = symbolId_example; // String | The symbol ID (from the Metadata -> Symbols)
final int limitLevels = 56; // int | The maximum number of levels to include in the response.

try {
    final response = api.v1OrderbooksSymbolIdDepthCurrentGet(symbolId, limitLevels);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderBookApi->v1OrderbooksSymbolIdDepthCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **String**| The symbol ID (from the Metadata -> Symbols) | 
 **limitLevels** | **int**| The maximum number of levels to include in the response. | [optional] 

### Return type

[**V1OrderBookDepth**](V1OrderBookDepth.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrderbooksSymbolIdHistoryGet**
> BuiltList<V1OrderBook> v1OrderbooksSymbolIdHistoryGet(symbolId, date, timeStart, timeEnd, limit, limitLevels)

Historical data

Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getOrderBookApi();
final String symbolId = symbolId_example; // String | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
final String date = date_example; // String | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided)
final String timeStart = timeStart_example; // String | Starting time in ISO 8601 (deprecated, use 'date' instead)
final String timeEnd = timeEnd_example; // String | Timeseries ending time in ISO 8601 (deprecated, use 'date' instead)
final int limit = 56; // int | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
final int limitLevels = 56; // int | Maximum amount of levels from each side of the book to include in response (optional)

try {
    final response = api.v1OrderbooksSymbolIdHistoryGet(symbolId, date, timeStart, timeEnd, limit, limitLevels);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderBookApi->v1OrderbooksSymbolIdHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **String**| Symbol identifier for requested timeseries (from the Metadata -> Symbols) | 
 **date** | **String**| Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided) | [optional] 
 **timeStart** | **String**| Starting time in ISO 8601 (deprecated, use 'date' instead) | [optional] 
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 (deprecated, use 'date' instead) | [optional] 
 **limit** | **int**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **limitLevels** | **int**| Maximum amount of levels from each side of the book to include in response (optional) | [optional] 

### Return type

[**BuiltList&lt;V1OrderBook&gt;**](V1OrderBook.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrderbooksSymbolIdLatestGet**
> BuiltList<V1OrderBook> v1OrderbooksSymbolIdLatestGet(symbolId, limit, limitLevels)

Latest data

Get latest order book snapshots for a specific symbol, returned in time descending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getOrderBookApi();
final String symbolId = symbolId_example; // String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
final int limit = 56; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
final int limitLevels = 56; // int | Maximum amount of levels from each side of the book to include in response (optional)

try {
    final response = api.v1OrderbooksSymbolIdLatestGet(symbolId, limit, limitLevels);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderBookApi->v1OrderbooksSymbolIdLatestGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **String**| Symbol identifier of requested timeseries (from the Metadata -> Symbols) | 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **limitLevels** | **int**| Maximum amount of levels from each side of the book to include in response (optional) | [optional] 

### Return type

[**BuiltList&lt;V1OrderBook&gt;**](V1OrderBook.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

