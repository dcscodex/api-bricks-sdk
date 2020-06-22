# WWW::OpenAPIClient::OrdersApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::OrdersApi;
```

All URIs are relative to *http://localhost:3001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_orders_cancel_all_post**](OrdersApi.md#v1_orders_cancel_all_post) | **POST** /v1/orders/cancel/all | Cancel all order
[**v1_orders_cancel_post**](OrdersApi.md#v1_orders_cancel_post) | **POST** /v1/orders/cancel | Cancel order
[**v1_orders_get**](OrdersApi.md#v1_orders_get) | **GET** /v1/orders | Get orders
[**v1_orders_post**](OrdersApi.md#v1_orders_post) | **POST** /v1/orders | Create new order


# **v1_orders_cancel_all_post**
> MessagesOk v1_orders_cancel_all_post(cancel_all_order => $cancel_all_order)

Cancel all order

Cancel all existing order.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrdersApi;
my $api_instance = WWW::OpenAPIClient::OrdersApi->new(
);

my $cancel_all_order = WWW::OpenAPIClient::Object::CancelAllOrder->new(); # CancelAllOrder | 

eval { 
    my $result = $api_instance->v1_orders_cancel_all_post(cancel_all_order => $cancel_all_order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrdersApi->v1_orders_cancel_all_post: $@\n";
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_cancel_post**
> OrderLive v1_orders_cancel_post(cancel_order => $cancel_order)

Cancel order

Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrdersApi;
my $api_instance = WWW::OpenAPIClient::OrdersApi->new(
);

my $cancel_order = WWW::OpenAPIClient::Object::CancelOrder->new(); # CancelOrder | 

eval { 
    my $result = $api_instance->v1_orders_cancel_post(cancel_order => $cancel_order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrdersApi->v1_orders_cancel_post: $@\n";
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_get**
> ARRAY[Order] v1_orders_get(exchange_id => $exchange_id)

Get orders

List your current open orders.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrdersApi;
my $api_instance = WWW::OpenAPIClient::OrdersApi->new(
);

my $exchange_id = KRAKEN; # string | Exchange name

eval { 
    my $result = $api_instance->v1_orders_get(exchange_id => $exchange_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrdersApi->v1_orders_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **string**| Exchange name | [optional] 

### Return type

[**ARRAY[Order]**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_post**
> OrderLive v1_orders_post(new_order => $new_order)

Create new order

You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OrdersApi;
my $api_instance = WWW::OpenAPIClient::OrdersApi->new(
);

my $new_order = WWW::OpenAPIClient::Object::NewOrder->new(); # NewOrder | 

eval { 
    my $result = $api_instance->v1_orders_post(new_order => $new_order);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrdersApi->v1_orders_post: $@\n";
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

