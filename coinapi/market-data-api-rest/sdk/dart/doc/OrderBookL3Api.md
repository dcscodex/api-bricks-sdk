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
> List<V1OrderBookBase> v1Orderbooks3CurrentGet(filterSymbolId, limitLevels)

Current order books

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

final api_instance = OrderBookL3Api();
final filterSymbolId = filterSymbolId_example; // String | Comma or semicolon delimited parts of symbol identifier used to filter the response.
final limitLevels = 56; // int | The maximum number of levels to include in the response.

try {
    final result = api_instance.v1Orderbooks3CurrentGet(filterSymbolId, limitLevels);
    print(result);
} catch (e) {
    print('Exception when calling OrderBookL3Api->v1Orderbooks3CurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSymbolId** | **String**| Comma or semicolon delimited parts of symbol identifier used to filter the response. | [optional] 
 **limitLevels** | **int**| The maximum number of levels to include in the response. | [optional] 

### Return type

[**List<V1OrderBookBase>**](V1OrderBookBase.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

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

final api_instance = OrderBookL3Api();
final symbolId = symbolId_example; // String | The symbol ID (from the Metadata -> Symbols)
final limitLevels = 56; // int | The maximum number of levels to include in the response.

try {
    final result = api_instance.v1Orderbooks3SymbolIdCurrentGet(symbolId, limitLevels);
    print(result);
} catch (e) {
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

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

