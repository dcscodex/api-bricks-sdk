# OpenAPI\Client\ExchangeApi

All URIs are relative to https://ems-mgmt-sandbox.coinapi.io.

Method | HTTP request | Description
------------- | ------------- | -------------
[**exchangeLoginRequire()**](ExchangeApi.md#exchangeLoginRequire) | **GET** /v1/exchanges | Get exchange configuration


## `exchangeLoginRequire()`

```php
exchangeLoginRequire(): \OpenAPI\Client\Model\ExchangeLoginRequire[]
```

Get exchange configuration

Get information about the required parameters or server site location of the exchanges supported in the EMS API.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: APIKeyHeader
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');

// Configure API key authorization: APIKeyQueryParam
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('apikey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('apikey', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ExchangeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->exchangeLoginRequire();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ExchangeApi->exchangeLoginRequire: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\ExchangeLoginRequire[]**](../Model/ExchangeLoginRequire.md)

### Authorization

[APIKeyHeader](../../README.md#APIKeyHeader), [APIKeyQueryParam](../../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
