# OpenAPI\Client\OrderBookL3Api

All URIs are relative to https://rest.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1Orderbooks3CurrentGet()**](OrderBookL3Api.md#v1Orderbooks3CurrentGet) | **GET** /v1/orderbooks3/current | Current order books |
| [**v1Orderbooks3SymbolIdCurrentGet()**](OrderBookL3Api.md#v1Orderbooks3SymbolIdCurrentGet) | **GET** /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id |


## `v1Orderbooks3CurrentGet()`

```php
v1Orderbooks3CurrentGet($filter_symbol_id, $limit_levels): \OpenAPI\Client\Model\V1OrderBookBase[]
```

Current order books

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\OrderBookL3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$filter_symbol_id = 'filter_symbol_id_example'; // string | Comma or semicolon delimited parts of symbol identifier used to filter the response.
$limit_levels = 56; // int | The maximum number of levels to include in the response.

try {
    $result = $apiInstance->v1Orderbooks3CurrentGet($filter_symbol_id, $limit_levels);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrderBookL3Api->v1Orderbooks3CurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filter_symbol_id** | **string**| Comma or semicolon delimited parts of symbol identifier used to filter the response. | [optional] |
| **limit_levels** | **int**| The maximum number of levels to include in the response. | [optional] |

### Return type

[**\OpenAPI\Client\Model\V1OrderBookBase[]**](../Model/V1OrderBookBase.md)

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1Orderbooks3SymbolIdCurrentGet()`

```php
v1Orderbooks3SymbolIdCurrentGet($symbol_id, $limit_levels): \OpenAPI\Client\Model\V1OrderBookBase
```

Current order book by symbol_id

Retrieves the current order book for the specified symbol.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\OrderBookL3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol_id = 'symbol_id_example'; // string | The symbol ID (from the Metadata -> Symbols)
$limit_levels = 56; // int | The maximum number of levels to include in the response.

try {
    $result = $apiInstance->v1Orderbooks3SymbolIdCurrentGet($symbol_id, $limit_levels);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrderBookL3Api->v1Orderbooks3SymbolIdCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol_id** | **string**| The symbol ID (from the Metadata -&gt; Symbols) | |
| **limit_levels** | **int**| The maximum number of levels to include in the response. | [optional] |

### Return type

[**\OpenAPI\Client\Model\V1OrderBookBase**](../Model/V1OrderBookBase.md)

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
