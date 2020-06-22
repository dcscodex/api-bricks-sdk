# OrdersApi

All URIs are relative to *http://localhost:3001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1OrdersCancelAllPost**](OrdersApi.md#V1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all order
[**V1OrdersCancelPost**](OrdersApi.md#V1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order
[**V1OrdersGet**](OrdersApi.md#V1OrdersGet) | **GET** /v1/orders | Get orders
[**V1OrdersPost**](OrdersApi.md#V1OrdersPost) | **POST** /v1/orders | Create new order


# **V1OrdersCancelAllPost**
> MessagesOk V1OrdersCancelAllPost(cancel.all.order)

Cancel all order

Cancel all existing order.

### Example
```R
library(openapi)

var.cancel.all.order <- cancelAllOrder$new("exchange_id_example") # CancelAllOrder | 

#Cancel all order
api.instance <- OrdersApi$new()
result <- api.instance$V1OrdersCancelAllPost(var.cancel.all.order)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancel.all.order** | [**CancelAllOrder**](CancelAllOrder.md)|  | 

### Return type

[**MessagesOk**](messagesOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Result |  -  |

# **V1OrdersCancelPost**
> OrderLive V1OrdersCancelPost(cancel.order)

Cancel order

Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID.

### Example
```R
library(openapi)

var.cancel.order <- cancelOrder$new("exchange_id_example", "exchange_order_id_example", "client_order_id_example") # CancelOrder | 

#Cancel order
api.instance <- OrdersApi$new()
result <- api.instance$V1OrdersCancelPost(var.cancel.order)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancel.order** | [**CancelOrder**](CancelOrder.md)|  | 

### Return type

[**OrderLive**](orderLive.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Canceled order |  -  |
| **400** | Validation errors |  -  |
| **490** | Exchange not registered |  -  |

# **V1OrdersGet**
> array[Order] V1OrdersGet(exchange.id=var.exchange.id)

Get orders

List your current open orders.

### Example
```R
library(openapi)

var.exchange.id <- 'KRAKEN' # character | Exchange name

#Get orders
api.instance <- OrdersApi$new()
result <- api.instance$V1OrdersGet(exchange.id=var.exchange.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange.id** | **character**| Exchange name | [optional] 

### Return type

[**array[Order]**](order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Ok |  -  |

# **V1OrdersPost**
> OrderLive V1OrdersPost(new.order)

Create new order

You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds.

### Example
```R
library(openapi)

var.new.order <- newOrder$new("exchange_id_example", "client_order_id_example", "symbol_exchange_example", "symbol_coinapi_example", 123, 123, "side_example", "order_type_example", timeInForce$new(), "expire_time_example", list("exec_inst_example")) # NewOrder | 

#Create new order
api.instance <- OrdersApi$new()
result <- api.instance$V1OrdersPost(var.new.order)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new.order** | [**NewOrder**](NewOrder.md)|  | 

### Return type

[**OrderLive**](orderLive.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Created |  -  |
| **400** | Validation errors |  -  |
| **490** | Exchange not registered |  -  |

