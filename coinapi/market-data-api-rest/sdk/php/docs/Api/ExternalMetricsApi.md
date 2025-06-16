# OpenAPI\Client\ExternalMetricsApi

All URIs are relative to https://rest.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1ExternalmetricsAssetHistoryGet()**](ExternalMetricsApi.md#v1ExternalmetricsAssetHistoryGet) | **GET** /v1/externalmetrics/asset/history | Historical metrics for the asset |
| [**v1ExternalmetricsAssetListingGet()**](ExternalMetricsApi.md#v1ExternalmetricsAssetListingGet) | **GET** /v1/externalmetrics/asset/listing | Listing of metrics available for specific asset |
| [**v1ExternalmetricsChainHistoryGet()**](ExternalMetricsApi.md#v1ExternalmetricsChainHistoryGet) | **GET** /v1/externalmetrics/chain/history | Historical metrics for the chain |
| [**v1ExternalmetricsChainListingGet()**](ExternalMetricsApi.md#v1ExternalmetricsChainListingGet) | **GET** /v1/externalmetrics/chain/listing | Listing of metrics available for specific chain |
| [**v1ExternalmetricsExchangeHistoryGet()**](ExternalMetricsApi.md#v1ExternalmetricsExchangeHistoryGet) | **GET** /v1/externalmetrics/exchange/history | Historical metrics for the exchange |
| [**v1ExternalmetricsExchangeListingGet()**](ExternalMetricsApi.md#v1ExternalmetricsExchangeListingGet) | **GET** /v1/externalmetrics/exchange/listing | Listing of metrics available for specific exchange |
| [**v1ExternalmetricsListingGet()**](ExternalMetricsApi.md#v1ExternalmetricsListingGet) | **GET** /v1/externalmetrics/listing | Listing of all supported metrics |


## `v1ExternalmetricsAssetHistoryGet()`

```php
v1ExternalmetricsAssetHistoryGet($metric_id, $asset_id, $time_start, $time_end, $time_format, $period_id, $limit): object[]
```

Historical metrics for the asset

Get asset metrics history.

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


$apiInstance = new OpenAPI\Client\Api\ExternalMetricsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$metric_id = 'metric_id_example'; // string | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
$asset_id = 'asset_id_example'; // string | Asset identifier (e.g., `USDC`, `USDT`)
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
| **metric_id** | **string**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | |
| **asset_id** | **string**| Asset identifier (e.g., &#x60;USDC&#x60;, &#x60;USDT&#x60;) | |
| **time_start** | **\DateTime**| Starting time in ISO 8601 | [optional] |
| **time_end** | **\DateTime**| Ending time in ISO 8601 | [optional] |
| **time_format** | **string**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **period_id** | **string**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] |
| **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

**object[]**

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

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

Get all metrics that are actually available for the specified asset.

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

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

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

Historical metrics for the chain

Get chain metrics history.

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


$apiInstance = new OpenAPI\Client\Api\ExternalMetricsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$metric_id = 'metric_id_example'; // string | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
$chain_id = 'chain_id_example'; // string | Chain identifier (e.g., `Ethereum`, `Arbitrum`)
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
| **metric_id** | **string**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | |
| **chain_id** | **string**| Chain identifier (e.g., &#x60;Ethereum&#x60;, &#x60;Arbitrum&#x60;) | |
| **time_start** | **\DateTime**| Starting time in ISO 8601 | [optional] |
| **time_end** | **\DateTime**| Ending time in ISO 8601 | [optional] |
| **time_format** | **string**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **period_id** | **string**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] |
| **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

**object[]**

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

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

Get all metrics that are actually available for the specified blockchain chain.

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

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

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

Historical metrics for the exchange

Get exchange metrics history.

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


$apiInstance = new OpenAPI\Client\Api\ExternalMetricsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$metric_id = 'metric_id_example'; // string | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
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
| **metric_id** | **string**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | |
| **exchange_id** | **string**| Exchange identifier (e.g., &#x60;BINANCE&#x60;, &#x60;UNISWAP-V3-ETHEREUM&#x60;) | |
| **time_start** | **\DateTime**| Starting time in ISO 8601 | [optional] |
| **time_end** | **\DateTime**| Ending time in ISO 8601 | [optional] |
| **time_format** | **string**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **period_id** | **string**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] |
| **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

**object[]**

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

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

Listing of metrics available for specific exchange

Get all metrics that are actually available for the specified exchange.

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

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

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

Listing of all supported metrics

Get all metrics available in the system.

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

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
