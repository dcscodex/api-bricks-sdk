# openapi.api.PositionsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:3001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1PositionsGet**](PositionsApi.md#v1PositionsGet) | **GET** /v1/positions | Get positions


# **v1PositionsGet**
> List<Position> v1PositionsGet(exchangeId)

Get positions

Returns all of your positions.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = PositionsApi();
var exchangeId = KRAKEN; // String | Exchange name

try { 
    var result = api_instance.v1PositionsGet(exchangeId);
    print(result);
} catch (e) {
    print("Exception when calling PositionsApi->v1PositionsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange name | [optional] [default to null]

### Return type

[**List<Position>**](Position.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

