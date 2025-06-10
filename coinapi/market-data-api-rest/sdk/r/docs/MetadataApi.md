# MetadataApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1AssetsAssetIdGet**](MetadataApi.md#V1AssetsAssetIdGet) | **GET** /v1/assets/{asset_id} | List all assets by asset ID
[**V1AssetsGet**](MetadataApi.md#V1AssetsGet) | **GET** /v1/assets | List all assets
[**V1AssetsIconsSizeGet**](MetadataApi.md#V1AssetsIconsSizeGet) | **GET** /v1/assets/icons/{size} | List all asset icons
[**V1ExchangesExchangeIdGet**](MetadataApi.md#V1ExchangesExchangeIdGet) | **GET** /v1/exchanges/{exchange_id} | List all exchanges by exchange_id
[**V1ExchangesGet**](MetadataApi.md#V1ExchangesGet) | **GET** /v1/exchanges | List all exchanges
[**V1ExchangesIconsSizeGet**](MetadataApi.md#V1ExchangesIconsSizeGet) | **GET** /v1/exchanges/icons/{size} | List of icons for the exchanges
[**V1SymbolsExchangeIdGet**](MetadataApi.md#V1SymbolsExchangeIdGet) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange
[**V1SymbolsGet**](MetadataApi.md#V1SymbolsGet) | **GET** /v1/symbols | List all symbols
[**V1SymbolsMapExchangeIdGet**](MetadataApi.md#V1SymbolsMapExchangeIdGet) | **GET** /v1/symbols/map/{exchange_id} | List symbol mapping for the exchange


# **V1AssetsAssetIdGet**
> array[V1Asset] V1AssetsAssetIdGet(asset_id)

List all assets by asset ID

### Example
```R
library(openapi)

# List all assets by asset ID
#
# prepare function argument(s)
var_asset_id <- "asset_id_example" # character | The asset ID.

api_instance <- MetadataApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1AssetsAssetIdGet(var_asset_iddata_file = "result.txt")
result <- api_instance$V1AssetsAssetIdGet(var_asset_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **character**| The asset ID. | 

### Return type

[**array[V1Asset]**](v1.Asset.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1AssetsGet**
> array[V1Asset] V1AssetsGet(filter_asset_id = var.filter_asset_id)

List all assets

Retrieves all assets.                :::info  Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).  :::                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::

### Example
```R
library(openapi)

# List all assets
#
# prepare function argument(s)
var_filter_asset_id <- "filter_asset_id_example" # character | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`). (Optional)

api_instance <- MetadataApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1AssetsGet(filter_asset_id = var_filter_asset_iddata_file = "result.txt")
result <- api_instance$V1AssetsGet(filter_asset_id = var_filter_asset_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_asset_id** | **character**| Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | [optional] 

### Return type

[**array[V1Asset]**](v1.Asset.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1AssetsIconsSizeGet**
> array[V1Icon] V1AssetsIconsSizeGet(size)

List all asset icons

Gets the list of icons (of the given size) for all the assets.

### Example
```R
library(openapi)

# List all asset icons
#
# prepare function argument(s)
var_size <- 56 # integer | The size of the icons.

api_instance <- MetadataApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1AssetsIconsSizeGet(var_sizedata_file = "result.txt")
result <- api_instance$V1AssetsIconsSizeGet(var_size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **integer**| The size of the icons. | 

### Return type

[**array[V1Icon]**](v1.Icon.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1ExchangesExchangeIdGet**
> array[V1Exchange] V1ExchangesExchangeIdGet(exchange_id)

List all exchanges by exchange_id

### Example
```R
library(openapi)

# List all exchanges by exchange_id
#
# prepare function argument(s)
var_exchange_id <- "exchange_id_example" # character | The ID of the exchange.

api_instance <- MetadataApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ExchangesExchangeIdGet(var_exchange_iddata_file = "result.txt")
result <- api_instance$V1ExchangesExchangeIdGet(var_exchange_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **character**| The ID of the exchange. | 

### Return type

[**array[V1Exchange]**](v1.Exchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1ExchangesGet**
> array[V1Exchange] V1ExchangesGet(filter_exchange_id = var.filter_exchange_id)

List all exchanges

Get a detailed list of exchanges provided by the system.                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::

### Example
```R
library(openapi)

# List all exchanges
#
# prepare function argument(s)
var_filter_exchange_id <- "filter_exchange_id_example" # character | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`) (Optional)

api_instance <- MetadataApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ExchangesGet(filter_exchange_id = var_filter_exchange_iddata_file = "result.txt")
result <- api_instance$V1ExchangesGet(filter_exchange_id = var_filter_exchange_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_exchange_id** | **character**| Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional] 

### Return type

[**array[V1Exchange]**](v1.Exchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1ExchangesIconsSizeGet**
> array[V1Icon] V1ExchangesIconsSizeGet(size)

List of icons for the exchanges

### Example
```R
library(openapi)

# List of icons for the exchanges
#
# prepare function argument(s)
var_size <- 56 # integer | The size of the icons.

api_instance <- MetadataApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ExchangesIconsSizeGet(var_sizedata_file = "result.txt")
result <- api_instance$V1ExchangesIconsSizeGet(var_size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **integer**| The size of the icons. | 

### Return type

[**array[V1Icon]**](v1.Icon.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1SymbolsExchangeIdGet**
> array[V1Symbol] V1SymbolsExchangeIdGet(exchange_id, filter_symbol_id = var.filter_symbol_id, filter_asset_id = var.filter_asset_id)

List of symbols for the exchange

### Example
```R
library(openapi)

# List of symbols for the exchange
#
# prepare function argument(s)
var_exchange_id <- "exchange_id_example" # character | The ID of the exchange (from the Metadata -> Exchanges)
var_filter_symbol_id <- "filter_symbol_id_example" # character | The filter for symbol ID. (Optional)
var_filter_asset_id <- "filter_asset_id_example" # character | The filter for asset ID. (Optional)

api_instance <- MetadataApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1SymbolsExchangeIdGet(var_exchange_id, filter_symbol_id = var_filter_symbol_id, filter_asset_id = var_filter_asset_iddata_file = "result.txt")
result <- api_instance$V1SymbolsExchangeIdGet(var_exchange_id, filter_symbol_id = var_filter_symbol_id, filter_asset_id = var_filter_asset_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **character**| The ID of the exchange (from the Metadata -&gt; Exchanges) | 
 **filter_symbol_id** | **character**| The filter for symbol ID. | [optional] 
 **filter_asset_id** | **character**| The filter for asset ID. | [optional] 

### Return type

[**array[V1Symbol]**](v1.Symbol.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1SymbolsGet**
> array[V1Symbol] V1SymbolsGet(filter_symbol_id = var.filter_symbol_id, filter_exchange_id = var.filter_exchange_id, filter_asset_id = var.filter_asset_id)

List all symbols

Retrieves all symbols with optional filtering.                :::info  \"price_precision\" and \"size_precision\" are data precisions and are not always the same precisions used for trading eg. for the \"BINANCE\" exchanges.  :::                :::info  You should not assume that the market data will be always within the resolution provided by the \"price_precision\" and \"size_precision\". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately.  :::                ### Symbol identifier                Our symbol identifier is created using a pattern that depends on symbol type.                Type | `symbol_id` pattern  --------- | ---------  SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}`  FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}`  OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}`  PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}`  INDEX | `{exchange_id}_IDX_{index_id}`  CREDIT | `{exchange_id}_CRE_{asset_id_base}`  CONTACT  | `{exchange_id}_COT_{contract_id}`                :::info  In the unlikely event when the \"symbol_id\" for more than one market is the same. We will append the additional term (prefixed with the \"_\") at the end of the duplicated identifiers to differentiate them.  :::info                ### Symbol types list (enumeration of `symbol_type` output variable)                Type | Name | Description  -------- | - | -----------  SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)*  FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time  OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date  PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time  INDEX | Index | Statistical composite that measures changes in the economy or markets.  CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate.  CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)*                ### Additional output variables for `symbol_type = INDEX`                Variable | Description  --------- | -----------  index_id | Index identifier  index_display_name | Human readable name of the index *(optional)*  index_display_description | Description of the index *(optional)*                ### Additional output variables for `symbol_type = FUTURES`                Variable | Description  --------- | -----------  future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601  future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)*  future_contract_unit_asset | Identifier of the asset used to denominate the contract unit                ### Additional output variables for `symbol_type = PERPETUAL`                Variable | Description  --------- | -----------  future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)*  future_contract_unit_asset | Identifier of the asset used to denominate the contract unit                ### Additional output variables for `symbol_type = OPTION`                Variable | Description  --------- | -----------  option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options  option_strike_price | Price at which option contract can be exercised  option_contract_unit | Base asset amount of underlying spot which single option represents  option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN`  option_expiration_time | Option contract expiration time in ISO 8601                ### Additional output variables for `symbol_type = CONTRACT`                Variable | Description  --------- | -----------  contract_delivery_time | Predetermined time of contract delivery date in ISO 8601  contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)*  contract_unit_asset | Identifier of the asset used to denominate the contract unit  contract_id | Identifier of contract by the exchange

### Example
```R
library(openapi)

# List all symbols
#
# prepare function argument(s)
var_filter_symbol_id <- "filter_symbol_id_example" # character | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. `BITSTAMP`_ or `BINANCE_SPOT_`) (Optional)
var_filter_exchange_id <- "filter_exchange_id_example" # character | The filter for exchange ID. (Optional)
var_filter_asset_id <- "filter_asset_id_example" # character | The filter for asset ID. (Optional)

api_instance <- MetadataApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1SymbolsGet(filter_symbol_id = var_filter_symbol_id, filter_exchange_id = var_filter_exchange_id, filter_asset_id = var_filter_asset_iddata_file = "result.txt")
result <- api_instance$V1SymbolsGet(filter_symbol_id = var_filter_symbol_id, filter_exchange_id = var_filter_exchange_id, filter_asset_id = var_filter_asset_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_symbol_id** | **character**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. &#x60;BITSTAMP&#x60;_ or &#x60;BINANCE_SPOT_&#x60;) | [optional] 
 **filter_exchange_id** | **character**| The filter for exchange ID. | [optional] 
 **filter_asset_id** | **character**| The filter for asset ID. | [optional] 

### Return type

[**array[V1Symbol]**](v1.Symbol.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1SymbolsMapExchangeIdGet**
> array[V1SymbolMapping] V1SymbolsMapExchangeIdGet(exchange_id)

List symbol mapping for the exchange

### Example
```R
library(openapi)

# List symbol mapping for the exchange
#
# prepare function argument(s)
var_exchange_id <- "exchange_id_example" # character | The ID of the exchange (from the Metadata -> Exchanges)

api_instance <- MetadataApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1SymbolsMapExchangeIdGet(var_exchange_iddata_file = "result.txt")
result <- api_instance$V1SymbolsMapExchangeIdGet(var_exchange_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **character**| The ID of the exchange (from the Metadata -&gt; Exchanges) | 

### Return type

[**array[V1SymbolMapping]**](v1.SymbolMapping.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

