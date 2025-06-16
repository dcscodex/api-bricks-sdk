# TradesApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1TradesLatestGet**](TradesApi.md#v1TradesLatestGet) | **GET** /v1/trades/latest | Latest data
[**v1TradesLatestGetWithHttpInfo**](TradesApi.md#v1TradesLatestGetWithHttpInfo) | **GET** /v1/trades/latest | Latest data
[**v1TradesSymbolIdHistoryGet**](TradesApi.md#v1TradesSymbolIdHistoryGet) | **GET** /v1/trades/{symbol_id}/history | Historical data
[**v1TradesSymbolIdHistoryGetWithHttpInfo**](TradesApi.md#v1TradesSymbolIdHistoryGetWithHttpInfo) | **GET** /v1/trades/{symbol_id}/history | Historical data
[**v1TradesSymbolIdLatestGet**](TradesApi.md#v1TradesSymbolIdLatestGet) | **GET** /v1/trades/{symbol_id}/latest | Latest data by symbol_id
[**v1TradesSymbolIdLatestGetWithHttpInfo**](TradesApi.md#v1TradesSymbolIdLatestGetWithHttpInfo) | **GET** /v1/trades/{symbol_id}/latest | Latest data by symbol_id



## v1TradesLatestGet

> v1TradesLatestGet(v1TradesLatestGetRequest): ApiRequest[Seq[Trade]]

Latest data

Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.

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
    
    // Configure API key authorization: APIKey
    implicit val APIKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    // Configure HTTP bearer authorization: JWT
    implicit val JWT: BearerToken = BearerToken("BEARER TOKEN")

    val apiInvoker = ApiInvoker()
    val apiInstance = TradesApi("https://rest.coinapi.io")
    val filterSymbolId: String = filterSymbolId_example // String | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)

    val includeId: Boolean = true // Boolean | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.

    val limit: Int = 56 // Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    
    val request = apiInstance.v1TradesLatestGet(filterSymbolId, includeId, limit)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling TradesApi#v1TradesLatestGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling TradesApi#v1TradesLatestGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSymbolId** | **String**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional]
 **includeId** | **Boolean**| Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional]
 **limit** | **Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional]

### Return type

ApiRequest[[**Seq[Trade]**](Trade.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1TradesSymbolIdHistoryGet

> v1TradesSymbolIdHistoryGet(v1TradesSymbolIdHistoryGetRequest): ApiRequest[Seq[Trade]]

Historical data

Get history transactions from specific symbol, returned in time ascending order.  :::warning The &#39;time_start&#39; and &#39;time_end&#39; parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the &#39;date&#39; parameter instead for querying data for a specific day without filter. :::

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
    
    // Configure API key authorization: APIKey
    implicit val APIKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    // Configure HTTP bearer authorization: JWT
    implicit val JWT: BearerToken = BearerToken("BEARER TOKEN")

    val apiInvoker = ApiInvoker()
    val apiInstance = TradesApi("https://rest.coinapi.io")
    val symbolId: String = symbolId_example // String | Symbol identifier for requested timeseries (from the Metadata -> Symbols)

    val date: String = date_example // String | Date in ISO 8601, returned data is for the whole given day (required if 'time_start' is not provided)

    val timeStart: String = timeStart_example // String | Starting time in ISO 8601

    val timeEnd: String = timeEnd_example // String | Timeseries ending time in ISO 8601

    val limit: Int = 56 // Int | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

    val includeId: Boolean = true // Boolean | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.
    
    val request = apiInstance.v1TradesSymbolIdHistoryGet(symbolId, date, timeStart, timeEnd, limit, includeId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling TradesApi#v1TradesSymbolIdHistoryGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling TradesApi#v1TradesSymbolIdHistoryGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **String**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) |
 **date** | **String**| Date in ISO 8601, returned data is for the whole given day (required if &#39;time_start&#39; is not provided) | [optional]
 **timeStart** | **String**| Starting time in ISO 8601 | [optional]
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 | [optional]
 **limit** | **Int**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional]
 **includeId** | **Boolean**| Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional]

### Return type

ApiRequest[[**Seq[Trade]**](Trade.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1TradesSymbolIdLatestGet

> v1TradesSymbolIdLatestGet(v1TradesSymbolIdLatestGetRequest): ApiRequest[Seq[Trade]]

Latest data by symbol_id

Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.

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
    
    // Configure API key authorization: APIKey
    implicit val APIKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    // Configure HTTP bearer authorization: JWT
    implicit val JWT: BearerToken = BearerToken("BEARER TOKEN")

    val apiInvoker = ApiInvoker()
    val apiInstance = TradesApi("https://rest.coinapi.io")
    val symbolId: String = symbolId_example // String | Symbol identifier for requested timeseries (from the Metadata -> Symbols)

    val limit: Int = 56 // Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

    val includeId: Boolean = true // Boolean | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.
    
    val request = apiInstance.v1TradesSymbolIdLatestGet(symbolId, limit, includeId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling TradesApi#v1TradesSymbolIdLatestGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling TradesApi#v1TradesSymbolIdLatestGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **String**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) |
 **limit** | **Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional]
 **includeId** | **Boolean**| Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional]

### Return type

ApiRequest[[**Seq[Trade]**](Trade.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

