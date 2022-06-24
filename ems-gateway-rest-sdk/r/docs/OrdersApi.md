# OrdersApi

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1OrdersCancelAllPost**](OrdersApi.md#V1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all orders request
[**V1OrdersCancelPost**](OrdersApi.md#V1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order request
[**V1OrdersGet**](OrdersApi.md#V1OrdersGet) | **GET** /v1/orders | Get open orders
[**V1OrdersPost**](OrdersApi.md#V1OrdersPost) | **POST** /v1/orders | Send new order
[**V1OrdersStatusClientOrderIdGet**](OrdersApi.md#V1OrdersStatusClientOrderIdGet) | **GET** /v1/orders/status/{client_order_id} | Get order execution report


# **V1OrdersCancelAllPost**
> MessageReject V1OrdersCancelAllPost(order_cancel_all_request)

Cancel all orders request

This request cancels all open orders on single specified exchange.

### Example
```R
library(openapi)

var.order_cancel_all_request <- OrderCancelAllRequest$new("exchange_id_example") # OrderCancelAllRequest | OrderCancelAllRequest object.

#Cancel all orders request
api.instance <- OrdersApi$new()
result <- api.instance$V1OrdersCancelAllPost(var.order_cancel_all_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_cancel_all_request** | [**OrderCancelAllRequest**](OrderCancelAllRequest.md)| OrderCancelAllRequest object. | 

### Return type

[**MessageReject**](MessageReject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Result |  -  |
| **400** | Input model validation errors. |  -  |
| **490** | Exchange is unreachable. |  -  |

# **V1OrdersCancelPost**
> OrderExecutionReport V1OrdersCancelPost(order_cancel_single_request)

Cancel order request

Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.

### Example
```R
library(openapi)

var.order_cancel_single_request <- OrderCancelSingleRequest$new("exchange_id_example", "exchange_order_id_example", "client_order_id_example") # OrderCancelSingleRequest | OrderCancelSingleRequest object.

#Cancel order request
api.instance <- OrdersApi$new()
result <- api.instance$V1OrdersCancelPost(var.order_cancel_single_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_cancel_single_request** | [**OrderCancelSingleRequest**](OrderCancelSingleRequest.md)| OrderCancelSingleRequest object. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The last execution report for the order for which cancelation was requested. |  -  |
| **400** | Input model validation errors. |  -  |
| **490** | Exchange is unreachable. |  -  |

# **V1OrdersGet**
> array[OrderExecutionReport] V1OrdersGet(exchange_id=var.exchange_id)

Get open orders

Get last execution reports for open orders across all or single exchange.

### Example
```R
library(openapi)

var.exchange_id <- 'KRAKEN' # character | Filter the open orders to the specific exchange.

#Get open orders
api.instance <- OrdersApi$new()
result <- api.instance$V1OrdersGet(exchange_id=var.exchange_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **character**| Filter the open orders to the specific exchange. | [optional] 

### Return type

[**array[OrderExecutionReport]**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Collection of order execution reports. |  -  |
| **490** | Filtered exchange is unreachable. |  -  |

# **V1OrdersPost**
> OrderExecutionReport V1OrdersPost(order_new_single_request)

Send new order

This request creating new order for the specific exchange.

### Example
```R
library(openapi)

var.order_new_single_request <- OrderNewSingleRequest$new("exchange_id_example", "client_order_id_example", 123, 123, OrdSide$new(), OrdType$new(), TimeInForce$new(), "symbol_id_exchange_example", "symbol_id_coinapi_example", "expire_time_example", list("MAKER_OR_CANCEL")) # OrderNewSingleRequest | OrderNewSingleRequest object.

#Send new order
api.instance <- OrdersApi$new()
result <- api.instance$V1OrdersPost(var.order_new_single_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_new_single_request** | [**OrderNewSingleRequest**](OrderNewSingleRequest.md)| OrderNewSingleRequest object. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Created |  -  |
| **400** | Input model validation errors. |  -  |
| **490** | Exchange is unreachable. |  -  |
| **504** | Exchange didn&#39;t responded in the defined timeout. |  -  |

# **V1OrdersStatusClientOrderIdGet**
> OrderExecutionReport V1OrdersStatusClientOrderIdGet(client_order_id)

Get order execution report

Get the last order execution report for the specified order. The requested order does not need to be active or opened.

### Example
```R
library(openapi)

var.client_order_id <- '6ab36bc1-344d-432e-ac6d-0bf44ee64c2b' # character | The unique identifier of the order assigned by the client.

#Get order execution report
api.instance <- OrdersApi$new()
result <- api.instance$V1OrdersStatusClientOrderIdGet(var.client_order_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_order_id** | **character**| The unique identifier of the order assigned by the client. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The last execution report of the requested order. |  -  |
| **404** | The requested order was not found. |  -  |

