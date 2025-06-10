# OpenAPI\Client\MetadataApi

All URIs are relative to https://rest.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1AssetsAssetIdGet()**](MetadataApi.md#v1AssetsAssetIdGet) | **GET** /v1/assets/{asset_id} | List all assets by asset ID |
| [**v1AssetsGet()**](MetadataApi.md#v1AssetsGet) | **GET** /v1/assets | List all assets |
| [**v1AssetsIconsSizeGet()**](MetadataApi.md#v1AssetsIconsSizeGet) | **GET** /v1/assets/icons/{size} | List all asset icons |
| [**v1ExchangesExchangeIdGet()**](MetadataApi.md#v1ExchangesExchangeIdGet) | **GET** /v1/exchanges/{exchange_id} | List all exchanges by exchange_id |
| [**v1ExchangesGet()**](MetadataApi.md#v1ExchangesGet) | **GET** /v1/exchanges | List all exchanges |
| [**v1ExchangesIconsSizeGet()**](MetadataApi.md#v1ExchangesIconsSizeGet) | **GET** /v1/exchanges/icons/{size} | List of icons for the exchanges |
| [**v1SymbolsExchangeIdGet()**](MetadataApi.md#v1SymbolsExchangeIdGet) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange |
| [**v1SymbolsGet()**](MetadataApi.md#v1SymbolsGet) | **GET** /v1/symbols | List all symbols |
| [**v1SymbolsMapExchangeIdGet()**](MetadataApi.md#v1SymbolsMapExchangeIdGet) | **GET** /v1/symbols/map/{exchange_id} | List symbol mapping for the exchange |


## `v1AssetsAssetIdGet()`

```php
v1AssetsAssetIdGet($asset_id): \OpenAPI\Client\Model\V1Asset[]
```

List all assets by asset ID

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
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

[ApiKey](../../README.md#ApiKey)

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


// Configure API key authorization: ApiKey
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

[ApiKey](../../README.md#ApiKey)

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


// Configure API key authorization: ApiKey
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

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1ExchangesExchangeIdGet()`

```php
v1ExchangesExchangeIdGet($exchange_id): \OpenAPI\Client\Model\V1Exchange[]
```

List all exchanges by exchange_id

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MetadataApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$exchange_id = 'exchange_id_example'; // string | The ID of the exchange.

try {
    $result = $apiInstance->v1ExchangesExchangeIdGet($exchange_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetadataApi->v1ExchangesExchangeIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchange_id** | **string**| The ID of the exchange. | |

### Return type

[**\OpenAPI\Client\Model\V1Exchange[]**](../Model/V1Exchange.md)

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1ExchangesGet()`

```php
v1ExchangesGet($filter_exchange_id): \OpenAPI\Client\Model\V1Exchange[]
```

List all exchanges

Get a detailed list of exchanges provided by the system.                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MetadataApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$filter_exchange_id = 'filter_exchange_id_example'; // string | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)

try {
    $result = $apiInstance->v1ExchangesGet($filter_exchange_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetadataApi->v1ExchangesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filter_exchange_id** | **string**| Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional] |

### Return type

[**\OpenAPI\Client\Model\V1Exchange[]**](../Model/V1Exchange.md)

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1ExchangesIconsSizeGet()`

```php
v1ExchangesIconsSizeGet($size): \OpenAPI\Client\Model\V1Icon[]
```

List of icons for the exchanges

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
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
    $result = $apiInstance->v1ExchangesIconsSizeGet($size);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetadataApi->v1ExchangesIconsSizeGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **size** | **int**| The size of the icons. | |

### Return type

[**\OpenAPI\Client\Model\V1Icon[]**](../Model/V1Icon.md)

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1SymbolsExchangeIdGet()`

```php
v1SymbolsExchangeIdGet($exchange_id, $filter_symbol_id, $filter_asset_id): \OpenAPI\Client\Model\V1Symbol[]
```

List of symbols for the exchange

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MetadataApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$exchange_id = 'exchange_id_example'; // string | The ID of the exchange (from the Metadata -> Exchanges)
$filter_symbol_id = 'filter_symbol_id_example'; // string | The filter for symbol ID.
$filter_asset_id = 'filter_asset_id_example'; // string | The filter for asset ID.

try {
    $result = $apiInstance->v1SymbolsExchangeIdGet($exchange_id, $filter_symbol_id, $filter_asset_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetadataApi->v1SymbolsExchangeIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchange_id** | **string**| The ID of the exchange (from the Metadata -&gt; Exchanges) | |
| **filter_symbol_id** | **string**| The filter for symbol ID. | [optional] |
| **filter_asset_id** | **string**| The filter for asset ID. | [optional] |

### Return type

[**\OpenAPI\Client\Model\V1Symbol[]**](../Model/V1Symbol.md)

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1SymbolsGet()`

```php
v1SymbolsGet($filter_symbol_id, $filter_exchange_id, $filter_asset_id): \OpenAPI\Client\Model\V1Symbol[]
```

List all symbols

Retrieves all symbols with optional filtering.                :::info  \"price_precision\" and \"size_precision\" are data precisions and are not always the same precisions used for trading eg. for the \"BINANCE\" exchanges.  :::                :::info  You should not assume that the market data will be always within the resolution provided by the \"price_precision\" and \"size_precision\". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately.  :::                ### Symbol identifier                Our symbol identifier is created using a pattern that depends on symbol type.                Type | `symbol_id` pattern  --------- | ---------  SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}`  FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}`  OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}`  PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}`  INDEX | `{exchange_id}_IDX_{index_id}`  CREDIT | `{exchange_id}_CRE_{asset_id_base}`  CONTACT  | `{exchange_id}_COT_{contract_id}`                :::info  In the unlikely event when the \"symbol_id\" for more than one market is the same. We will append the additional term (prefixed with the \"_\") at the end of the duplicated identifiers to differentiate them.  :::info                ### Symbol types list (enumeration of `symbol_type` output variable)                Type | Name | Description  -------- | - | -----------  SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)*  FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time  OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date  PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time  INDEX | Index | Statistical composite that measures changes in the economy or markets.  CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate.  CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)*                ### Additional output variables for `symbol_type = INDEX`                Variable | Description  --------- | -----------  index_id | Index identifier  index_display_name | Human readable name of the index *(optional)*  index_display_description | Description of the index *(optional)*                ### Additional output variables for `symbol_type = FUTURES`                Variable | Description  --------- | -----------  future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601  future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)*  future_contract_unit_asset | Identifier of the asset used to denominate the contract unit                ### Additional output variables for `symbol_type = PERPETUAL`                Variable | Description  --------- | -----------  future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)*  future_contract_unit_asset | Identifier of the asset used to denominate the contract unit                ### Additional output variables for `symbol_type = OPTION`                Variable | Description  --------- | -----------  option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options  option_strike_price | Price at which option contract can be exercised  option_contract_unit | Base asset amount of underlying spot which single option represents  option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN`  option_expiration_time | Option contract expiration time in ISO 8601                ### Additional output variables for `symbol_type = CONTRACT`                Variable | Description  --------- | -----------  contract_delivery_time | Predetermined time of contract delivery date in ISO 8601  contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)*  contract_unit_asset | Identifier of the asset used to denominate the contract unit  contract_id | Identifier of contract by the exchange

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MetadataApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$filter_symbol_id = 'filter_symbol_id_example'; // string | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. `BITSTAMP`_ or `BINANCE_SPOT_`)
$filter_exchange_id = 'filter_exchange_id_example'; // string | The filter for exchange ID.
$filter_asset_id = 'filter_asset_id_example'; // string | The filter for asset ID.

try {
    $result = $apiInstance->v1SymbolsGet($filter_symbol_id, $filter_exchange_id, $filter_asset_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetadataApi->v1SymbolsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filter_symbol_id** | **string**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. &#x60;BITSTAMP&#x60;_ or &#x60;BINANCE_SPOT_&#x60;) | [optional] |
| **filter_exchange_id** | **string**| The filter for exchange ID. | [optional] |
| **filter_asset_id** | **string**| The filter for asset ID. | [optional] |

### Return type

[**\OpenAPI\Client\Model\V1Symbol[]**](../Model/V1Symbol.md)

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1SymbolsMapExchangeIdGet()`

```php
v1SymbolsMapExchangeIdGet($exchange_id): \OpenAPI\Client\Model\V1SymbolMapping[]
```

List symbol mapping for the exchange

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('X-CoinAPI-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-CoinAPI-Key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MetadataApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$exchange_id = 'exchange_id_example'; // string | The ID of the exchange (from the Metadata -> Exchanges)

try {
    $result = $apiInstance->v1SymbolsMapExchangeIdGet($exchange_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MetadataApi->v1SymbolsMapExchangeIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchange_id** | **string**| The ID of the exchange (from the Metadata -&gt; Exchanges) | |

### Return type

[**\OpenAPI\Client\Model\V1SymbolMapping[]**](../Model/V1SymbolMapping.md)

### Authorization

[ApiKey](../../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`, `application/x-msgpack`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
