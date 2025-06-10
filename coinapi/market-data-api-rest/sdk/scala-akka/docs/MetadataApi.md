# MetadataApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AssetsAssetIdGet**](MetadataApi.md#v1AssetsAssetIdGet) | **GET** /v1/assets/{asset_id} | List all assets by asset ID
[**v1AssetsAssetIdGetWithHttpInfo**](MetadataApi.md#v1AssetsAssetIdGetWithHttpInfo) | **GET** /v1/assets/{asset_id} | List all assets by asset ID
[**v1AssetsGet**](MetadataApi.md#v1AssetsGet) | **GET** /v1/assets | List all assets
[**v1AssetsGetWithHttpInfo**](MetadataApi.md#v1AssetsGetWithHttpInfo) | **GET** /v1/assets | List all assets
[**v1AssetsIconsSizeGet**](MetadataApi.md#v1AssetsIconsSizeGet) | **GET** /v1/assets/icons/{size} | List all asset icons
[**v1AssetsIconsSizeGetWithHttpInfo**](MetadataApi.md#v1AssetsIconsSizeGetWithHttpInfo) | **GET** /v1/assets/icons/{size} | List all asset icons
[**v1ExchangesExchangeIdGet**](MetadataApi.md#v1ExchangesExchangeIdGet) | **GET** /v1/exchanges/{exchange_id} | List all exchanges by exchange_id
[**v1ExchangesExchangeIdGetWithHttpInfo**](MetadataApi.md#v1ExchangesExchangeIdGetWithHttpInfo) | **GET** /v1/exchanges/{exchange_id} | List all exchanges by exchange_id
[**v1ExchangesGet**](MetadataApi.md#v1ExchangesGet) | **GET** /v1/exchanges | List all exchanges
[**v1ExchangesGetWithHttpInfo**](MetadataApi.md#v1ExchangesGetWithHttpInfo) | **GET** /v1/exchanges | List all exchanges
[**v1ExchangesIconsSizeGet**](MetadataApi.md#v1ExchangesIconsSizeGet) | **GET** /v1/exchanges/icons/{size} | List of icons for the exchanges
[**v1ExchangesIconsSizeGetWithHttpInfo**](MetadataApi.md#v1ExchangesIconsSizeGetWithHttpInfo) | **GET** /v1/exchanges/icons/{size} | List of icons for the exchanges
[**v1SymbolsExchangeIdGet**](MetadataApi.md#v1SymbolsExchangeIdGet) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange
[**v1SymbolsExchangeIdGetWithHttpInfo**](MetadataApi.md#v1SymbolsExchangeIdGetWithHttpInfo) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange
[**v1SymbolsGet**](MetadataApi.md#v1SymbolsGet) | **GET** /v1/symbols | List all symbols
[**v1SymbolsGetWithHttpInfo**](MetadataApi.md#v1SymbolsGetWithHttpInfo) | **GET** /v1/symbols | List all symbols
[**v1SymbolsMapExchangeIdGet**](MetadataApi.md#v1SymbolsMapExchangeIdGet) | **GET** /v1/symbols/map/{exchange_id} | List symbol mapping for the exchange
[**v1SymbolsMapExchangeIdGetWithHttpInfo**](MetadataApi.md#v1SymbolsMapExchangeIdGetWithHttpInfo) | **GET** /v1/symbols/map/{exchange_id} | List symbol mapping for the exchange



## v1AssetsAssetIdGet

> v1AssetsAssetIdGet(v1AssetsAssetIdGetRequest): ApiRequest[Seq[Asset]]

List all assets by asset ID

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure API key authorization: ApiKey
    implicit val ApiKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    val apiInvoker = ApiInvoker()
    val apiInstance = MetadataApi("https://rest.coinapi.io")
    val assetId: String = assetId_example // String | The asset ID.
    
    val request = apiInstance.v1AssetsAssetIdGet(assetId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling MetadataApi#v1AssetsAssetIdGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling MetadataApi#v1AssetsAssetIdGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **String**| The asset ID. |

### Return type

ApiRequest[[**Seq[Asset]**](Asset.md)]


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1AssetsGet

> v1AssetsGet(v1AssetsGetRequest): ApiRequest[Seq[Asset]]

List all assets

Retrieves all assets.                :::info  Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).  :::                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure API key authorization: ApiKey
    implicit val ApiKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    val apiInvoker = ApiInvoker()
    val apiInstance = MetadataApi("https://rest.coinapi.io")
    val filterAssetId: String = filterAssetId_example // String | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`).
    
    val request = apiInstance.v1AssetsGet(filterAssetId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling MetadataApi#v1AssetsGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling MetadataApi#v1AssetsGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterAssetId** | **String**| Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | [optional]

### Return type

ApiRequest[[**Seq[Asset]**](Asset.md)]


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1AssetsIconsSizeGet

> v1AssetsIconsSizeGet(v1AssetsIconsSizeGetRequest): ApiRequest[Seq[Icon]]

List all asset icons

Gets the list of icons (of the given size) for all the assets.

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure API key authorization: ApiKey
    implicit val ApiKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    val apiInvoker = ApiInvoker()
    val apiInstance = MetadataApi("https://rest.coinapi.io")
    val size: Int = 56 // Int | The size of the icons.
    
    val request = apiInstance.v1AssetsIconsSizeGet(size)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling MetadataApi#v1AssetsIconsSizeGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling MetadataApi#v1AssetsIconsSizeGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Int**| The size of the icons. |

### Return type

ApiRequest[[**Seq[Icon]**](Icon.md)]


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1ExchangesExchangeIdGet

> v1ExchangesExchangeIdGet(v1ExchangesExchangeIdGetRequest): ApiRequest[Seq[Exchange]]

List all exchanges by exchange_id

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure API key authorization: ApiKey
    implicit val ApiKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    val apiInvoker = ApiInvoker()
    val apiInstance = MetadataApi("https://rest.coinapi.io")
    val exchangeId: String = exchangeId_example // String | The ID of the exchange.
    
    val request = apiInstance.v1ExchangesExchangeIdGet(exchangeId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling MetadataApi#v1ExchangesExchangeIdGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling MetadataApi#v1ExchangesExchangeIdGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| The ID of the exchange. |

### Return type

ApiRequest[[**Seq[Exchange]**](Exchange.md)]


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1ExchangesGet

> v1ExchangesGet(v1ExchangesGetRequest): ApiRequest[Seq[Exchange]]

List all exchanges

Get a detailed list of exchanges provided by the system.                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure API key authorization: ApiKey
    implicit val ApiKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    val apiInvoker = ApiInvoker()
    val apiInstance = MetadataApi("https://rest.coinapi.io")
    val filterExchangeId: String = filterExchangeId_example // String | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)
    
    val request = apiInstance.v1ExchangesGet(filterExchangeId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling MetadataApi#v1ExchangesGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling MetadataApi#v1ExchangesGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterExchangeId** | **String**| Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional]

### Return type

ApiRequest[[**Seq[Exchange]**](Exchange.md)]


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1ExchangesIconsSizeGet

> v1ExchangesIconsSizeGet(v1ExchangesIconsSizeGetRequest): ApiRequest[Seq[Icon]]

List of icons for the exchanges

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure API key authorization: ApiKey
    implicit val ApiKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    val apiInvoker = ApiInvoker()
    val apiInstance = MetadataApi("https://rest.coinapi.io")
    val size: Int = 56 // Int | The size of the icons.
    
    val request = apiInstance.v1ExchangesIconsSizeGet(size)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling MetadataApi#v1ExchangesIconsSizeGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling MetadataApi#v1ExchangesIconsSizeGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Int**| The size of the icons. |

### Return type

ApiRequest[[**Seq[Icon]**](Icon.md)]


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1SymbolsExchangeIdGet

> v1SymbolsExchangeIdGet(v1SymbolsExchangeIdGetRequest): ApiRequest[Seq[Symbol]]

List of symbols for the exchange

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure API key authorization: ApiKey
    implicit val ApiKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    val apiInvoker = ApiInvoker()
    val apiInstance = MetadataApi("https://rest.coinapi.io")
    val exchangeId: String = exchangeId_example // String | The ID of the exchange (from the Metadata -> Exchanges)

    val filterSymbolId: String = filterSymbolId_example // String | The filter for symbol ID.

    val filterAssetId: String = filterAssetId_example // String | The filter for asset ID.
    
    val request = apiInstance.v1SymbolsExchangeIdGet(exchangeId, filterSymbolId, filterAssetId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling MetadataApi#v1SymbolsExchangeIdGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling MetadataApi#v1SymbolsExchangeIdGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| The ID of the exchange (from the Metadata -&gt; Exchanges) |
 **filterSymbolId** | **String**| The filter for symbol ID. | [optional]
 **filterAssetId** | **String**| The filter for asset ID. | [optional]

### Return type

ApiRequest[[**Seq[Symbol]**](Symbol.md)]


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1SymbolsGet

> v1SymbolsGet(v1SymbolsGetRequest): ApiRequest[Seq[Symbol]]

List all symbols

Retrieves all symbols with optional filtering.                :::info  \&quot;price_precision\&quot; and \&quot;size_precision\&quot; are data precisions and are not always the same precisions used for trading eg. for the \&quot;BINANCE\&quot; exchanges.  :::                :::info  You should not assume that the market data will be always within the resolution provided by the \&quot;price_precision\&quot; and \&quot;size_precision\&quot;. The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately.  :::                ### Symbol identifier                Our symbol identifier is created using a pattern that depends on symbol type.                Type | &#x60;symbol_id&#x60; pattern  --------- | ---------  SPOT | &#x60;{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}&#x60;  FUTURES | &#x60;{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}&#x60;  OPTION | &#x60;{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}&#x60;  PERPETUAL | &#x60;{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}&#x60;  INDEX | &#x60;{exchange_id}_IDX_{index_id}&#x60;  CREDIT | &#x60;{exchange_id}_CRE_{asset_id_base}&#x60;  CONTACT  | &#x60;{exchange_id}_COT_{contract_id}&#x60;                :::info  In the unlikely event when the \&quot;symbol_id\&quot; for more than one market is the same. We will append the additional term (prefixed with the \&quot;_\&quot;) at the end of the duplicated identifiers to differentiate them.  :::info                ### Symbol types list (enumeration of &#x60;symbol_type&#x60; output variable)                Type | Name | Description  -------- | - | -----------  SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)*  FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time  OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date  PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time  INDEX | Index | Statistical composite that measures changes in the economy or markets.  CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate.  CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)*                ### Additional output variables for &#x60;symbol_type &#x3D; INDEX&#x60;                Variable | Description  --------- | -----------  index_id | Index identifier  index_display_name | Human readable name of the index *(optional)*  index_display_description | Description of the index *(optional)*                ### Additional output variables for &#x60;symbol_type &#x3D; FUTURES&#x60;                Variable | Description  --------- | -----------  future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601  future_contract_unit | Contact size *(eg. 10 BTC if &#x60;future_contract_unit&#x60; &#x3D; &#x60;10&#x60; and &#x60;future_contract_unit_asset&#x60; &#x3D; &#x60;BTC&#x60;)*  future_contract_unit_asset | Identifier of the asset used to denominate the contract unit                ### Additional output variables for &#x60;symbol_type &#x3D; PERPETUAL&#x60;                Variable | Description  --------- | -----------  future_contract_unit | Contact size *(eg. 10 BTC if &#x60;future_contract_unit&#x60; &#x3D; &#x60;10&#x60; and &#x60;future_contract_unit_asset&#x60; &#x3D; &#x60;BTC&#x60;)*  future_contract_unit_asset | Identifier of the asset used to denominate the contract unit                ### Additional output variables for &#x60;symbol_type &#x3D; OPTION&#x60;                Variable | Description  --------- | -----------  option_type_is_call | Boolean value representing option type. &#x60;true&#x60; for Call options, &#x60;false&#x60; for Put options  option_strike_price | Price at which option contract can be exercised  option_contract_unit | Base asset amount of underlying spot which single option represents  option_exercise_style | Option exercise style. Can be &#x60;EUROPEAN&#x60; or &#x60;AMERICAN&#x60;  option_expiration_time | Option contract expiration time in ISO 8601                ### Additional output variables for &#x60;symbol_type &#x3D; CONTRACT&#x60;                Variable | Description  --------- | -----------  contract_delivery_time | Predetermined time of contract delivery date in ISO 8601  contract_unit | Contact size *(eg. 10 BTC if &#x60;contract_unit&#x60; &#x3D; &#x60;10&#x60; and &#x60;contract_unit_asset&#x60; &#x3D; &#x60;BTC&#x60;)*  contract_unit_asset | Identifier of the asset used to denominate the contract unit  contract_id | Identifier of contract by the exchange

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure API key authorization: ApiKey
    implicit val ApiKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    val apiInvoker = ApiInvoker()
    val apiInstance = MetadataApi("https://rest.coinapi.io")
    val filterSymbolId: String = filterSymbolId_example // String | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. `BITSTAMP`_ or `BINANCE_SPOT_`)

    val filterExchangeId: String = filterExchangeId_example // String | The filter for exchange ID.

    val filterAssetId: String = filterAssetId_example // String | The filter for asset ID.
    
    val request = apiInstance.v1SymbolsGet(filterSymbolId, filterExchangeId, filterAssetId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling MetadataApi#v1SymbolsGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling MetadataApi#v1SymbolsGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSymbolId** | **String**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. &#x60;BITSTAMP&#x60;_ or &#x60;BINANCE_SPOT_&#x60;) | [optional]
 **filterExchangeId** | **String**| The filter for exchange ID. | [optional]
 **filterAssetId** | **String**| The filter for asset ID. | [optional]

### Return type

ApiRequest[[**Seq[Symbol]**](Symbol.md)]


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1SymbolsMapExchangeIdGet

> v1SymbolsMapExchangeIdGet(v1SymbolsMapExchangeIdGetRequest): ApiRequest[Seq[SymbolMapping]]

List symbol mapping for the exchange

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure API key authorization: ApiKey
    implicit val ApiKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    val apiInvoker = ApiInvoker()
    val apiInstance = MetadataApi("https://rest.coinapi.io")
    val exchangeId: String = exchangeId_example // String | The ID of the exchange (from the Metadata -> Exchanges)
    
    val request = apiInstance.v1SymbolsMapExchangeIdGet(exchangeId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling MetadataApi#v1SymbolsMapExchangeIdGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling MetadataApi#v1SymbolsMapExchangeIdGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| The ID of the exchange (from the Metadata -&gt; Exchanges) |

### Return type

ApiRequest[[**Seq[SymbolMapping]**](SymbolMapping.md)]


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

