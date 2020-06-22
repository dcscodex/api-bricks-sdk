# ORDERS_API

All URIs are relative to *http://localhost:3001*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**v1_orders_cancel_all_post**](ORDERS_API.md#v1_orders_cancel_all_post) | **Post** /v1/orders/cancel/all | Cancel all order
[**v1_orders_cancel_post**](ORDERS_API.md#v1_orders_cancel_post) | **Post** /v1/orders/cancel | Cancel order
[**v1_orders_get**](ORDERS_API.md#v1_orders_get) | **Get** /v1/orders | Get orders
[**v1_orders_post**](ORDERS_API.md#v1_orders_post) | **Post** /v1/orders | Create new order


# **v1_orders_cancel_all_post**
> v1_orders_cancel_all_post (cancel_all_order: CANCEL_ALL_ORDER ): detachable MESSAGES_OK
	

Cancel all order

Cancel all existing order.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancel_all_order** | [**CANCEL_ALL_ORDER**](CANCEL_ALL_ORDER.md)|  | 

### Return type

[**MESSAGES_OK**](messagesOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_cancel_post**
> v1_orders_cancel_post (cancel_order: CANCEL_ORDER ): detachable ORDER_LIVE
	

Cancel order

Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancel_order** | [**CANCEL_ORDER**](CANCEL_ORDER.md)|  | 

### Return type

[**ORDER_LIVE**](orderLive.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_get**
> v1_orders_get (exchange_id:  detachable STRING_32 ): detachable LIST [ORDER]
	

Get orders

List your current open orders.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **STRING_32**| Exchange name | [optional] [default to null]

### Return type

[**LIST [ORDER]**](order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_post**
> v1_orders_post (new_order: NEW_ORDER ): detachable ORDER_LIVE
	

Create new order

You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_order** | [**NEW_ORDER**](NEW_ORDER.md)|  | 

### Return type

[**ORDER_LIVE**](orderLive.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

