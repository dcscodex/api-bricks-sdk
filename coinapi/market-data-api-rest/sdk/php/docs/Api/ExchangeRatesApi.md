# OpenAPI\Client\ExchangeRatesApi

All URIs are relative to https://rest.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getSpecificRate()**](ExchangeRatesApi.md#getSpecificRate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate |
| [**v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet()**](ExchangeRatesApi.md#v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote}/history | Timeseries data |
| [**v1ExchangerateAssetIdBaseGet()**](ExchangeRatesApi.md#v1ExchangerateAssetIdBaseGet) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates |
| [**v1ExchangerateHistoryPeriodsGet()**](ExchangeRatesApi.md#v1ExchangerateHistoryPeriodsGet) | **GET** /v1/exchangerate/history/periods | Timeseries periods |


## `getSpecificRate()`

```php
getSpecificRate($asset_id_base, $asset_id_quote, $time): \OpenAPI\Client\Model\V1ExchangeRate
```

Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::

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


$apiInstance = new OpenAPI\Client\Api\ExchangeRatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$asset_id_base = 'asset_id_base_example'; // string | Requested exchange rate base asset identifier (from the Metadata -> Assets)
$asset_id_quote = 'asset_id_quote_example'; // string | Requested exchange rate quote asset identifier (from the Metadata -> Assets)
$time = 'time_example'; // string | Time at which exchange rate is calculated (optional, if not supplied then current rate is returned)

try {
    $result = $apiInstance->getSpecificRate($asset_id_base, $asset_id_quote, $time);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExchangeRatesApi->getSpecificRate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **asset_id_base** | **string**| Requested exchange rate base asset identifier (from the Metadata -&gt; Assets) | |
| **asset_id_quote** | **string**| Requested exchange rate quote asset identifier (from the Metadata -&gt; Assets) | |
| **time** | **string**| Time at which exchange rate is calculated (optional, if not supplied then current rate is returned) | [optional] |

### Return type

[**\OpenAPI\Client\Model\V1ExchangeRate**](../Model/V1ExchangeRate.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet()`

```php
v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet($asset_id_base, $asset_id_quote, $period_id, $time_start, $time_end, $limit): \OpenAPI\Client\Model\V1ExchangeRatesTimeseriesItem[]
```

Timeseries data

Get the historical exchange rates between two assets in the form of the timeseries.

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


$apiInstance = new OpenAPI\Client\Api\ExchangeRatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$asset_id_base = 'asset_id_base_example'; // string | Requested exchange rates base asset identifier (from the Metadata -> Assets)
$asset_id_quote = 'asset_id_quote_example'; // string | Requested exchange rates base asset identifier (from the Metadata -> Assets)
$period_id = 'period_id_example'; // string | Identifier of requested timeseries period (required, e.g. `5SEC` or `1HRS`)
$time_start = 'time_start_example'; // string | Timeseries starting time in ISO 8601 (required)
$time_end = 'time_end_example'; // string | Timeseries ending time in ISO 8601 (required)
$limit = 100; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    $result = $apiInstance->v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet($asset_id_base, $asset_id_quote, $period_id, $time_start, $time_end, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExchangeRatesApi->v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **asset_id_base** | **string**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | |
| **asset_id_quote** | **string**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | |
| **period_id** | **string**| Identifier of requested timeseries period (required, e.g. &#x60;5SEC&#x60; or &#x60;1HRS&#x60;) | [optional] |
| **time_start** | **string**| Timeseries starting time in ISO 8601 (required) | [optional] |
| **time_end** | **string**| Timeseries ending time in ISO 8601 (required) | [optional] |
| **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**\OpenAPI\Client\Model\V1ExchangeRatesTimeseriesItem[]**](../Model/V1ExchangeRatesTimeseriesItem.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1ExchangerateAssetIdBaseGet()`

```php
v1ExchangerateAssetIdBaseGet($asset_id_base, $filter_asset_id, $invert, $time): \OpenAPI\Client\Model\V1ExchangeRates
```

Get all current rates

Get the current exchange rate between requested asset and all other assets.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::              :::info You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC); :::

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


$apiInstance = new OpenAPI\Client\Api\ExchangeRatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$asset_id_base = 'asset_id_base_example'; // string | Requested exchange rates base asset identifier (from the Metadata -> Assets)
$filter_asset_id = 'filter_asset_id_example'; // string | Comma or semicolon delimited asset identifiers used to filter response (optional)
$invert = false; // bool | True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`)
$time = 'time_example'; // string | Time for historical rates (optional)

try {
    $result = $apiInstance->v1ExchangerateAssetIdBaseGet($asset_id_base, $filter_asset_id, $invert, $time);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExchangeRatesApi->v1ExchangerateAssetIdBaseGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **asset_id_base** | **string**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | |
| **filter_asset_id** | **string**| Comma or semicolon delimited asset identifiers used to filter response (optional) | [optional] |
| **invert** | **bool**| True will invert all the rates (optional, if true then rates will be calculated as &#x60;rate &#x3D; 1 / actual_rate&#x60; eg. &#x60;USD/BTC&#x60; as &#x60;BTC/USD&#x60;) | [optional] [default to false] |
| **time** | **string**| Time for historical rates (optional) | [optional] |

### Return type

[**\OpenAPI\Client\Model\V1ExchangeRates**](../Model/V1ExchangeRates.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1ExchangerateHistoryPeriodsGet()`

```php
v1ExchangerateHistoryPeriodsGet(): \OpenAPI\Client\Model\V1TimeseriesPeriod[]
```

Timeseries periods

You can also obtain historical exchange rates of any asset pair, grouped into time periods. Get full list of supported time periods available for requesting exchange rates historical timeseries data.              ## Timeseries periods Time unit | Period identifiers --- | --- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY

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


$apiInstance = new OpenAPI\Client\Api\ExchangeRatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->v1ExchangerateHistoryPeriodsGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExchangeRatesApi->v1ExchangerateHistoryPeriodsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\V1TimeseriesPeriod[]**](../Model/V1TimeseriesPeriod.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
