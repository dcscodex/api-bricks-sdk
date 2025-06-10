# MetadataApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1AssetsAssetIdGet**](MetadataApi.md#v1AssetsAssetIdGet) | **GET** /v1/assets/{asset_id} | List all assets by asset ID |
| [**v1AssetsGet**](MetadataApi.md#v1AssetsGet) | **GET** /v1/assets | List all assets |
| [**v1AssetsIconsSizeGet**](MetadataApi.md#v1AssetsIconsSizeGet) | **GET** /v1/assets/icons/{size} | List all asset icons |
| [**v1ExchangesExchangeIdGet**](MetadataApi.md#v1ExchangesExchangeIdGet) | **GET** /v1/exchanges/{exchange_id} | List all exchanges by exchange_id |
| [**v1ExchangesGet**](MetadataApi.md#v1ExchangesGet) | **GET** /v1/exchanges | List all exchanges |
| [**v1ExchangesIconsSizeGet**](MetadataApi.md#v1ExchangesIconsSizeGet) | **GET** /v1/exchanges/icons/{size} | List of icons for the exchanges |
| [**v1SymbolsExchangeIdGet**](MetadataApi.md#v1SymbolsExchangeIdGet) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange |
| [**v1SymbolsGet**](MetadataApi.md#v1SymbolsGet) | **GET** /v1/symbols | List all symbols |
| [**v1SymbolsMapExchangeIdGet**](MetadataApi.md#v1SymbolsMapExchangeIdGet) | **GET** /v1/symbols/map/{exchange_id} | List symbol mapping for the exchange |


<a id="v1AssetsAssetIdGet"></a>
# **v1AssetsAssetIdGet**
> kotlin.collections.List&lt;V1Asset&gt; v1AssetsAssetIdGet(assetId)

List all assets by asset ID

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetadataApi()
val assetId : kotlin.String = assetId_example // kotlin.String | The asset ID.
try {
    val result : kotlin.collections.List<V1Asset> = apiInstance.v1AssetsAssetIdGet(assetId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetadataApi#v1AssetsAssetIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetadataApi#v1AssetsAssetIdGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **assetId** | **kotlin.String**| The asset ID. | |

### Return type

[**kotlin.collections.List&lt;V1Asset&gt;**](V1Asset.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["X-CoinAPI-Key"] = ""
    ApiClient.apiKeyPrefix["X-CoinAPI-Key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1AssetsGet"></a>
# **v1AssetsGet**
> kotlin.collections.List&lt;V1Asset&gt; v1AssetsGet(filterAssetId)

List all assets

Retrieves all assets.                :::info  Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).  :::                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetadataApi()
val filterAssetId : kotlin.String = filterAssetId_example // kotlin.String | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`).
try {
    val result : kotlin.collections.List<V1Asset> = apiInstance.v1AssetsGet(filterAssetId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetadataApi#v1AssetsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetadataApi#v1AssetsGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filterAssetId** | **kotlin.String**| Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | [optional] |

### Return type

[**kotlin.collections.List&lt;V1Asset&gt;**](V1Asset.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["X-CoinAPI-Key"] = ""
    ApiClient.apiKeyPrefix["X-CoinAPI-Key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1AssetsIconsSizeGet"></a>
# **v1AssetsIconsSizeGet**
> kotlin.collections.List&lt;V1Icon&gt; v1AssetsIconsSizeGet(size)

List all asset icons

Gets the list of icons (of the given size) for all the assets.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetadataApi()
val size : kotlin.Int = 56 // kotlin.Int | The size of the icons.
try {
    val result : kotlin.collections.List<V1Icon> = apiInstance.v1AssetsIconsSizeGet(size)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetadataApi#v1AssetsIconsSizeGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetadataApi#v1AssetsIconsSizeGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **size** | **kotlin.Int**| The size of the icons. | |

### Return type

[**kotlin.collections.List&lt;V1Icon&gt;**](V1Icon.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["X-CoinAPI-Key"] = ""
    ApiClient.apiKeyPrefix["X-CoinAPI-Key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1ExchangesExchangeIdGet"></a>
# **v1ExchangesExchangeIdGet**
> kotlin.collections.List&lt;V1Exchange&gt; v1ExchangesExchangeIdGet(exchangeId)

List all exchanges by exchange_id

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetadataApi()
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | The ID of the exchange.
try {
    val result : kotlin.collections.List<V1Exchange> = apiInstance.v1ExchangesExchangeIdGet(exchangeId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetadataApi#v1ExchangesExchangeIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetadataApi#v1ExchangesExchangeIdGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchangeId** | **kotlin.String**| The ID of the exchange. | |

### Return type

[**kotlin.collections.List&lt;V1Exchange&gt;**](V1Exchange.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["X-CoinAPI-Key"] = ""
    ApiClient.apiKeyPrefix["X-CoinAPI-Key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1ExchangesGet"></a>
# **v1ExchangesGet**
> kotlin.collections.List&lt;V1Exchange&gt; v1ExchangesGet(filterExchangeId)

List all exchanges

Get a detailed list of exchanges provided by the system.                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetadataApi()
val filterExchangeId : kotlin.String = filterExchangeId_example // kotlin.String | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)
try {
    val result : kotlin.collections.List<V1Exchange> = apiInstance.v1ExchangesGet(filterExchangeId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetadataApi#v1ExchangesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetadataApi#v1ExchangesGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filterExchangeId** | **kotlin.String**| Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional] |

### Return type

[**kotlin.collections.List&lt;V1Exchange&gt;**](V1Exchange.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["X-CoinAPI-Key"] = ""
    ApiClient.apiKeyPrefix["X-CoinAPI-Key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1ExchangesIconsSizeGet"></a>
# **v1ExchangesIconsSizeGet**
> kotlin.collections.List&lt;V1Icon&gt; v1ExchangesIconsSizeGet(size)

List of icons for the exchanges

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetadataApi()
val size : kotlin.Int = 56 // kotlin.Int | The size of the icons.
try {
    val result : kotlin.collections.List<V1Icon> = apiInstance.v1ExchangesIconsSizeGet(size)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetadataApi#v1ExchangesIconsSizeGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetadataApi#v1ExchangesIconsSizeGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **size** | **kotlin.Int**| The size of the icons. | |

### Return type

[**kotlin.collections.List&lt;V1Icon&gt;**](V1Icon.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["X-CoinAPI-Key"] = ""
    ApiClient.apiKeyPrefix["X-CoinAPI-Key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1SymbolsExchangeIdGet"></a>
# **v1SymbolsExchangeIdGet**
> kotlin.collections.List&lt;V1Symbol&gt; v1SymbolsExchangeIdGet(exchangeId, filterSymbolId, filterAssetId)

List of symbols for the exchange

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetadataApi()
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | The ID of the exchange (from the Metadata -> Exchanges)
val filterSymbolId : kotlin.String = filterSymbolId_example // kotlin.String | The filter for symbol ID.
val filterAssetId : kotlin.String = filterAssetId_example // kotlin.String | The filter for asset ID.
try {
    val result : kotlin.collections.List<V1Symbol> = apiInstance.v1SymbolsExchangeIdGet(exchangeId, filterSymbolId, filterAssetId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetadataApi#v1SymbolsExchangeIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetadataApi#v1SymbolsExchangeIdGet")
    e.printStackTrace()
}
```

### Parameters
| **exchangeId** | **kotlin.String**| The ID of the exchange (from the Metadata -&gt; Exchanges) | |
| **filterSymbolId** | **kotlin.String**| The filter for symbol ID. | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filterAssetId** | **kotlin.String**| The filter for asset ID. | [optional] |

### Return type

[**kotlin.collections.List&lt;V1Symbol&gt;**](V1Symbol.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["X-CoinAPI-Key"] = ""
    ApiClient.apiKeyPrefix["X-CoinAPI-Key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1SymbolsGet"></a>
# **v1SymbolsGet**
> kotlin.collections.List&lt;V1Symbol&gt; v1SymbolsGet(filterSymbolId, filterExchangeId, filterAssetId)

List all symbols

Retrieves all symbols with optional filtering.                :::info  \&quot;price_precision\&quot; and \&quot;size_precision\&quot; are data precisions and are not always the same precisions used for trading eg. for the \&quot;BINANCE\&quot; exchanges.  :::                :::info  You should not assume that the market data will be always within the resolution provided by the \&quot;price_precision\&quot; and \&quot;size_precision\&quot;. The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately.  :::                ### Symbol identifier                Our symbol identifier is created using a pattern that depends on symbol type.                Type | &#x60;symbol_id&#x60; pattern  --------- | ---------  SPOT | &#x60;{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}&#x60;  FUTURES | &#x60;{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}&#x60;  OPTION | &#x60;{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}&#x60;  PERPETUAL | &#x60;{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}&#x60;  INDEX | &#x60;{exchange_id}_IDX_{index_id}&#x60;  CREDIT | &#x60;{exchange_id}_CRE_{asset_id_base}&#x60;  CONTACT  | &#x60;{exchange_id}_COT_{contract_id}&#x60;                :::info  In the unlikely event when the \&quot;symbol_id\&quot; for more than one market is the same. We will append the additional term (prefixed with the \&quot;_\&quot;) at the end of the duplicated identifiers to differentiate them.  :::info                ### Symbol types list (enumeration of &#x60;symbol_type&#x60; output variable)                Type | Name | Description  -------- | - | -----------  SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)*  FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time  OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date  PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time  INDEX | Index | Statistical composite that measures changes in the economy or markets.  CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate.  CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)*                ### Additional output variables for &#x60;symbol_type &#x3D; INDEX&#x60;                Variable | Description  --------- | -----------  index_id | Index identifier  index_display_name | Human readable name of the index *(optional)*  index_display_description | Description of the index *(optional)*                ### Additional output variables for &#x60;symbol_type &#x3D; FUTURES&#x60;                Variable | Description  --------- | -----------  future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601  future_contract_unit | Contact size *(eg. 10 BTC if &#x60;future_contract_unit&#x60; &#x3D; &#x60;10&#x60; and &#x60;future_contract_unit_asset&#x60; &#x3D; &#x60;BTC&#x60;)*  future_contract_unit_asset | Identifier of the asset used to denominate the contract unit                ### Additional output variables for &#x60;symbol_type &#x3D; PERPETUAL&#x60;                Variable | Description  --------- | -----------  future_contract_unit | Contact size *(eg. 10 BTC if &#x60;future_contract_unit&#x60; &#x3D; &#x60;10&#x60; and &#x60;future_contract_unit_asset&#x60; &#x3D; &#x60;BTC&#x60;)*  future_contract_unit_asset | Identifier of the asset used to denominate the contract unit                ### Additional output variables for &#x60;symbol_type &#x3D; OPTION&#x60;                Variable | Description  --------- | -----------  option_type_is_call | Boolean value representing option type. &#x60;true&#x60; for Call options, &#x60;false&#x60; for Put options  option_strike_price | Price at which option contract can be exercised  option_contract_unit | Base asset amount of underlying spot which single option represents  option_exercise_style | Option exercise style. Can be &#x60;EUROPEAN&#x60; or &#x60;AMERICAN&#x60;  option_expiration_time | Option contract expiration time in ISO 8601                ### Additional output variables for &#x60;symbol_type &#x3D; CONTRACT&#x60;                Variable | Description  --------- | -----------  contract_delivery_time | Predetermined time of contract delivery date in ISO 8601  contract_unit | Contact size *(eg. 10 BTC if &#x60;contract_unit&#x60; &#x3D; &#x60;10&#x60; and &#x60;contract_unit_asset&#x60; &#x3D; &#x60;BTC&#x60;)*  contract_unit_asset | Identifier of the asset used to denominate the contract unit  contract_id | Identifier of contract by the exchange

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetadataApi()
val filterSymbolId : kotlin.String = filterSymbolId_example // kotlin.String | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. `BITSTAMP`_ or `BINANCE_SPOT_`)
val filterExchangeId : kotlin.String = filterExchangeId_example // kotlin.String | The filter for exchange ID.
val filterAssetId : kotlin.String = filterAssetId_example // kotlin.String | The filter for asset ID.
try {
    val result : kotlin.collections.List<V1Symbol> = apiInstance.v1SymbolsGet(filterSymbolId, filterExchangeId, filterAssetId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetadataApi#v1SymbolsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetadataApi#v1SymbolsGet")
    e.printStackTrace()
}
```

### Parameters
| **filterSymbolId** | **kotlin.String**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. &#x60;BITSTAMP&#x60;_ or &#x60;BINANCE_SPOT_&#x60;) | [optional] |
| **filterExchangeId** | **kotlin.String**| The filter for exchange ID. | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filterAssetId** | **kotlin.String**| The filter for asset ID. | [optional] |

### Return type

[**kotlin.collections.List&lt;V1Symbol&gt;**](V1Symbol.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["X-CoinAPI-Key"] = ""
    ApiClient.apiKeyPrefix["X-CoinAPI-Key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1SymbolsMapExchangeIdGet"></a>
# **v1SymbolsMapExchangeIdGet**
> kotlin.collections.List&lt;V1SymbolMapping&gt; v1SymbolsMapExchangeIdGet(exchangeId)

List symbol mapping for the exchange

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetadataApi()
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | The ID of the exchange (from the Metadata -> Exchanges)
try {
    val result : kotlin.collections.List<V1SymbolMapping> = apiInstance.v1SymbolsMapExchangeIdGet(exchangeId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetadataApi#v1SymbolsMapExchangeIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetadataApi#v1SymbolsMapExchangeIdGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchangeId** | **kotlin.String**| The ID of the exchange (from the Metadata -&gt; Exchanges) | |

### Return type

[**kotlin.collections.List&lt;V1SymbolMapping&gt;**](V1SymbolMapping.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["X-CoinAPI-Key"] = ""
    ApiClient.apiKeyPrefix["X-CoinAPI-Key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

