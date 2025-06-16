# OpenAPI\Client\TradesApi

All URIs are relative to https://rest.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1TradesLatestGet()**](TradesApi.md#v1TradesLatestGet) | **GET** /v1/trades/latest | Latest data |
| [**v1TradesSymbolIdHistoryGet()**](TradesApi.md#v1TradesSymbolIdHistoryGet) | **GET** /v1/trades/{symbol_id}/history | Historical data |
| [**v1TradesSymbolIdLatestGet()**](TradesApi.md#v1TradesSymbolIdLatestGet) | **GET** /v1/trades/{symbol_id}/latest | Latest data by symbol_id |


## `v1TradesLatestGet()`

```php
v1TradesLatestGet($filter_symbol_id, $include_id, $limit): \OpenAPI\Client\Model\V1Trade[]
```

Latest data

Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: APIKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');

// Configure Bearer (JWT) authorization: JWT
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TradesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$filter_symbol_id = 'filter_symbol_id_example'; // string | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
$include_id = false; // bool | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.
$limit = 100; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    $result = $apiInstance->v1TradesLatestGet($filter_symbol_id, $include_id, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TradesApi->v1TradesLatestGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filter_symbol_id** | **string**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] |
| **include_id** | **bool**| Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to false] |
| **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**\OpenAPI\Client\Model\V1Trade[]**](../Model/V1Trade.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1TradesSymbolIdHistoryGet()`

```php
v1TradesSymbolIdHistoryGet($symbol_id, $date, $time_start, $time_end, $limit, $include_id): \OpenAPI\Client\Model\V1Trade[]
```

Historical data

Get history transactions from specific symbol, returned in time ascending order.  :::warning The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the 'date' parameter instead for querying data for a specific day without filter. :::

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: APIKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');

// Configure Bearer (JWT) authorization: JWT
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TradesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol_id = 'symbol_id_example'; // string | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
$date = 'date_example'; // string | Date in ISO 8601, returned data is for the whole given day (required if 'time_start' is not provided)
$time_start = 'time_start_example'; // string | Starting time in ISO 8601
$time_end = 'time_end_example'; // string | Timeseries ending time in ISO 8601
$limit = 100; // int | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
$include_id = false; // bool | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.

try {
    $result = $apiInstance->v1TradesSymbolIdHistoryGet($symbol_id, $date, $time_start, $time_end, $limit, $include_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TradesApi->v1TradesSymbolIdHistoryGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol_id** | **string**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | |
| **date** | **string**| Date in ISO 8601, returned data is for the whole given day (required if &#39;time_start&#39; is not provided) | [optional] |
| **time_start** | **string**| Starting time in ISO 8601 | [optional] |
| **time_end** | **string**| Timeseries ending time in ISO 8601 | [optional] |
| **limit** | **int**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |
| **include_id** | **bool**| Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to false] |

### Return type

[**\OpenAPI\Client\Model\V1Trade[]**](../Model/V1Trade.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1TradesSymbolIdLatestGet()`

```php
v1TradesSymbolIdLatestGet($symbol_id, $limit, $include_id): \OpenAPI\Client\Model\V1Trade[]
```

Latest data by symbol_id

Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: APIKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');

// Configure Bearer (JWT) authorization: JWT
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TradesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol_id = 'symbol_id_example'; // string | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
$limit = 100; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
$include_id = false; // bool | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.

try {
    $result = $apiInstance->v1TradesSymbolIdLatestGet($symbol_id, $limit, $include_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TradesApi->v1TradesSymbolIdLatestGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol_id** | **string**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | |
| **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |
| **include_id** | **bool**| Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to false] |

### Return type

[**\OpenAPI\Client\Model\V1Trade[]**](../Model/V1Trade.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
