# OpenAPI\Client\MetricsV1Api

All URIs are relative to https://rest.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1MetricsAssetCurrentGet()**](MetricsV1Api.md#v1MetricsAssetCurrentGet) | **GET** /v1/metrics/asset/current | Current metrics for given asset |
| [**v1MetricsAssetHistoryGet()**](MetricsV1Api.md#v1MetricsAssetHistoryGet) | **GET** /v1/metrics/asset/history | Historical metrics for asset |
| [**v1MetricsAssetListingGet()**](MetricsV1Api.md#v1MetricsAssetListingGet) | **GET** /v1/metrics/asset/listing | Listing of all supported metrics for asset |
| [**v1MetricsExchangeCurrentGet()**](MetricsV1Api.md#v1MetricsExchangeCurrentGet) | **GET** /v1/metrics/exchange/current | Current metrics for given exchange |
| [**v1MetricsExchangeHistoryGet()**](MetricsV1Api.md#v1MetricsExchangeHistoryGet) | **GET** /v1/metrics/exchange/history | Historical metrics for the exchange |
| [**v1MetricsExchangeListingGet()**](MetricsV1Api.md#v1MetricsExchangeListingGet) | **GET** /v1/metrics/exchange/listing | Listing of all supported exchange metrics |
| [**v1MetricsListingGet()**](MetricsV1Api.md#v1MetricsListingGet) | **GET** /v1/metrics/listing | Listing of all supported metrics by CoinAPI |
| [**v1MetricsSymbolCurrentGet()**](MetricsV1Api.md#v1MetricsSymbolCurrentGet) | **GET** /v1/metrics/symbol/current | Current metrics for given symbol |
| [**v1MetricsSymbolHistoryGet()**](MetricsV1Api.md#v1MetricsSymbolHistoryGet) | **GET** /v1/metrics/symbol/history | Historical metrics for symbol |
| [**v1MetricsSymbolListingGet()**](MetricsV1Api.md#v1MetricsSymbolListingGet) | **GET** /v1/metrics/symbol/listing | Listing of all supported metrics for symbol |


## `v1MetricsAssetCurrentGet()`

```php
v1MetricsAssetCurrentGet($metric_id, $asset_id, $asset_id_external, $exchange_id): \OpenAPI\Client\Model\V1GeneralData[]
```

Current metrics for given asset

Get current asset metrics.

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


$apiInstance = new OpenAPI\Client\Api\MetricsV1Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$metric_id = 'metric_id_example'; // string | Metric identifier (from the Metrics -> Listing)
$asset_id = 'asset_id_example'; // string | Asset identifier (from the Metadata -> Assets)
$asset_id_external = 'asset_id_external_example'; // string | Exchange asset identifier
$exchange_id = 'exchange_id_example'; // string | Exchange identifier (from the Metadata -> Exchanges)

try {
    $result = $apiInstance->v1MetricsAssetCurrentGet($metric_id, $asset_id, $asset_id_external, $exchange_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetricsV1Api->v1MetricsAssetCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **metric_id** | **string**| Metric identifier (from the Metrics -&gt; Listing) | [optional] |
| **asset_id** | **string**| Asset identifier (from the Metadata -&gt; Assets) | [optional] |
| **asset_id_external** | **string**| Exchange asset identifier | [optional] |
| **exchange_id** | **string**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] |

### Return type

[**\OpenAPI\Client\Model\V1GeneralData[]**](../Model/V1GeneralData.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1MetricsAssetHistoryGet()`

```php
v1MetricsAssetHistoryGet($metric_id, $exchange_id, $asset_id, $asset_id_external, $time_start, $time_end, $time_format, $period_id, $limit): \OpenAPI\Client\Model\V1MetricData[]
```

Historical metrics for asset

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


$apiInstance = new OpenAPI\Client\Api\MetricsV1Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$metric_id = 'metric_id_example'; // string | Metric identifier (from the Metrics -> Listing)
$exchange_id = 'exchange_id_example'; // string | Exchange identifier (from the Metadata -> Exchanges)
$asset_id = 'asset_id_example'; // string | Asset identifier (from the Metadata -> Assets)
$asset_id_external = 'asset_id_external_example'; // string | Exchange asset identifier
$time_start = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Starting time in ISO 8601
$time_end = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Ending time in ISO 8601
$time_format = 'time_format_example'; // string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
$period_id = 'period_id_example'; // string | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
$limit = 100; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    $result = $apiInstance->v1MetricsAssetHistoryGet($metric_id, $exchange_id, $asset_id, $asset_id_external, $time_start, $time_end, $time_format, $period_id, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetricsV1Api->v1MetricsAssetHistoryGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **metric_id** | **string**| Metric identifier (from the Metrics -&gt; Listing) | |
| **exchange_id** | **string**| Exchange identifier (from the Metadata -&gt; Exchanges) | |
| **asset_id** | **string**| Asset identifier (from the Metadata -&gt; Assets) | [optional] |
| **asset_id_external** | **string**| Exchange asset identifier | [optional] |
| **time_start** | **\DateTime**| Starting time in ISO 8601 | [optional] |
| **time_end** | **\DateTime**| Ending time in ISO 8601 | [optional] |
| **time_format** | **string**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **period_id** | **string**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] |
| **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**\OpenAPI\Client\Model\V1MetricData[]**](../Model/V1MetricData.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1MetricsAssetListingGet()`

```php
v1MetricsAssetListingGet($metric_id, $exchange_id, $chain_id, $network_id, $asset_id, $asset_id_external): \OpenAPI\Client\Model\V1ListingItem[]
```

Listing of all supported metrics for asset

Get data metrics for asset.

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


$apiInstance = new OpenAPI\Client\Api\MetricsV1Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$metric_id = 'metric_id_example'; // string | Metric identifier (from the Metrics -> Listing)
$exchange_id = 'exchange_id_example'; // string | Exchange identifier (from the Metadata -> Exchanges)
$chain_id = 'chain_id_example'; // string | Chain identifier
$network_id = 'network_id_example'; // string | Network identifier
$asset_id = 'asset_id_example'; // string | Asset identifier (from the Metadata -> Assets)
$asset_id_external = 'asset_id_external_example'; // string | The asset external identifier

try {
    $result = $apiInstance->v1MetricsAssetListingGet($metric_id, $exchange_id, $chain_id, $network_id, $asset_id, $asset_id_external);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetricsV1Api->v1MetricsAssetListingGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **metric_id** | **string**| Metric identifier (from the Metrics -&gt; Listing) | [optional] |
| **exchange_id** | **string**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] |
| **chain_id** | **string**| Chain identifier | [optional] |
| **network_id** | **string**| Network identifier | [optional] |
| **asset_id** | **string**| Asset identifier (from the Metadata -&gt; Assets) | [optional] |
| **asset_id_external** | **string**| The asset external identifier | [optional] |

### Return type

[**\OpenAPI\Client\Model\V1ListingItem[]**](../Model/V1ListingItem.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1MetricsExchangeCurrentGet()`

```php
v1MetricsExchangeCurrentGet($exchange_id, $metric_id): \OpenAPI\Client\Model\V1GeneralData[]
```

Current metrics for given exchange

Get current exchange metrics values.

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


$apiInstance = new OpenAPI\Client\Api\MetricsV1Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$exchange_id = 'exchange_id_example'; // string | The exchange identifier (from the Metadata -> Exchanges)
$metric_id = 'metric_id_example'; // string | The metric identifier (from the Metrics -> Listing)

try {
    $result = $apiInstance->v1MetricsExchangeCurrentGet($exchange_id, $metric_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetricsV1Api->v1MetricsExchangeCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchange_id** | **string**| The exchange identifier (from the Metadata -&gt; Exchanges) | |
| **metric_id** | **string**| The metric identifier (from the Metrics -&gt; Listing) | [optional] |

### Return type

[**\OpenAPI\Client\Model\V1GeneralData[]**](../Model/V1GeneralData.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1MetricsExchangeHistoryGet()`

```php
v1MetricsExchangeHistoryGet($metric_id, $exchange_id, $time_start, $time_end, $time_format, $period_id, $limit): \OpenAPI\Client\Model\V1MetricData[]
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


$apiInstance = new OpenAPI\Client\Api\MetricsV1Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$metric_id = 'metric_id_example'; // string | Metric identifier (from the Metrics -> Listing)
$exchange_id = 'exchange_id_example'; // string | Exchange identifier (from the Metadata -> Exchanges)
$time_start = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Starting time in ISO 8601
$time_end = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Ending time in ISO 8601
$time_format = 'time_format_example'; // string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
$period_id = 'period_id_example'; // string | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
$limit = 100; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    $result = $apiInstance->v1MetricsExchangeHistoryGet($metric_id, $exchange_id, $time_start, $time_end, $time_format, $period_id, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetricsV1Api->v1MetricsExchangeHistoryGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **metric_id** | **string**| Metric identifier (from the Metrics -&gt; Listing) | |
| **exchange_id** | **string**| Exchange identifier (from the Metadata -&gt; Exchanges) | |
| **time_start** | **\DateTime**| Starting time in ISO 8601 | [optional] |
| **time_end** | **\DateTime**| Ending time in ISO 8601 | [optional] |
| **time_format** | **string**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **period_id** | **string**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] |
| **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**\OpenAPI\Client\Model\V1MetricData[]**](../Model/V1MetricData.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1MetricsExchangeListingGet()`

```php
v1MetricsExchangeListingGet($exchange_id, $metric_id): \OpenAPI\Client\Model\V1ListingItem[]
```

Listing of all supported exchange metrics

Get data metrics for exchange.

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


$apiInstance = new OpenAPI\Client\Api\MetricsV1Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$exchange_id = 'exchange_id_example'; // string | The exchange identifier (from the Metadata -> Exchanges)
$metric_id = 'metric_id_example'; // string | The metric identifier (from the Metrics -> Listing)

try {
    $result = $apiInstance->v1MetricsExchangeListingGet($exchange_id, $metric_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetricsV1Api->v1MetricsExchangeListingGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchange_id** | **string**| The exchange identifier (from the Metadata -&gt; Exchanges) | |
| **metric_id** | **string**| The metric identifier (from the Metrics -&gt; Listing) | [optional] |

### Return type

[**\OpenAPI\Client\Model\V1ListingItem[]**](../Model/V1ListingItem.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1MetricsListingGet()`

```php
v1MetricsListingGet(): \OpenAPI\Client\Model\V1Metric[]
```

Listing of all supported metrics by CoinAPI

Get all data metrics.

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


$apiInstance = new OpenAPI\Client\Api\MetricsV1Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->v1MetricsListingGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetricsV1Api->v1MetricsListingGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\V1Metric[]**](../Model/V1Metric.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1MetricsSymbolCurrentGet()`

```php
v1MetricsSymbolCurrentGet($metric_id, $symbol_id, $exchange_id): \OpenAPI\Client\Model\V1GeneralData[]
```

Current metrics for given symbol

Get current symbol metrics.

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


$apiInstance = new OpenAPI\Client\Api\MetricsV1Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$metric_id = 'metric_id_example'; // string | Metric identifier (from the Metrics -> Listing)
$symbol_id = 'symbol_id_example'; // string | Symbol identifier (from the Metadata -> Symbols)
$exchange_id = 'exchange_id_example'; // string | Exchange id (from the Metadata -> Exchanges)

try {
    $result = $apiInstance->v1MetricsSymbolCurrentGet($metric_id, $symbol_id, $exchange_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetricsV1Api->v1MetricsSymbolCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **metric_id** | **string**| Metric identifier (from the Metrics -&gt; Listing) | [optional] |
| **symbol_id** | **string**| Symbol identifier (from the Metadata -&gt; Symbols) | [optional] |
| **exchange_id** | **string**| Exchange id (from the Metadata -&gt; Exchanges) | [optional] |

### Return type

[**\OpenAPI\Client\Model\V1GeneralData[]**](../Model/V1GeneralData.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1MetricsSymbolHistoryGet()`

```php
v1MetricsSymbolHistoryGet($metric_id, $symbol_id, $time_start, $time_end, $time_format, $period_id, $limit): \OpenAPI\Client\Model\V1MetricData[]
```

Historical metrics for symbol

Get symbol metrics history.

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


$apiInstance = new OpenAPI\Client\Api\MetricsV1Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$metric_id = 'metric_id_example'; // string | Metric identifier (from the Metrics -> Listing)
$symbol_id = 'symbol_id_example'; // string | Symbol identifier (from the Metadata -> Symbols)
$time_start = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Starting time in ISO 8601
$time_end = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Ending time in ISO 8601
$time_format = 'time_format_example'; // string | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
$period_id = 'period_id_example'; // string | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
$limit = 100; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    $result = $apiInstance->v1MetricsSymbolHistoryGet($metric_id, $symbol_id, $time_start, $time_end, $time_format, $period_id, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetricsV1Api->v1MetricsSymbolHistoryGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **metric_id** | **string**| Metric identifier (from the Metrics -&gt; Listing) | |
| **symbol_id** | **string**| Symbol identifier (from the Metadata -&gt; Symbols) | |
| **time_start** | **\DateTime**| Starting time in ISO 8601 | [optional] |
| **time_end** | **\DateTime**| Ending time in ISO 8601 | [optional] |
| **time_format** | **string**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **period_id** | **string**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] |
| **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**\OpenAPI\Client\Model\V1MetricData[]**](../Model/V1MetricData.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1MetricsSymbolListingGet()`

```php
v1MetricsSymbolListingGet($metric_id, $exchange_id, $symbol_id): \OpenAPI\Client\Model\V1ListingItem[]
```

Listing of all supported metrics for symbol

Get data metrics for symbol.

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


$apiInstance = new OpenAPI\Client\Api\MetricsV1Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$metric_id = 'metric_id_example'; // string | Metric identifier (from the Metrics -> Listing)
$exchange_id = 'exchange_id_example'; // string | Exchange identifier (from the Metadata -> Exchanges)
$symbol_id = 'symbol_id_example'; // string | Symbol identifier (from the Metadata -> Symbols)

try {
    $result = $apiInstance->v1MetricsSymbolListingGet($metric_id, $exchange_id, $symbol_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetricsV1Api->v1MetricsSymbolListingGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **metric_id** | **string**| Metric identifier (from the Metrics -&gt; Listing) | [optional] |
| **exchange_id** | **string**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] |
| **symbol_id** | **string**| Symbol identifier (from the Metadata -&gt; Symbols) | [optional] |

### Return type

[**\OpenAPI\Client\Model\V1ListingItem[]**](../Model/V1ListingItem.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
