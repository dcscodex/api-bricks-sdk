# OpenAPI\Client\AccountApi

All URIs are relative to https://ems-mgmt-sandbox.coinapi.io.

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAccount()**](AccountApi.md#deleteAccount) | **DELETE** /v1/accounts | Delete account
[**deleteAccountAll()**](AccountApi.md#deleteAccountAll) | **DELETE** /v1/accounts/all | Delete all accounts
[**getAccount()**](AccountApi.md#getAccount) | **GET** /v1/accounts | Get accounts
[**persistAccount()**](AccountApi.md#persistAccount) | **POST** /v1/accounts | Add or update account


## `deleteAccount()`

```php
deleteAccount($exchange_id)
```

Delete account

Delete specific exchange account maintained by the EMS API for your subscription.

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


$apiInstance = new OpenAPI\Client\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$exchange_id = array('exchange_id_example'); // string[] | Exchange identifier of the account to delete

try {
    $apiInstance->deleteAccount($exchange_id);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->deleteAccount: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | [**string[]**](../Model/string.md)| Exchange identifier of the account to delete |

### Return type

void (empty response body)

### Authorization

[APIKeyHeader](../../README.md#APIKeyHeader), [APIKeyQueryParam](../../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteAccountAll()`

```php
deleteAccountAll()
```

Delete all accounts

Delete all exchange accounts maintained by the EMS API for your subscription.

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


$apiInstance = new OpenAPI\Client\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $apiInstance->deleteAccountAll();
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->deleteAccountAll: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[APIKeyHeader](../../README.md#APIKeyHeader), [APIKeyQueryParam](../../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getAccount()`

```php
getAccount($filter_exchange_id): \OpenAPI\Client\Model\GetAccount[]
```

Get accounts

Get all accounts maintained for your subscription in the EMS API.

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


$apiInstance = new OpenAPI\Client\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$filter_exchange_id = array('filter_exchange_id_example'); // string[] | Exchange id of the specific account to provide single account instead of the list of all accounts

try {
    $result = $apiInstance->getAccount($filter_exchange_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->getAccount: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_exchange_id** | [**string[]**](../Model/string.md)| Exchange id of the specific account to provide single account instead of the list of all accounts | [optional]

### Return type

[**\OpenAPI\Client\Model\GetAccount[]**](../Model/GetAccount.md)

### Authorization

[APIKeyHeader](../../README.md#APIKeyHeader), [APIKeyQueryParam](../../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `persistAccount()`

```php
persistAccount($body)
```

Add or update account

Add new or update existing exchange account for your subscription in the EMS API.

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


$apiInstance = new OpenAPI\Client\Api\AccountApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$body = new \OpenAPI\Client\Model\AccountData(); // \OpenAPI\Client\Model\AccountData | Exchange account object that needs to be add/update to the EMS

try {
    $apiInstance->persistAccount($body);
} catch (Exception $e) {
    echo 'Exception when calling AccountApi->persistAccount: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\OpenAPI\Client\Model\AccountData**](../Model/AccountData.md)| Exchange account object that needs to be add/update to the EMS |

### Return type

void (empty response body)

### Authorization

[APIKeyHeader](../../README.md#APIKeyHeader), [APIKeyQueryParam](../../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
