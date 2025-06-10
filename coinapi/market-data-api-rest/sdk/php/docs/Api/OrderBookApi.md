# OpenAPI\Client\OrderBookApi

All URIs are relative to https://rest.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1OrderbooksSymbolIdCurrentGet()**](OrderBookApi.md#v1OrderbooksSymbolIdCurrentGet) | **GET** /v1/orderbooks/{symbol_id}/current | Get current order book |
| [**v1OrderbooksSymbolIdDepthCurrentGet()**](OrderBookApi.md#v1OrderbooksSymbolIdDepthCurrentGet) | **GET** /v1/orderbooks/{symbol_id}/depth/current | Current depth of the order book |
| [**v1OrderbooksSymbolIdHistoryGet()**](OrderBookApi.md#v1OrderbooksSymbolIdHistoryGet) | **GET** /v1/orderbooks/{symbol_id}/history | Historical data |
| [**v1OrderbooksSymbolIdLatestGet()**](OrderBookApi.md#v1OrderbooksSymbolIdLatestGet) | **GET** /v1/orderbooks/{symbol_id}/latest | Latest data |


## `v1OrderbooksSymbolIdCurrentGet()`

```php
v1OrderbooksSymbolIdCurrentGet($symbol_id, $limit_levels): \OpenAPI\Client\Model\V1OrderBookBase
```

Get current order book

Retrieves the current order book for the specified symbol.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\OrderBookApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol_id = 'symbol_id_example'; // string | The symbol ID (from the Metadata -> Symbols)
$limit_levels = 56; // int | The maximum number of levels to include in the response.

try {
    $result = $apiInstance->v1OrderbooksSymbolIdCurrentGet($symbol_id, $limit_levels);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrderBookApi->v1OrderbooksSymbolIdCurrentGet: ', $e->getMessage(), PHP_EOL;
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

## `v1OrderbooksSymbolIdDepthCurrentGet()`

```php
v1OrderbooksSymbolIdDepthCurrentGet($symbol_id, $limit_levels): \OpenAPI\Client\Model\V1OrderBookDepth
```

Current depth of the order book

Retrieves the current depth of the order book for the specified symbol.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\OrderBookApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol_id = 'symbol_id_example'; // string | The symbol ID (from the Metadata -> Symbols)
$limit_levels = 56; // int | The maximum number of levels to include in the response.

try {
    $result = $apiInstance->v1OrderbooksSymbolIdDepthCurrentGet($symbol_id, $limit_levels);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrderBookApi->v1OrderbooksSymbolIdDepthCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol_id** | **string**| The symbol ID (from the Metadata -&gt; Symbols) | |
| **limit_levels** | **int**| The maximum number of levels to include in the response. | [optional] |

### Return type

[**\OpenAPI\Client\Model\V1OrderBookDepth**](../Model/V1OrderBookDepth.md)

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1OrderbooksSymbolIdHistoryGet()`

```php
v1OrderbooksSymbolIdHistoryGet($symbol_id, $date, $time_start, $time_end, $limit, $limit_levels): \OpenAPI\Client\Model\V1OrderBook[]
```

Historical data

Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\OrderBookApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol_id = 'symbol_id_example'; // string | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
$date = 'date_example'; // string | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided)
$time_start = 'time_start_example'; // string | Starting time in ISO 8601 (deprecated, use 'date' instead)
$time_end = 'time_end_example'; // string | Timeseries ending time in ISO 8601 (deprecated, use 'date' instead)
$limit = 100; // int | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
$limit_levels = 56; // int | Maximum amount of levels from each side of the book to include in response (optional)

try {
    $result = $apiInstance->v1OrderbooksSymbolIdHistoryGet($symbol_id, $date, $time_start, $time_end, $limit, $limit_levels);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrderBookApi->v1OrderbooksSymbolIdHistoryGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol_id** | **string**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | |
| **date** | **string**| Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | [optional] |
| **time_start** | **string**| Starting time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional] |
| **time_end** | **string**| Timeseries ending time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional] |
| **limit** | **int**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |
| **limit_levels** | **int**| Maximum amount of levels from each side of the book to include in response (optional) | [optional] |

### Return type

[**\OpenAPI\Client\Model\V1OrderBook[]**](../Model/V1OrderBook.md)

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1OrderbooksSymbolIdLatestGet()`

```php
v1OrderbooksSymbolIdLatestGet($symbol_id, $limit, $limit_levels): \OpenAPI\Client\Model\V1OrderBook[]
```

Latest data

Get latest order book snapshots for a specific symbol, returned in time descending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\OrderBookApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol_id = 'symbol_id_example'; // string | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
$limit = 100; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
$limit_levels = 56; // int | Maximum amount of levels from each side of the book to include in response (optional)

try {
    $result = $apiInstance->v1OrderbooksSymbolIdLatestGet($symbol_id, $limit, $limit_levels);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrderBookApi->v1OrderbooksSymbolIdLatestGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol_id** | **string**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | |
| **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |
| **limit_levels** | **int**| Maximum amount of levels from each side of the book to include in response (optional) | [optional] |

### Return type

[**\OpenAPI\Client\Model\V1OrderBook[]**](../Model/V1OrderBook.md)

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
