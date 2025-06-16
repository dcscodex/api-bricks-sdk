# OpenAPI\Client\OptionsApi

All URIs are relative to https://rest.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1OptionsExchangeIdCurrentGet()**](OptionsApi.md#v1OptionsExchangeIdCurrentGet) | **GET** /v1/options/{exchange_id}/current | Current data by Exchange |


## `v1OptionsExchangeIdCurrentGet()`

```php
v1OptionsExchangeIdCurrentGet($exchange_id): \OpenAPI\Client\Model\OptionsOptionExchangeGroup[]
```

Current data by Exchange

Get current options data for a specific exchange.  Returns option data grouped by underlying asset, quote currency, and expiration time, with quotes for both calls and puts at each strike price.

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


$apiInstance = new OpenAPI\Client\Api\OptionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$exchange_id = 'exchange_id_example'; // string | Exchange identifier (from the Metadata -> Exchanges)

try {
    $result = $apiInstance->v1OptionsExchangeIdCurrentGet($exchange_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OptionsApi->v1OptionsExchangeIdCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchange_id** | **string**| Exchange identifier (from the Metadata -&gt; Exchanges) | |

### Return type

[**\OpenAPI\Client\Model\OptionsOptionExchangeGroup[]**](../Model/OptionsOptionExchangeGroup.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
