# OmsRestApi.OrdersApi

All URIs are relative to *http://localhost:3001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrdersCancelAllPost**](OrdersApi.md#v1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all order
[**v1OrdersCancelPost**](OrdersApi.md#v1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order
[**v1OrdersGet**](OrdersApi.md#v1OrdersGet) | **GET** /v1/orders | Get orders
[**v1OrdersPost**](OrdersApi.md#v1OrdersPost) | **POST** /v1/orders | Create new order



## v1OrdersCancelAllPost

> MessagesOk v1OrdersCancelAllPost(cancelAllOrder)

Cancel all order

Cancel all existing order.

### Example

```javascript
import OmsRestApi from 'oms_rest_api';

let apiInstance = new OmsRestApi.OrdersApi();
let cancelAllOrder = new OmsRestApi.CancelAllOrder(); // CancelAllOrder | 
apiInstance.v1OrdersCancelAllPost(cancelAllOrder, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## v1OrdersCancelPost

> OrderLive v1OrdersCancelPost(cancelOrder)

Cancel order

Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID.

### Example

```javascript
import OmsRestApi from 'oms_rest_api';

let apiInstance = new OmsRestApi.OrdersApi();
let cancelOrder = new OmsRestApi.CancelOrder(); // CancelOrder | 
apiInstance.v1OrdersCancelPost(cancelOrder, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## v1OrdersGet

> [Order] v1OrdersGet(opts)

Get orders

List your current open orders.

### Example

```javascript
import OmsRestApi from 'oms_rest_api';

let apiInstance = new OmsRestApi.OrdersApi();
let opts = {
  'exchangeId': KRAKEN // String | Exchange name
};
apiInstance.v1OrdersGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange name | [optional] 

### Return type

[**[Order]**](Order.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1OrdersPost

> OrderLive v1OrdersPost(newOrder)

Create new order

You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds.

### Example

```javascript
import OmsRestApi from 'oms_rest_api';

let apiInstance = new OmsRestApi.OrdersApi();
let newOrder = new OmsRestApi.NewOrder(); // NewOrder | 
apiInstance.v1OrdersPost(newOrder, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

