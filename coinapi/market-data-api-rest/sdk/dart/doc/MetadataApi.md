# openapi.api.MetadataApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AssetsAssetIdGet**](MetadataApi.md#v1assetsassetidget) | **GET** /v1/assets/{asset_id} | List all assets by asset ID
[**v1AssetsGet**](MetadataApi.md#v1assetsget) | **GET** /v1/assets | List all assets
[**v1AssetsIconsSizeGet**](MetadataApi.md#v1assetsiconssizeget) | **GET** /v1/assets/icons/{size} | List all asset icons
[**v1ChainsChainIdGet**](MetadataApi.md#v1chainschainidget) | **GET** /v1/chains/{chain_id} | List all chains by chain ID
[**v1ChainsGet**](MetadataApi.md#v1chainsget) | **GET** /v1/chains | List all blockchain chains
[**v1ExchangesExchangeIdGet**](MetadataApi.md#v1exchangesexchangeidget) | **GET** /v1/exchanges/{exchange_id} | List all exchanges by exchange_id
[**v1ExchangesGet**](MetadataApi.md#v1exchangesget) | **GET** /v1/exchanges | List all exchanges
[**v1ExchangesIconsSizeGet**](MetadataApi.md#v1exchangesiconssizeget) | **GET** /v1/exchanges/icons/{size} | List of icons for the exchanges
[**v1SymbolsExchangeIdGet**](MetadataApi.md#v1symbolsexchangeidget) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange
[**v1SymbolsGet**](MetadataApi.md#v1symbolsget) | **GET** /v1/symbols | List all symbols
[**v1SymbolsMapExchangeIdGet**](MetadataApi.md#v1symbolsmapexchangeidget) | **GET** /v1/symbols/map/{exchange_id} | List symbol mapping for the exchange


# **v1AssetsAssetIdGet**
> List<V1Asset> v1AssetsAssetIdGet(assetId)

List all assets by asset ID

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MetadataApi();
final assetId = assetId_example; // String | The asset ID.

try {
    final result = api_instance.v1AssetsAssetIdGet(assetId);
    print(result);
} catch (e) {
    print('Exception when calling MetadataApi->v1AssetsAssetIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **String**| The asset ID. | 

### Return type

[**List<V1Asset>**](V1Asset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AssetsGet**
> List<V1Asset> v1AssetsGet(filterAssetId)

List all assets

Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MetadataApi();
final filterAssetId = filterAssetId_example; // String | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`).

try {
    final result = api_instance.v1AssetsGet(filterAssetId);
    print(result);
} catch (e) {
    print('Exception when calling MetadataApi->v1AssetsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterAssetId** | **String**| Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`). | [optional] 

### Return type

[**List<V1Asset>**](V1Asset.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AssetsIconsSizeGet**
> List<V1Icon> v1AssetsIconsSizeGet(size)

List all asset icons

Gets the list of icons (of the given size) for all the assets.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MetadataApi();
final size = 56; // int | The size of the icons.

try {
    final result = api_instance.v1AssetsIconsSizeGet(size);
    print(result);
} catch (e) {
    print('Exception when calling MetadataApi->v1AssetsIconsSizeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The size of the icons. | 

### Return type

[**List<V1Icon>**](V1Icon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ChainsChainIdGet**
> List<V1Chain> v1ChainsChainIdGet(chainId)

List all chains by chain ID

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MetadataApi();
final chainId = chainId_example; // String | The chain ID.

try {
    final result = api_instance.v1ChainsChainIdGet(chainId);
    print(result);
} catch (e) {
    print('Exception when calling MetadataApi->v1ChainsChainIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| The chain ID. | 

### Return type

[**List<V1Chain>**](V1Chain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ChainsGet**
> List<V1Chain> v1ChainsGet(filterChainId)

List all blockchain chains

Retrieves all blockchain chains supported by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific chain. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MetadataApi();
final filterChainId = filterChainId_example; // String | Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. `ETHEREUM;ARBITRUM`).

try {
    final result = api_instance.v1ChainsGet(filterChainId);
    print(result);
} catch (e) {
    print('Exception when calling MetadataApi->v1ChainsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterChainId** | **String**| Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. `ETHEREUM;ARBITRUM`). | [optional] 

### Return type

[**List<V1Chain>**](V1Chain.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ExchangesExchangeIdGet**
> List<V1Exchange> v1ExchangesExchangeIdGet(exchangeId)

List all exchanges by exchange_id

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MetadataApi();
final exchangeId = exchangeId_example; // String | The ID of the exchange.

try {
    final result = api_instance.v1ExchangesExchangeIdGet(exchangeId);
    print(result);
} catch (e) {
    print('Exception when calling MetadataApi->v1ExchangesExchangeIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| The ID of the exchange. | 

### Return type

[**List<V1Exchange>**](V1Exchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ExchangesGet**
> List<V1Exchange> v1ExchangesGet(filterExchangeId)

List all exchanges

Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MetadataApi();
final filterExchangeId = filterExchangeId_example; // String | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)

try {
    final result = api_instance.v1ExchangesGet(filterExchangeId);
    print(result);
} catch (e) {
    print('Exception when calling MetadataApi->v1ExchangesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterExchangeId** | **String**| Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`) | [optional] 

### Return type

[**List<V1Exchange>**](V1Exchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ExchangesIconsSizeGet**
> List<V1Icon> v1ExchangesIconsSizeGet(size)

List of icons for the exchanges

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MetadataApi();
final size = 56; // int | The size of the icons.

try {
    final result = api_instance.v1ExchangesIconsSizeGet(size);
    print(result);
} catch (e) {
    print('Exception when calling MetadataApi->v1ExchangesIconsSizeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| The size of the icons. | 

### Return type

[**List<V1Icon>**](V1Icon.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1SymbolsExchangeIdGet**
> List<V1Symbol> v1SymbolsExchangeIdGet(exchangeId, filterSymbolId, filterAssetId)

List of symbols for the exchange

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MetadataApi();
final exchangeId = exchangeId_example; // String | The ID of the exchange (from the Metadata -> Exchanges)
final filterSymbolId = filterSymbolId_example; // String | The filter for symbol ID.
final filterAssetId = filterAssetId_example; // String | The filter for asset ID.

try {
    final result = api_instance.v1SymbolsExchangeIdGet(exchangeId, filterSymbolId, filterAssetId);
    print(result);
} catch (e) {
    print('Exception when calling MetadataApi->v1SymbolsExchangeIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| The ID of the exchange (from the Metadata -> Exchanges) | 
 **filterSymbolId** | **String**| The filter for symbol ID. | [optional] 
 **filterAssetId** | **String**| The filter for asset ID. | [optional] 

### Return type

[**List<V1Symbol>**](V1Symbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1SymbolsGet**
> List<V1Symbol> v1SymbolsGet(filterSymbolId, filterExchangeId, filterAssetId)

List all symbols

Retrieves all symbols with optional filtering.              :::info \"price_precision\" and \"size_precision\" are data precisions and are not always the same precisions used for trading eg. for the \"BINANCE\" exchanges. :::              :::info You should not assume that the market data will be always within the resolution provided by the \"price_precision\" and \"size_precision\". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately. :::              ### Symbol identifier              Our symbol identifier is created using a pattern that depends on symbol type.              Type | `symbol_id` pattern --------- | --------- SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}` FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}` OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}` PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}` INDEX | `{exchange_id}_IDX_{index_id}` CREDIT | `{exchange_id}_CRE_{asset_id_base}` CONTACT  | `{exchange_id}_COT_{contract_id}`              :::info In the unlikely event when the \"symbol_id\" for more than one market is the same. We will append the additional term (prefixed with the \"_\") at the end of the duplicated identifiers to differentiate them. :::info              ### Symbol types list (enumeration of `symbol_type` output variable)              Type | Name | Description -------- | - | ----------- SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)* FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time INDEX | Index | Statistical composite that measures changes in the economy or markets. CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate. CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)*              ### Additional output variables for `symbol_type = INDEX`              Variable | Description --------- | ----------- index_id | Index identifier index_display_name | Human readable name of the index *(optional)* index_display_description | Description of the index *(optional)*              ### Additional output variables for `symbol_type = FUTURES`              Variable | Description --------- | ----------- future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601 future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = PERPETUAL`              Variable | Description --------- | ----------- future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = OPTION`              Variable | Description --------- | ----------- option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options option_strike_price | Price at which option contract can be exercised option_contract_unit | Base asset amount of underlying spot which single option represents option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN` option_expiration_time | Option contract expiration time in ISO 8601              ### Additional output variables for `symbol_type = CONTRACT`              Variable | Description --------- | ----------- contract_delivery_time | Predetermined time of contract delivery date in ISO 8601 contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)* contract_unit_asset | Identifier of the asset used to denominate the contract unit contract_id | Identifier of contract by the exchange

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MetadataApi();
final filterSymbolId = filterSymbolId_example; // String | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. `BITSTAMP`_ or `BINANCE_SPOT_`)
final filterExchangeId = filterExchangeId_example; // String | The filter for exchange ID.
final filterAssetId = filterAssetId_example; // String | The filter for asset ID.

try {
    final result = api_instance.v1SymbolsGet(filterSymbolId, filterExchangeId, filterAssetId);
    print(result);
} catch (e) {
    print('Exception when calling MetadataApi->v1SymbolsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSymbolId** | **String**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. `BITSTAMP`_ or `BINANCE_SPOT_`) | [optional] 
 **filterExchangeId** | **String**| The filter for exchange ID. | [optional] 
 **filterAssetId** | **String**| The filter for asset ID. | [optional] 

### Return type

[**List<V1Symbol>**](V1Symbol.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1SymbolsMapExchangeIdGet**
> List<V1SymbolMapping> v1SymbolsMapExchangeIdGet(exchangeId)

List symbol mapping for the exchange

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MetadataApi();
final exchangeId = exchangeId_example; // String | The ID of the exchange (from the Metadata -> Exchanges)

try {
    final result = api_instance.v1SymbolsMapExchangeIdGet(exchangeId);
    print(result);
} catch (e) {
    print('Exception when calling MetadataApi->v1SymbolsMapExchangeIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| The ID of the exchange (from the Metadata -> Exchanges) | 

### Return type

[**List<V1SymbolMapping>**](V1SymbolMapping.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

