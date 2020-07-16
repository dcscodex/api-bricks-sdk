# \OrdersApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1OrdersCancelAllPost**](OrdersApi.md#V1OrdersCancelAllPost) | **Post** /v1/orders/cancel/all | Cancel all orders request
[**V1OrdersCancelPost**](OrdersApi.md#V1OrdersCancelPost) | **Post** /v1/orders/cancel | Cancel order request
[**V1OrdersGet**](OrdersApi.md#V1OrdersGet) | **Get** /v1/orders | Get open orders
[**V1OrdersPost**](OrdersApi.md#V1OrdersPost) | **Post** /v1/orders | Send new order
[**V1OrdersStatusClientOrderIdGet**](OrdersApi.md#V1OrdersStatusClientOrderIdGet) | **Get** /v1/orders/status/{client_order_id} | Get order execution report



## V1OrdersCancelAllPost

> Message V1OrdersCancelAllPost(ctx, orderCancelAllRequest)

Cancel all orders request

This request cancels all open orders on single specified exchange.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orderCancelAllRequest** | [**OrderCancelAllRequest**](OrderCancelAllRequest.md)| OrderCancelAllRequest object. | 

### Return type

[**Message**](Message.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OrdersCancelPost

> OrderExecutionReport V1OrdersCancelPost(ctx, orderCancelSingleRequest)

Cancel order request

Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orderCancelSingleRequest** | [**OrderCancelSingleRequest**](OrderCancelSingleRequest.md)| OrderCancelSingleRequest object. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OrdersGet

> []OrderExecutionReport V1OrdersGet(ctx, optional)

Get open orders

Get last execution reports for open orders across all or single exchange.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***V1OrdersGetOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a V1OrdersGetOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **optional.String**| Filter the open orders to the specific exchange. | 

### Return type

[**[]OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OrdersPost

> OrderExecutionReport V1OrdersPost(ctx, orderNewSingleRequest)

Send new order

This request creating new order for the specific exchange.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orderNewSingleRequest** | [**OrderNewSingleRequest**](OrderNewSingleRequest.md)| OrderNewSingleRequest object. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## V1OrdersStatusClientOrderIdGet

> OrderExecutionReport V1OrdersStatusClientOrderIdGet(ctx, clientOrderId)

Get order execution report

Get the last order execution report for the specified order. The requested order does not need to be active or opened.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**clientOrderId** | **string**| The unique identifier of the order assigned by the client. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

