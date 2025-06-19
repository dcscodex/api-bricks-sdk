# OpenAPI\Client\ExchangeRatesApi

All URIs are relative to https://api-realtime.fx.finfeedapi.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getSpecificRate()**](ExchangeRatesApi.md#getSpecificRate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate |
| [**v1ExchangerateAssetIdBaseGet()**](ExchangeRatesApi.md#v1ExchangerateAssetIdBaseGet) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates |


## `getSpecificRate()`

```php
getSpecificRate($asset_id_base, $asset_id_quote): \OpenAPI\Client\Model\V1ExchangeRate
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

try {
    $result = $apiInstance->getSpecificRate($asset_id_base, $asset_id_quote);
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

## `v1ExchangerateAssetIdBaseGet()`

```php
v1ExchangerateAssetIdBaseGet($asset_id_base, $filter_asset_id, $invert): \OpenAPI\Client\Model\V1ExchangeRates
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

try {
    $result = $apiInstance->v1ExchangerateAssetIdBaseGet($asset_id_base, $filter_asset_id, $invert);
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
