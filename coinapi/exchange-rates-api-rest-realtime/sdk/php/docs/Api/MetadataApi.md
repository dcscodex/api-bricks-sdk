# OpenAPI\Client\MetadataApi

All URIs are relative to https://api-realtime.exrates.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1AssetsAssetIdGet()**](MetadataApi.md#v1AssetsAssetIdGet) | **GET** /v1/assets/{asset_id} | List all assets by asset ID |
| [**v1AssetsGet()**](MetadataApi.md#v1AssetsGet) | **GET** /v1/assets | List all assets |
| [**v1AssetsIconsSizeGet()**](MetadataApi.md#v1AssetsIconsSizeGet) | **GET** /v1/assets/icons/{size} | List all asset icons |


## `v1AssetsAssetIdGet()`

```php
v1AssetsAssetIdGet($asset_id): \OpenAPI\Client\Model\V1Asset[]
```

List all assets by asset ID

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: APIKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MetadataApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$asset_id = 'asset_id_example'; // string | The asset ID.

try {
    $result = $apiInstance->v1AssetsAssetIdGet($asset_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetadataApi->v1AssetsAssetIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **asset_id** | **string**| The asset ID. | |

### Return type

[**\OpenAPI\Client\Model\V1Asset[]**](../Model/V1Asset.md)

### Authorization

[APIKey](../../README.md#APIKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1AssetsGet()`

```php
v1AssetsGet($filter_asset_id): \OpenAPI\Client\Model\V1Asset[]
```

List all assets

Retrieves all assets.                :::info  Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).  :::                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: APIKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MetadataApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$filter_asset_id = 'filter_asset_id_example'; // string | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`).

try {
    $result = $apiInstance->v1AssetsGet($filter_asset_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetadataApi->v1AssetsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filter_asset_id** | **string**| Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | [optional] |

### Return type

[**\OpenAPI\Client\Model\V1Asset[]**](../Model/V1Asset.md)

### Authorization

[APIKey](../../README.md#APIKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1AssetsIconsSizeGet()`

```php
v1AssetsIconsSizeGet($size): \OpenAPI\Client\Model\V1Icon[]
```

List all asset icons

Gets the list of icons (of the given size) for all the assets.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: APIKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MetadataApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$size = 56; // int | The size of the icons.

try {
    $result = $apiInstance->v1AssetsIconsSizeGet($size);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetadataApi->v1AssetsIconsSizeGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **size** | **int**| The size of the icons. | |

### Return type

[**\OpenAPI\Client\Model\V1Icon[]**](../Model/V1Icon.md)

### Authorization

[APIKey](../../README.md#APIKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
