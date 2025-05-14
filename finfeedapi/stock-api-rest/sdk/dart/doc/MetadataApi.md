# openapi.api.MetadataApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ExchangesGet**](MetadataApi.md#v1exchangesget) | **GET** /v1/exchanges | List of exchanges
[**v1SymbolsExchangeIdGet**](MetadataApi.md#v1symbolsexchangeidget) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange


# **v1ExchangesGet**
> List<FinFeedAPIExchangeModel> v1ExchangesGet()

List of exchanges

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = MetadataApi();

try {
    final result = api_instance.v1ExchangesGet();
    print(result);
} catch (e) {
    print('Exception when calling MetadataApi->v1ExchangesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<FinFeedAPIExchangeModel>**](FinFeedAPIExchangeModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1SymbolsExchangeIdGet**
> List<FinFeedAPISymbolModel> v1SymbolsExchangeIdGet(exchangeId)

List of symbols for the exchange

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = MetadataApi();
final exchangeId = exchangeId_example; // String | 

try {
    final result = api_instance.v1SymbolsExchangeIdGet(exchangeId);
    print(result);
} catch (e) {
    print('Exception when calling MetadataApi->v1SymbolsExchangeIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**|  | 

### Return type

[**List<FinFeedAPISymbolModel>**](FinFeedAPISymbolModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

