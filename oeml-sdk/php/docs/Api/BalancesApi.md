# OpenAPI\Client\BalancesApi

All URIs are relative to *http://localhost:3001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1BalancesGet**](BalancesApi.md#v1BalancesGet) | **GET** /v1/balances | Get balances



## v1BalancesGet

> \OpenAPI\Client\Model\Balance[] v1BalancesGet($exchange_id)

Get balances

Returns all of your balances, including available balance.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new OpenAPI\Client\Api\BalancesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$exchange_id = KRAKEN; // string | Exchange name

try {
    $result = $apiInstance->v1BalancesGet($exchange_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BalancesApi->v1BalancesGet: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **string**| Exchange name | [optional]

### Return type

[**\OpenAPI\Client\Model\Balance[]**](../Model/Balance.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

