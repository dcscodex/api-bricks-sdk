# OpenAPI\Client\LocationApi

All URIs are relative to https://ems-mgmt-sandbox.coinapi.io.

Method | HTTP request | Description
------------- | ------------- | -------------
[**locations()**](LocationApi.md#locations) | **GET** /v1/locations | Get site locations


## `locations()`

```php
locations(): \OpenAPI\Client\Model\Locations[]
```

Get site locations

This endpoint providing information about the server site locations supported in the EMS API.

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


$apiInstance = new OpenAPI\Client\Api\LocationApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->locations();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LocationApi->locations: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\Locations[]**](../Model/Locations.md)

### Authorization

[APIKeyHeader](../../README.md#APIKeyHeader), [APIKeyQueryParam](../../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
