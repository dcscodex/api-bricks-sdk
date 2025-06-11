# OpenAPI\Client\NativeIEXApi

All URIs are relative to https://api-historical.stock.finfeedapi.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1NativeIexAdminMessagesSymbolGet()**](NativeIEXApi.md#v1NativeIexAdminMessagesSymbolGet) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages |
| [**v1NativeIexAdminSystemEventGet()**](NativeIEXApi.md#v1NativeIexAdminSystemEventGet) | **GET** /v1/native/iex/admin/system-event | Get System Events |
| [**v1NativeIexLevel1QuoteSymbolGet()**](NativeIEXApi.md#v1NativeIexLevel1QuoteSymbolGet) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes |
| [**v1NativeIexLevel2PriceLevelUpdateSymbolGet()**](NativeIEXApi.md#v1NativeIexLevel2PriceLevelUpdateSymbolGet) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book |
| [**v1NativeIexLevel3OrderBookSymbolGet()**](NativeIEXApi.md#v1NativeIexLevel3OrderBookSymbolGet) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book |
| [**v1NativeIexTradeSymbolGet()**](NativeIEXApi.md#v1NativeIexTradeSymbolGet) | **GET** /v1/native/iex/trade/{symbol} | Get Trades |


## `v1NativeIexAdminMessagesSymbolGet()`

```php
v1NativeIexAdminMessagesSymbolGet($symbol, $date): \OpenAPI\Client\Model\AdminAdminMessageModel[]
```

Get Admin Messages

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


$apiInstance = new OpenAPI\Client\Api\NativeIEXApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = 'symbol_example'; // string | The symbol identifier
$date = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

try {
    $result = $apiInstance->v1NativeIexAdminMessagesSymbolGet($symbol, $date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NativeIEXApi->v1NativeIexAdminMessagesSymbolGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol** | **string**| The symbol identifier | |
| **date** | **\DateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | |

### Return type

[**\OpenAPI\Client\Model\AdminAdminMessageModel[]**](../Model/AdminAdminMessageModel.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1NativeIexAdminSystemEventGet()`

```php
v1NativeIexAdminSystemEventGet($date): \OpenAPI\Client\Model\AdminSystemEventModel[]
```

Get System Events

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


$apiInstance = new OpenAPI\Client\Api\NativeIEXApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$date = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Date in format YYYY-MM-DD

try {
    $result = $apiInstance->v1NativeIexAdminSystemEventGet($date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NativeIEXApi->v1NativeIexAdminSystemEventGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **date** | **\DateTime**| Date in format YYYY-MM-DD | |

### Return type

[**\OpenAPI\Client\Model\AdminSystemEventModel[]**](../Model/AdminSystemEventModel.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1NativeIexLevel1QuoteSymbolGet()`

```php
v1NativeIexLevel1QuoteSymbolGet($symbol, $date): \OpenAPI\Client\Model\Level1QuoteUpdateModel[]
```

Get Level-1 Quotes

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


$apiInstance = new OpenAPI\Client\Api\NativeIEXApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = 'symbol_example'; // string | The symbol identifier
$date = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

try {
    $result = $apiInstance->v1NativeIexLevel1QuoteSymbolGet($symbol, $date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NativeIEXApi->v1NativeIexLevel1QuoteSymbolGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol** | **string**| The symbol identifier | |
| **date** | **\DateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | |

### Return type

[**\OpenAPI\Client\Model\Level1QuoteUpdateModel[]**](../Model/Level1QuoteUpdateModel.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1NativeIexLevel2PriceLevelUpdateSymbolGet()`

```php
v1NativeIexLevel2PriceLevelUpdateSymbolGet($symbol, $date): \OpenAPI\Client\Model\Level2PriceLevelUpdateModel[]
```

Get Level-2 Price Level Book

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


$apiInstance = new OpenAPI\Client\Api\NativeIEXApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = 'symbol_example'; // string | The symbol identifier
$date = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

try {
    $result = $apiInstance->v1NativeIexLevel2PriceLevelUpdateSymbolGet($symbol, $date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NativeIEXApi->v1NativeIexLevel2PriceLevelUpdateSymbolGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol** | **string**| The symbol identifier | |
| **date** | **\DateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | |

### Return type

[**\OpenAPI\Client\Model\Level2PriceLevelUpdateModel[]**](../Model/Level2PriceLevelUpdateModel.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1NativeIexLevel3OrderBookSymbolGet()`

```php
v1NativeIexLevel3OrderBookSymbolGet($symbol, $date): \OpenAPI\Client\Model\Level3OrderBookModel[]
```

Get Level-3 Order Book

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


$apiInstance = new OpenAPI\Client\Api\NativeIEXApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = 'symbol_example'; // string | The symbol identifier
$date = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

try {
    $result = $apiInstance->v1NativeIexLevel3OrderBookSymbolGet($symbol, $date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NativeIEXApi->v1NativeIexLevel3OrderBookSymbolGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol** | **string**| The symbol identifier | |
| **date** | **\DateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | |

### Return type

[**\OpenAPI\Client\Model\Level3OrderBookModel[]**](../Model/Level3OrderBookModel.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1NativeIexTradeSymbolGet()`

```php
v1NativeIexTradeSymbolGet($symbol, $date): \OpenAPI\Client\Model\TradeTradeModel[]
```

Get Trades

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


$apiInstance = new OpenAPI\Client\Api\NativeIEXApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = 'symbol_example'; // string | The symbol identifier
$date = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

try {
    $result = $apiInstance->v1NativeIexTradeSymbolGet($symbol, $date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NativeIEXApi->v1NativeIexTradeSymbolGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol** | **string**| The symbol identifier | |
| **date** | **\DateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | |

### Return type

[**\OpenAPI\Client\Model\TradeTradeModel[]**](../Model/TradeTradeModel.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
