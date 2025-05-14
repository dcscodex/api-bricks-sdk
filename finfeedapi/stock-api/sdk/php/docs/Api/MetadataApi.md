# OpenAPI\Client\MetadataApi

All URIs are relative to https://api-historical.stock.finfeedapi.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1ExchangesGet()**](MetadataApi.md#v1ExchangesGet) | **GET** /v1/exchanges | List of exchanges |
| [**v1SymbolsExchangeIdGet()**](MetadataApi.md#v1SymbolsExchangeIdGet) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange |


## `v1ExchangesGet()`

```php
v1ExchangesGet(): \OpenAPI\Client\Model\FinFeedAPIExchangeModel[]
```

List of exchanges

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\MetadataApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->v1ExchangesGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetadataApi->v1ExchangesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\FinFeedAPIExchangeModel[]**](../Model/FinFeedAPIExchangeModel.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1SymbolsExchangeIdGet()`

```php
v1SymbolsExchangeIdGet($exchange_id): \OpenAPI\Client\Model\FinFeedAPISymbolModel[]
```

List of symbols for the exchange

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\MetadataApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$exchange_id = 'exchange_id_example'; // string

try {
    $result = $apiInstance->v1SymbolsExchangeIdGet($exchange_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetadataApi->v1SymbolsExchangeIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchange_id** | **string**|  | |

### Return type

[**\OpenAPI\Client\Model\FinFeedAPISymbolModel[]**](../Model/FinFeedAPISymbolModel.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
