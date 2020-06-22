# OpenAPI\Client\OrdersApi

All URIs are relative to *http://localhost:3001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrdersCancelAllPost**](OrdersApi.md#v1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all order
[**v1OrdersCancelPost**](OrdersApi.md#v1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order
[**v1OrdersGet**](OrdersApi.md#v1OrdersGet) | **GET** /v1/orders | Get orders
[**v1OrdersPost**](OrdersApi.md#v1OrdersPost) | **POST** /v1/orders | Create new order



## v1OrdersCancelAllPost

> \OpenAPI\Client\Model\MessagesOk v1OrdersCancelAllPost($cancel_all_order)

Cancel all order

Cancel all existing order.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new OpenAPI\Client\Api\OrdersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$cancel_all_order = new \OpenAPI\Client\Model\CancelAllOrder(); // \OpenAPI\Client\Model\CancelAllOrder | 

try {
    $result = $apiInstance->v1OrdersCancelAllPost($cancel_all_order);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrdersApi->v1OrdersCancelAllPost: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancel_all_order** | [**\OpenAPI\Client\Model\CancelAllOrder**](../Model/CancelAllOrder.md)|  |

### Return type

[**\OpenAPI\Client\Model\MessagesOk**](../Model/MessagesOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## v1OrdersCancelPost

> \OpenAPI\Client\Model\OrderLive v1OrdersCancelPost($cancel_order)

Cancel order

Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new OpenAPI\Client\Api\OrdersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$cancel_order = new \OpenAPI\Client\Model\CancelOrder(); // \OpenAPI\Client\Model\CancelOrder | 

try {
    $result = $apiInstance->v1OrdersCancelPost($cancel_order);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrdersApi->v1OrdersCancelPost: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancel_order** | [**\OpenAPI\Client\Model\CancelOrder**](../Model/CancelOrder.md)|  |

### Return type

[**\OpenAPI\Client\Model\OrderLive**](../Model/OrderLive.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## v1OrdersGet

> \OpenAPI\Client\Model\Order[] v1OrdersGet($exchange_id)

Get orders

List your current open orders.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new OpenAPI\Client\Api\OrdersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$exchange_id = KRAKEN; // string | Exchange name

try {
    $result = $apiInstance->v1OrdersGet($exchange_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrdersApi->v1OrdersGet: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **string**| Exchange name | [optional]

### Return type

[**\OpenAPI\Client\Model\Order[]**](../Model/Order.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## v1OrdersPost

> \OpenAPI\Client\Model\OrderLive v1OrdersPost($new_order)

Create new order

You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new OpenAPI\Client\Api\OrdersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$new_order = new \OpenAPI\Client\Model\NewOrder(); // \OpenAPI\Client\Model\NewOrder | 

try {
    $result = $apiInstance->v1OrdersPost($new_order);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrdersApi->v1OrdersPost: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_order** | [**\OpenAPI\Client\Model\NewOrder**](../Model/NewOrder.md)|  |

### Return type

[**\OpenAPI\Client\Model\OrderLive**](../Model/OrderLive.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

