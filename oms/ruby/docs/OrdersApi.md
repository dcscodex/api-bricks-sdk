# OpenapiClient::OrdersApi

All URIs are relative to *http://localhost:3001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_orders_cancel_all_post**](OrdersApi.md#v1_orders_cancel_all_post) | **POST** /v1/orders/cancel/all | Cancel all order
[**v1_orders_cancel_post**](OrdersApi.md#v1_orders_cancel_post) | **POST** /v1/orders/cancel | Cancel order
[**v1_orders_get**](OrdersApi.md#v1_orders_get) | **GET** /v1/orders | Get orders
[**v1_orders_post**](OrdersApi.md#v1_orders_post) | **POST** /v1/orders | Create new order



## v1_orders_cancel_all_post

> MessagesOk v1_orders_cancel_all_post(cancel_all_order)

Cancel all order

Cancel all existing order.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::OrdersApi.new
cancel_all_order = OpenapiClient::CancelAllOrder.new # CancelAllOrder | 

begin
  #Cancel all order
  result = api_instance.v1_orders_cancel_all_post(cancel_all_order)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling OrdersApi->v1_orders_cancel_all_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancel_all_order** | [**CancelAllOrder**](CancelAllOrder.md)|  | 

### Return type

[**MessagesOk**](MessagesOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_orders_cancel_post

> OrderLive v1_orders_cancel_post(cancel_order)

Cancel order

Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::OrdersApi.new
cancel_order = OpenapiClient::CancelOrder.new # CancelOrder | 

begin
  #Cancel order
  result = api_instance.v1_orders_cancel_post(cancel_order)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling OrdersApi->v1_orders_cancel_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancel_order** | [**CancelOrder**](CancelOrder.md)|  | 

### Return type

[**OrderLive**](OrderLive.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json


## v1_orders_get

> Array&lt;Order&gt; v1_orders_get(opts)

Get orders

List your current open orders.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::OrdersApi.new
opts = {
  exchange_id: 'KRAKEN' # String | Exchange name
}

begin
  #Get orders
  result = api_instance.v1_orders_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling OrdersApi->v1_orders_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **String**| Exchange name | [optional] 

### Return type

[**Array&lt;Order&gt;**](Order.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_orders_post

> OrderLive v1_orders_post(new_order)

Create new order

You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::OrdersApi.new
new_order = OpenapiClient::NewOrder.new # NewOrder | 

begin
  #Create new order
  result = api_instance.v1_orders_post(new_order)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling OrdersApi->v1_orders_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_order** | [**NewOrder**](NewOrder.md)|  | 

### Return type

[**OrderLive**](OrderLive.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json

