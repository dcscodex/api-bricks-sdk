# openapi.api.BalancesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:3001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1BalancesGet**](BalancesApi.md#v1BalancesGet) | **GET** /v1/balances | Get balances


# **v1BalancesGet**
> List<Balance> v1BalancesGet(exchangeId)

Get balances

Returns all of your balances, including available balance.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = BalancesApi();
var exchangeId = KRAKEN; // String | Exchange name

try { 
    var result = api_instance.v1BalancesGet(exchangeId);
    print(result);
} catch (e) {
    print("Exception when calling BalancesApi->v1BalancesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange name | [optional] [default to null]

### Return type

[**List<Balance>**](Balance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

