# openapi.api.QuotesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1QuotesCurrentGet**](QuotesApi.md#v1quotescurrentget) | **GET** /v1/quotes/current | Current data
[**v1QuotesLatestGet**](QuotesApi.md#v1quoteslatestget) | **GET** /v1/quotes/latest | Latest data
[**v1QuotesSymbolIdCurrentGet**](QuotesApi.md#v1quotessymbolidcurrentget) | **GET** /v1/quotes/{symbol_id}/current | Current quotes for a specific symbol
[**v1QuotesSymbolIdHistoryGet**](QuotesApi.md#v1quotessymbolidhistoryget) | **GET** /v1/quotes/{symbol_id}/history | Historical data
[**v1QuotesSymbolIdLatestGet**](QuotesApi.md#v1quotessymbolidlatestget) | **GET** /v1/quotes/{symbol_id}/latest | Latest quote updates for a specific symbol


# **v1QuotesCurrentGet**
> BuiltList<V1QuoteTrade> v1QuotesCurrentGet(filterSymbolId)

Current data

Get current quotes for all symbols or for a specific symbol.              :::info When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned. :::

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getQuotesApi();
final String filterSymbolId = filterSymbolId_example; // String | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)

try {
    final response = api.v1QuotesCurrentGet(filterSymbolId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuotesApi->v1QuotesCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSymbolId** | **String**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] 

### Return type

[**BuiltList&lt;V1QuoteTrade&gt;**](V1QuoteTrade.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1QuotesLatestGet**
> BuiltList<V1Quote> v1QuotesLatestGet(filterSymbolId, limit)

Latest data

Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getQuotesApi();
final String filterSymbolId = filterSymbolId_example; // String | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
final int limit = 56; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    final response = api.v1QuotesLatestGet(filterSymbolId, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuotesApi->v1QuotesLatestGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSymbolId** | **String**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**BuiltList&lt;V1Quote&gt;**](V1Quote.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1QuotesSymbolIdCurrentGet**
> V1QuoteTrade v1QuotesSymbolIdCurrentGet(symbolId)

Current quotes for a specific symbol

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getQuotesApi();
final String symbolId = symbolId_example; // String | The symbol identifier (from the Metadata -> Symbols)

try {
    final response = api.v1QuotesSymbolIdCurrentGet(symbolId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuotesApi->v1QuotesSymbolIdCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **String**| The symbol identifier (from the Metadata -> Symbols) | 

### Return type

[**V1QuoteTrade**](V1QuoteTrade.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1QuotesSymbolIdHistoryGet**
> BuiltList<V1Quote> v1QuotesSymbolIdHistoryGet(symbolId, date, timeStart, timeEnd, limit)

Historical data

Get historical quote updates within requested time range, returned in time ascending order.  :::warning The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the 'date' parameter instead for querying data for a specific day without filter. :::

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getQuotesApi();
final String symbolId = symbolId_example; // String | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
final String date = date_example; // String | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided)
final String timeStart = timeStart_example; // String | Starting time in ISO 8601
final String timeEnd = timeEnd_example; // String | Timeseries ending time in ISO 8601
final int limit = 56; // int | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    final response = api.v1QuotesSymbolIdHistoryGet(symbolId, date, timeStart, timeEnd, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuotesApi->v1QuotesSymbolIdHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **String**| Symbol identifier for requested timeseries (from the Metadata -> Symbols) | 
 **date** | **String**| Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided) | [optional] 
 **timeStart** | **String**| Starting time in ISO 8601 | [optional] 
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 | [optional] 
 **limit** | **int**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**BuiltList&lt;V1Quote&gt;**](V1Quote.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1QuotesSymbolIdLatestGet**
> BuiltList<V1Quote> v1QuotesSymbolIdLatestGet(symbolId, limit)

Latest quote updates for a specific symbol

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getQuotesApi();
final String symbolId = symbolId_example; // String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
final int limit = 56; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    final response = api.v1QuotesSymbolIdLatestGet(symbolId, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuotesApi->v1QuotesSymbolIdLatestGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **String**| Symbol identifier of requested timeseries (from the Metadata -> Symbols) | 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**BuiltList&lt;V1Quote&gt;**](V1Quote.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

