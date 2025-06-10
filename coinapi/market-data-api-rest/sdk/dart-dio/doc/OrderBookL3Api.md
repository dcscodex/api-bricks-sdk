# openapi.api.OrderBookL3Api

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1Orderbooks3CurrentGet**](OrderBookL3Api.md#v1orderbooks3currentget) | **GET** /v1/orderbooks3/current | Current order books
[**v1Orderbooks3SymbolIdCurrentGet**](OrderBookL3Api.md#v1orderbooks3symbolidcurrentget) | **GET** /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id


# **v1Orderbooks3CurrentGet**
> BuiltList<V1OrderBookBase> v1Orderbooks3CurrentGet(filterSymbolId, limitLevels)

Current order books

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getOrderBookL3Api();
final String filterSymbolId = filterSymbolId_example; // String | Comma or semicolon delimited parts of symbol identifier used to filter the response.
final int limitLevels = 56; // int | The maximum number of levels to include in the response.

try {
    final response = api.v1Orderbooks3CurrentGet(filterSymbolId, limitLevels);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderBookL3Api->v1Orderbooks3CurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSymbolId** | **String**| Comma or semicolon delimited parts of symbol identifier used to filter the response. | [optional] 
 **limitLevels** | **int**| The maximum number of levels to include in the response. | [optional] 

### Return type

[**BuiltList&lt;V1OrderBookBase&gt;**](V1OrderBookBase.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1Orderbooks3SymbolIdCurrentGet**
> V1OrderBookBase v1Orderbooks3SymbolIdCurrentGet(symbolId, limitLevels)

Current order book by symbol_id

Retrieves the current order book for the specified symbol.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getOrderBookL3Api();
final String symbolId = symbolId_example; // String | The symbol ID (from the Metadata -> Symbols)
final int limitLevels = 56; // int | The maximum number of levels to include in the response.

try {
    final response = api.v1Orderbooks3SymbolIdCurrentGet(symbolId, limitLevels);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderBookL3Api->v1Orderbooks3SymbolIdCurrentGet: $e\n');
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

