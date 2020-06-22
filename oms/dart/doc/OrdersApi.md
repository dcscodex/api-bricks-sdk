# openapi.api.OrdersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:3001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrdersCancelAllPost**](OrdersApi.md#v1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all order
[**v1OrdersCancelPost**](OrdersApi.md#v1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order
[**v1OrdersGet**](OrdersApi.md#v1OrdersGet) | **GET** /v1/orders | Get orders
[**v1OrdersPost**](OrdersApi.md#v1OrdersPost) | **POST** /v1/orders | Create new order


# **v1OrdersCancelAllPost**
> MessagesOk v1OrdersCancelAllPost(cancelAllOrder)

Cancel all order

Cancel all existing order.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = OrdersApi();
var cancelAllOrder = CancelAllOrder(); // CancelAllOrder | 

try { 
    var result = api_instance.v1OrdersCancelAllPost(cancelAllOrder);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->v1OrdersCancelAllPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancelAllOrder** | [**CancelAllOrder**](CancelAllOrder.md)|  | 

### Return type

[**MessagesOk**](MessagesOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrdersCancelPost**
> OrderLive v1OrdersCancelPost(cancelOrder)

Cancel order

Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = OrdersApi();
var cancelOrder = CancelOrder(); // CancelOrder | 

try { 
    var result = api_instance.v1OrdersCancelPost(cancelOrder);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->v1OrdersCancelPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancelOrder** | [**CancelOrder**](CancelOrder.md)|  | 

### Return type

[**OrderLive**](OrderLive.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrdersGet**
> List<Order> v1OrdersGet(exchangeId)

Get orders

List your current open orders.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = OrdersApi();
var exchangeId = KRAKEN; // String | Exchange name

try { 
    var result = api_instance.v1OrdersGet(exchangeId);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->v1OrdersGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange name | [optional] [default to null]

### Return type

[**List<Order>**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrdersPost**
> OrderLive v1OrdersPost(newOrder)

Create new order

You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = OrdersApi();
var newOrder = NewOrder(); // NewOrder | 

try { 
    var result = api_instance.v1OrdersPost(newOrder);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->v1OrdersPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newOrder** | [**NewOrder**](NewOrder.md)|  | 

### Return type

[**OrderLive**](OrderLive.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

