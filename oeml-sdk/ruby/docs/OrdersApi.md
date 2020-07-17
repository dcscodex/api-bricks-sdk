# OpenapiClient::OrdersApi

All URIs are relative to *https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_orders_cancel_all_post**](OrdersApi.md#v1_orders_cancel_all_post) | **POST** /v1/orders/cancel/all | Cancel all orders request
[**v1_orders_cancel_post**](OrdersApi.md#v1_orders_cancel_post) | **POST** /v1/orders/cancel | Cancel order request
[**v1_orders_get**](OrdersApi.md#v1_orders_get) | **GET** /v1/orders | Get open orders
[**v1_orders_post**](OrdersApi.md#v1_orders_post) | **POST** /v1/orders | Send new order
[**v1_orders_status_client_order_id_get**](OrdersApi.md#v1_orders_status_client_order_id_get) | **GET** /v1/orders/status/{client_order_id} | Get order execution report



## v1_orders_cancel_all_post

> Message v1_orders_cancel_all_post(order_cancel_all_request)

Cancel all orders request

This request cancels all open orders on single specified exchange.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::OrdersApi.new
order_cancel_all_request = OpenapiClient::OrderCancelAllRequest.new # OrderCancelAllRequest | OrderCancelAllRequest object.

begin
  #Cancel all orders request
  result = api_instance.v1_orders_cancel_all_post(order_cancel_all_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling OrdersApi->v1_orders_cancel_all_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_cancel_all_request** | [**OrderCancelAllRequest**](OrderCancelAllRequest.md)| OrderCancelAllRequest object. | 

### Return type

[**Message**](Message.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json


## v1_orders_cancel_post

> OrderExecutionReport v1_orders_cancel_post(order_cancel_single_request)

Cancel order request

Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::OrdersApi.new
order_cancel_single_request = OpenapiClient::OrderCancelSingleRequest.new # OrderCancelSingleRequest | OrderCancelSingleRequest object.

begin
  #Cancel order request
  result = api_instance.v1_orders_cancel_post(order_cancel_single_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling OrdersApi->v1_orders_cancel_post: #{e}"
end
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


## v1_orders_get

> Array&lt;OrderExecutionReport&gt; v1_orders_get(opts)

Get open orders

Get last execution reports for open orders across all or single exchange.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::OrdersApi.new
opts = {
  exchange_id: 'KRAKEN' # String | Filter the open orders to the specific exchange.
}

begin
  #Get open orders
  result = api_instance.v1_orders_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling OrdersApi->v1_orders_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **String**| Filter the open orders to the specific exchange. | [optional] 

### Return type

[**Array&lt;OrderExecutionReport&gt;**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, appliction/json


## v1_orders_post

> OrderExecutionReport v1_orders_post(order_new_single_request)

Send new order

This request creating new order for the specific exchange.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::OrdersApi.new
order_new_single_request = OpenapiClient::OrderNewSingleRequest.new # OrderNewSingleRequest | OrderNewSingleRequest object.

begin
  #Send new order
  result = api_instance.v1_orders_post(order_new_single_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling OrdersApi->v1_orders_post: #{e}"
end
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


## v1_orders_status_client_order_id_get

> OrderExecutionReport v1_orders_status_client_order_id_get(client_order_id)

Get order execution report

Get the last order execution report for the specified order. The requested order does not need to be active or opened.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::OrdersApi.new
client_order_id = '6ab36bc1-344d-432e-ac6d-0bf44ee64c2b' # String | The unique identifier of the order assigned by the client.

begin
  #Get order execution report
  result = api_instance.v1_orders_status_client_order_id_get(client_order_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling OrdersApi->v1_orders_status_client_order_id_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_order_id** | **String**| The unique identifier of the order assigned by the client. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

