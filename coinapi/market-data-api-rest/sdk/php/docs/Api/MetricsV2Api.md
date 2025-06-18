# OpenAPI\Client\MetricsV2Api

All URIs are relative to https://rest.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v2MetricsAssetHistoryGet()**](MetricsV2Api.md#v2MetricsAssetHistoryGet) | **GET** /v2/metrics/asset/history | Historical metrics for the asset |
| [**v2MetricsAssetListingGet()**](MetricsV2Api.md#v2MetricsAssetListingGet) | **GET** /v2/metrics/asset/listing | Listing of metrics available for specific asset |
| [**v2MetricsChainHistoryGet()**](MetricsV2Api.md#v2MetricsChainHistoryGet) | **GET** /v2/metrics/chain/history | Historical metrics for the chain |
| [**v2MetricsChainListingGet()**](MetricsV2Api.md#v2MetricsChainListingGet) | **GET** /v2/metrics/chain/listing | Listing of metrics available for specific chain |
| [**v2MetricsExchangeHistoryGet()**](MetricsV2Api.md#v2MetricsExchangeHistoryGet) | **GET** /v2/metrics/exchange/history | Historical metrics for the exchange |
| [**v2MetricsExchangeListingGet()**](MetricsV2Api.md#v2MetricsExchangeListingGet) | **GET** /v2/metrics/exchange/listing | Listing of metrics available for specific exchange |
| [**v2MetricsListingGet()**](MetricsV2Api.md#v2MetricsListingGet) | **GET** /v2/metrics/listing | Listing of all supported metrics |


## `v2MetricsAssetHistoryGet()`

```php
v2MetricsAssetHistoryGet($metric_id, $asset_id, $time_start, $time_end, $time_format, $period_id, $limit): object[]
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


$apiInstance = new OpenAPI\Client\Api\MetricsV2Api(
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
    $result = $apiInstance->v2MetricsAssetHistoryGet($metric_id, $asset_id, $time_start, $time_end, $time_format, $period_id, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetricsV2Api->v2MetricsAssetHistoryGet: ', $e->getMessage(), PHP_EOL;
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

## `v2MetricsAssetListingGet()`

```php
v2MetricsAssetListingGet($asset_id): \OpenAPI\Client\Model\V1MetricInfo[]
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


$apiInstance = new OpenAPI\Client\Api\MetricsV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$asset_id = 'asset_id_example'; // string | Asset identifier (e.g., USDC, USDT)

try {
    $result = $apiInstance->v2MetricsAssetListingGet($asset_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetricsV2Api->v2MetricsAssetListingGet: ', $e->getMessage(), PHP_EOL;
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

## `v2MetricsChainHistoryGet()`

```php
v2MetricsChainHistoryGet($metric_id, $chain_id, $time_start, $time_end, $time_format, $period_id, $limit): object[]
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


$apiInstance = new OpenAPI\Client\Api\MetricsV2Api(
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
    $result = $apiInstance->v2MetricsChainHistoryGet($metric_id, $chain_id, $time_start, $time_end, $time_format, $period_id, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetricsV2Api->v2MetricsChainHistoryGet: ', $e->getMessage(), PHP_EOL;
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

## `v2MetricsChainListingGet()`

```php
v2MetricsChainListingGet($chain_id): \OpenAPI\Client\Model\V1MetricInfo[]
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


$apiInstance = new OpenAPI\Client\Api\MetricsV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$chain_id = 'chain_id_example'; // string | Chain identifier (e.g., ETHEREUM, ARBITRUM)

try {
    $result = $apiInstance->v2MetricsChainListingGet($chain_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetricsV2Api->v2MetricsChainListingGet: ', $e->getMessage(), PHP_EOL;
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

## `v2MetricsExchangeHistoryGet()`

```php
v2MetricsExchangeHistoryGet($metric_id, $exchange_id, $time_start, $time_end, $time_format, $period_id, $limit): object[]
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


$apiInstance = new OpenAPI\Client\Api\MetricsV2Api(
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
    $result = $apiInstance->v2MetricsExchangeHistoryGet($metric_id, $exchange_id, $time_start, $time_end, $time_format, $period_id, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetricsV2Api->v2MetricsExchangeHistoryGet: ', $e->getMessage(), PHP_EOL;
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

## `v2MetricsExchangeListingGet()`

```php
v2MetricsExchangeListingGet($exchange_id): \OpenAPI\Client\Model\V1MetricInfo[]
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


$apiInstance = new OpenAPI\Client\Api\MetricsV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$exchange_id = 'exchange_id_example'; // string | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)

try {
    $result = $apiInstance->v2MetricsExchangeListingGet($exchange_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetricsV2Api->v2MetricsExchangeListingGet: ', $e->getMessage(), PHP_EOL;
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

## `v2MetricsListingGet()`

```php
v2MetricsListingGet(): \OpenAPI\Client\Model\V1MetricInfo[]
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


$apiInstance = new OpenAPI\Client\Api\MetricsV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->v2MetricsListingGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetricsV2Api->v2MetricsListingGet: ', $e->getMessage(), PHP_EOL;
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
