# OrdersApi

All URIs are relative to *http://localhost:3001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrdersCancelAllPost**](OrdersApi.md#v1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all order
[**v1OrdersCancelPost**](OrdersApi.md#v1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order
[**v1OrdersGet**](OrdersApi.md#v1OrdersGet) | **GET** /v1/orders | Get orders
[**v1OrdersPost**](OrdersApi.md#v1OrdersPost) | **POST** /v1/orders | Create new order


<a name="v1OrdersCancelAllPost"></a>
# **v1OrdersCancelAllPost**
> MessagesOk v1OrdersCancelAllPost(cancelAllOrder)

Cancel all order

Cancel all existing order.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OrdersApi()
val cancelAllOrder : CancelAllOrder =  // CancelAllOrder | 
try {
    val result : MessagesOk = apiInstance.v1OrdersCancelAllPost(cancelAllOrder)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrdersApi#v1OrdersCancelAllPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrdersApi#v1OrdersCancelAllPost")
    e.printStackTrace()
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

<a name="v1OrdersCancelPost"></a>
# **v1OrdersCancelPost**
> OrderLive v1OrdersCancelPost(cancelOrder)

Cancel order

Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OrdersApi()
val cancelOrder : CancelOrder =  // CancelOrder | 
try {
    val result : OrderLive = apiInstance.v1OrdersCancelPost(cancelOrder)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrdersApi#v1OrdersCancelPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrdersApi#v1OrdersCancelPost")
    e.printStackTrace()
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

<a name="v1OrdersGet"></a>
# **v1OrdersGet**
> kotlin.Array&lt;Order&gt; v1OrdersGet(exchangeId)

Get orders

List your current open orders.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OrdersApi()
val exchangeId : kotlin.String = KRAKEN // kotlin.String | Exchange name
try {
    val result : kotlin.Array<Order> = apiInstance.v1OrdersGet(exchangeId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrdersApi#v1OrdersGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrdersApi#v1OrdersGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **kotlin.String**| Exchange name | [optional]

### Return type

[**kotlin.Array&lt;Order&gt;**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="v1OrdersPost"></a>
# **v1OrdersPost**
> OrderLive v1OrdersPost(newOrder)

Create new order

You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OrdersApi()
val newOrder : NewOrder =  // NewOrder | 
try {
    val result : OrderLive = apiInstance.v1OrdersPost(newOrder)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrdersApi#v1OrdersPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrdersApi#v1OrdersPost")
    e.printStackTrace()
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

