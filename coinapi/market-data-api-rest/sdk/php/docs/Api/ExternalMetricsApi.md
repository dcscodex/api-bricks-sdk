# OpenAPI\Client\ExternalMetricsApi

All URIs are relative to https://rest.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1ExternalmetricsAssetHistoryGet()**](ExternalMetricsApi.md#v1ExternalmetricsAssetHistoryGet) | **GET** /v1/externalmetrics/asset/history | Historical metrics for the asset from external sources |
| [**v1ExternalmetricsAssetListingGet()**](ExternalMetricsApi.md#v1ExternalmetricsAssetListingGet) | **GET** /v1/externalmetrics/asset/listing | Listing of metrics available for specific asset |
| [**v1ExternalmetricsAssetsGet()**](ExternalMetricsApi.md#v1ExternalmetricsAssetsGet) | **GET** /v1/externalmetrics/assets | Listing of all supported external assets |
| [**v1ExternalmetricsChainHistoryGet()**](ExternalMetricsApi.md#v1ExternalmetricsChainHistoryGet) | **GET** /v1/externalmetrics/chain/history | Historical metrics for the chain from external sources |
| [**v1ExternalmetricsChainListingGet()**](ExternalMetricsApi.md#v1ExternalmetricsChainListingGet) | **GET** /v1/externalmetrics/chain/listing | Listing of metrics available for specific chain |
| [**v1ExternalmetricsChainsGet()**](ExternalMetricsApi.md#v1ExternalmetricsChainsGet) | **GET** /v1/externalmetrics/chains | Listing of all supported external chains |
| [**v1ExternalmetricsExchangeHistoryGet()**](ExternalMetricsApi.md#v1ExternalmetricsExchangeHistoryGet) | **GET** /v1/externalmetrics/exchange/history | Historical metrics for the exchange from both external and internal sources |
| [**v1ExternalmetricsExchangeListingGet()**](ExternalMetricsApi.md#v1ExternalmetricsExchangeListingGet) | **GET** /v1/externalmetrics/exchange/listing | Listing of metrics available for specific exchange (both external and generic) |
| [**v1ExternalmetricsExchangesGet()**](ExternalMetricsApi.md#v1ExternalmetricsExchangesGet) | **GET** /v1/externalmetrics/exchanges | Listing of all supported external exchanges |
| [**v1ExternalmetricsListingGet()**](ExternalMetricsApi.md#v1ExternalmetricsListingGet) | **GET** /v1/externalmetrics/listing | Listing of all supported metrics (both external and generic) |


## `v1ExternalmetricsAssetHistoryGet()`

```php
v1ExternalmetricsAssetHistoryGet($metric_id, $asset_id, $time_start, $time_end, $time_format, $period_id, $limit): object[]
```

Historical metrics for the asset from external sources

Get asset metrics history from external data providers. Data is typically aggregated daily.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ExternalMetricsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$metric_id = 'metric_id_example'; // string | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key)
$asset_id = 'asset_id_example'; // string | Asset identifier (e.g., `USDC`, `USDT` - from supported assets list)
$time_start = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Starting time in ISO 8601
$time_end = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Ending time in ISO 8601
$time_format = 'time_format_example'; // string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
$period_id = 'period_id_example'; // string | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
$limit = 100; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    $result = $apiInstance->v1ExternalmetricsAssetHistoryGet($metric_id, $asset_id, $time_start, $time_end, $time_format, $period_id, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExternalMetricsApi->v1ExternalmetricsAssetHistoryGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **metric_id** | **string**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60; - internal metric key) | |
| **asset_id** | **string**| Asset identifier (e.g., &#x60;USDC&#x60;, &#x60;USDT&#x60; - from supported assets list) | |
| **time_start** | **\DateTime**| Starting time in ISO 8601 | [optional] |
| **time_end** | **\DateTime**| Ending time in ISO 8601 | [optional] |
| **time_format** | **string**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **period_id** | **string**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] |
| **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

**object[]**

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1ExternalmetricsAssetListingGet()`

```php
v1ExternalmetricsAssetListingGet($asset_id): \OpenAPI\Client\Model\V1MetricInfo[]
```

Listing of metrics available for specific asset

Get all metrics that are actually available for the specified asset from external providers.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ExternalMetricsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$asset_id = 'asset_id_example'; // string | Asset identifier (e.g., USDC, USDT)

try {
    $result = $apiInstance->v1ExternalmetricsAssetListingGet($asset_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExternalMetricsApi->v1ExternalmetricsAssetListingGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **asset_id** | **string**| Asset identifier (e.g., USDC, USDT) | |

### Return type

[**\OpenAPI\Client\Model\V1MetricInfo[]**](../Model/V1MetricInfo.md)

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1ExternalmetricsAssetsGet()`

```php
v1ExternalmetricsAssetsGet(): \OpenAPI\Client\Model\V1ExternalAsset[]
```

Listing of all supported external assets

Get all assets (primarily stablecoins) supported by external data providers.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ExternalMetricsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->v1ExternalmetricsAssetsGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExternalMetricsApi->v1ExternalmetricsAssetsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\V1ExternalAsset[]**](../Model/V1ExternalAsset.md)

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1ExternalmetricsChainHistoryGet()`

```php
v1ExternalmetricsChainHistoryGet($metric_id, $chain_id, $time_start, $time_end, $time_format, $period_id, $limit): object[]
```

Historical metrics for the chain from external sources

Get chain metrics history from external data providers. Data is typically aggregated daily.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ExternalMetricsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$metric_id = 'metric_id_example'; // string | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key)
$chain_id = 'chain_id_example'; // string | Chain identifier (e.g., `Ethereum`, `Arbitrum` - from supported chains list)
$time_start = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Starting time in ISO 8601
$time_end = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Ending time in ISO 8601
$time_format = 'time_format_example'; // string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
$period_id = 'period_id_example'; // string | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
$limit = 100; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    $result = $apiInstance->v1ExternalmetricsChainHistoryGet($metric_id, $chain_id, $time_start, $time_end, $time_format, $period_id, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExternalMetricsApi->v1ExternalmetricsChainHistoryGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **metric_id** | **string**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60; - internal metric key) | |
| **chain_id** | **string**| Chain identifier (e.g., &#x60;Ethereum&#x60;, &#x60;Arbitrum&#x60; - from supported chains list) | |
| **time_start** | **\DateTime**| Starting time in ISO 8601 | [optional] |
| **time_end** | **\DateTime**| Ending time in ISO 8601 | [optional] |
| **time_format** | **string**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **period_id** | **string**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] |
| **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

**object[]**

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1ExternalmetricsChainListingGet()`

```php
v1ExternalmetricsChainListingGet($chain_id): \OpenAPI\Client\Model\V1MetricInfo[]
```

Listing of metrics available for specific chain

Get all metrics that are actually available for the specified blockchain chain from external providers.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ExternalMetricsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$chain_id = 'chain_id_example'; // string | Chain identifier (e.g., ETHEREUM, ARBITRUM)

try {
    $result = $apiInstance->v1ExternalmetricsChainListingGet($chain_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExternalMetricsApi->v1ExternalmetricsChainListingGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**| Chain identifier (e.g., ETHEREUM, ARBITRUM) | |

### Return type

[**\OpenAPI\Client\Model\V1MetricInfo[]**](../Model/V1MetricInfo.md)

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1ExternalmetricsChainsGet()`

```php
v1ExternalmetricsChainsGet(): \OpenAPI\Client\Model\V1Chain[]
```

Listing of all supported external chains

Get all blockchain chains supported by external data providers.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ExternalMetricsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->v1ExternalmetricsChainsGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExternalMetricsApi->v1ExternalmetricsChainsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\V1Chain[]**](../Model/V1Chain.md)

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1ExternalmetricsExchangeHistoryGet()`

```php
v1ExternalmetricsExchangeHistoryGet($metric_id, $exchange_id, $time_start, $time_end, $time_format, $period_id, $limit): object[]
```

Historical metrics for the exchange from both external and internal sources

Get exchange metrics history from external data providers or internal sources based on metric type.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ExternalMetricsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$metric_id = 'metric_id_example'; // string | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` for external, or generic metric IDs)
$exchange_id = 'exchange_id_example'; // string | Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`)
$time_start = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Starting time in ISO 8601
$time_end = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Ending time in ISO 8601
$time_format = 'time_format_example'; // string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
$period_id = 'period_id_example'; // string | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
$limit = 100; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    $result = $apiInstance->v1ExternalmetricsExchangeHistoryGet($metric_id, $exchange_id, $time_start, $time_end, $time_format, $period_id, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExternalMetricsApi->v1ExternalmetricsExchangeHistoryGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **metric_id** | **string**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60; for external, or generic metric IDs) | |
| **exchange_id** | **string**| Exchange identifier (e.g., &#x60;BINANCE&#x60;, &#x60;UNISWAP-V3-ETHEREUM&#x60;) | |
| **time_start** | **\DateTime**| Starting time in ISO 8601 | [optional] |
| **time_end** | **\DateTime**| Ending time in ISO 8601 | [optional] |
| **time_format** | **string**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **period_id** | **string**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] |
| **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

**object[]**

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1ExternalmetricsExchangeListingGet()`

```php
v1ExternalmetricsExchangeListingGet($exchange_id): \OpenAPI\Client\Model\V1MetricInfo[]
```

Listing of metrics available for specific exchange (both external and generic)

Get all metrics that are actually available for the specified exchange from both external providers and internal sources.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ExternalMetricsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$exchange_id = 'exchange_id_example'; // string | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)

try {
    $result = $apiInstance->v1ExternalmetricsExchangeListingGet($exchange_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExternalMetricsApi->v1ExternalmetricsExchangeListingGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchange_id** | **string**| Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) | |

### Return type

[**\OpenAPI\Client\Model\V1MetricInfo[]**](../Model/V1MetricInfo.md)

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1ExternalmetricsExchangesGet()`

```php
v1ExternalmetricsExchangesGet(): \OpenAPI\Client\Model\V1ExternalExchange[]
```

Listing of all supported external exchanges

Get all exchanges that have mapping to external data providers for metrics that actually have sources.  Only returns exchanges that are properly mapped to external protocols for metrics with defined sources.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ExternalMetricsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->v1ExternalmetricsExchangesGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExternalMetricsApi->v1ExternalmetricsExchangesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\V1ExternalExchange[]**](../Model/V1ExternalExchange.md)

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1ExternalmetricsListingGet()`

```php
v1ExternalmetricsListingGet(): \OpenAPI\Client\Model\V1MetricInfo[]
```

Listing of all supported metrics (both external and generic)

Get all metrics available from external data providers and internal generic metrics.  External metrics have detailed descriptions, while generic metrics are marked as such.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ExternalMetricsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->v1ExternalmetricsListingGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExternalMetricsApi->v1ExternalmetricsListingGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\V1MetricInfo[]**](../Model/V1MetricInfo.md)

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
