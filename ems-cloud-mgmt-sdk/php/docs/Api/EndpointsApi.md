# OpenAPI\Client\EndpointsApi

All URIs are relative to https://ems-mgmt-sandbox.coinapi.io.

Method | HTTP request | Description
------------- | ------------- | -------------
[**endpoints()**](EndpointsApi.md#endpoints) | **GET** /v1/endpoints | Get API endpoints


## `endpoints()`

```php
endpoints($filter_exchange_id): \OpenAPI\Client\Model\AccountEndpoint[]
```

Get API endpoints

Get all API endpoints that the EMS API expose for your subscription.

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


$apiInstance = new OpenAPI\Client\Api\EndpointsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$filter_exchange_id = array('filter_exchange_id_example'); // string[] | Exchange id

try {
    $result = $apiInstance->endpoints($filter_exchange_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EndpointsApi->endpoints: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_exchange_id** | [**string[]**](../Model/string.md)| Exchange id | [optional]

### Return type

[**\OpenAPI\Client\Model\AccountEndpoint[]**](../Model/AccountEndpoint.md)

### Authorization

[APIKeyHeader](../../README.md#APIKeyHeader), [APIKeyQueryParam](../../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
