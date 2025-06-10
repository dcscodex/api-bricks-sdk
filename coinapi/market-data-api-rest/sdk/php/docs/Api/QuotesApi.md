# OpenAPI\Client\QuotesApi

All URIs are relative to https://rest.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1QuotesCurrentGet()**](QuotesApi.md#v1QuotesCurrentGet) | **GET** /v1/quotes/current | Current data |
| [**v1QuotesLatestGet()**](QuotesApi.md#v1QuotesLatestGet) | **GET** /v1/quotes/latest | Latest data |
| [**v1QuotesSymbolIdCurrentGet()**](QuotesApi.md#v1QuotesSymbolIdCurrentGet) | **GET** /v1/quotes/{symbol_id}/current | Current quotes for a specific symbol |
| [**v1QuotesSymbolIdHistoryGet()**](QuotesApi.md#v1QuotesSymbolIdHistoryGet) | **GET** /v1/quotes/{symbol_id}/history | Historical data |
| [**v1QuotesSymbolIdLatestGet()**](QuotesApi.md#v1QuotesSymbolIdLatestGet) | **GET** /v1/quotes/{symbol_id}/latest | Latest quote updates for a specific symbol |


## `v1QuotesCurrentGet()`

```php
v1QuotesCurrentGet($filter_symbol_id): \OpenAPI\Client\Model\V1QuoteTrade[]
```

Current data

Get current quotes for all symbols or for a specific symbol.                :::info  When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned.  :::

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\QuotesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$filter_symbol_id = 'filter_symbol_id_example'; // string | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)

try {
    $result = $apiInstance->v1QuotesCurrentGet($filter_symbol_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuotesApi->v1QuotesCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filter_symbol_id** | **string**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] |

### Return type

[**\OpenAPI\Client\Model\V1QuoteTrade[]**](../Model/V1QuoteTrade.md)

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1QuotesLatestGet()`

```php
v1QuotesLatestGet($filter_symbol_id, $limit): \OpenAPI\Client\Model\V1Quote[]
```

Latest data

Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\QuotesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$filter_symbol_id = 'filter_symbol_id_example'; // string | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
$limit = 100; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    $result = $apiInstance->v1QuotesLatestGet($filter_symbol_id, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuotesApi->v1QuotesLatestGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filter_symbol_id** | **string**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] |
| **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**\OpenAPI\Client\Model\V1Quote[]**](../Model/V1Quote.md)

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1QuotesSymbolIdCurrentGet()`

```php
v1QuotesSymbolIdCurrentGet($symbol_id): \OpenAPI\Client\Model\V1QuoteTrade
```

Current quotes for a specific symbol

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\QuotesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol_id = 'symbol_id_example'; // string | The symbol identifier (from the Metadata -> Symbols)

try {
    $result = $apiInstance->v1QuotesSymbolIdCurrentGet($symbol_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuotesApi->v1QuotesSymbolIdCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol_id** | **string**| The symbol identifier (from the Metadata -&gt; Symbols) | |

### Return type

[**\OpenAPI\Client\Model\V1QuoteTrade**](../Model/V1QuoteTrade.md)

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1QuotesSymbolIdHistoryGet()`

```php
v1QuotesSymbolIdHistoryGet($symbol_id, $date, $time_start, $time_end, $limit): \OpenAPI\Client\Model\V1Quote[]
```

Historical data

Get historical quote updates within requested time range, returned in time ascending order.    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\QuotesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol_id = 'symbol_id_example'; // string | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
$date = 'date_example'; // string | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided)
$time_start = 'time_start_example'; // string | Starting time in ISO 8601
$time_end = 'time_end_example'; // string | Timeseries ending time in ISO 8601
$limit = 100; // int | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    $result = $apiInstance->v1QuotesSymbolIdHistoryGet($symbol_id, $date, $time_start, $time_end, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuotesApi->v1QuotesSymbolIdHistoryGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol_id** | **string**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | |
| **date** | **string**| Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | [optional] |
| **time_start** | **string**| Starting time in ISO 8601 | [optional] |
| **time_end** | **string**| Timeseries ending time in ISO 8601 | [optional] |
| **limit** | **int**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**\OpenAPI\Client\Model\V1Quote[]**](../Model/V1Quote.md)

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1QuotesSymbolIdLatestGet()`

```php
v1QuotesSymbolIdLatestGet($symbol_id, $limit): \OpenAPI\Client\Model\V1Quote[]
```

Latest quote updates for a specific symbol

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\QuotesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol_id = 'symbol_id_example'; // string | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
$limit = 100; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    $result = $apiInstance->v1QuotesSymbolIdLatestGet($symbol_id, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuotesApi->v1QuotesSymbolIdLatestGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol_id** | **string**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | |
| **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**\OpenAPI\Client\Model\V1Quote[]**](../Model/V1Quote.md)

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
