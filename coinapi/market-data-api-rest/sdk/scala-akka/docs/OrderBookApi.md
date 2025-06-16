# OrderBookApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrderbooksSymbolIdCurrentGet**](OrderBookApi.md#v1OrderbooksSymbolIdCurrentGet) | **GET** /v1/orderbooks/{symbol_id}/current | Get current order book
[**v1OrderbooksSymbolIdCurrentGetWithHttpInfo**](OrderBookApi.md#v1OrderbooksSymbolIdCurrentGetWithHttpInfo) | **GET** /v1/orderbooks/{symbol_id}/current | Get current order book
[**v1OrderbooksSymbolIdDepthCurrentGet**](OrderBookApi.md#v1OrderbooksSymbolIdDepthCurrentGet) | **GET** /v1/orderbooks/{symbol_id}/depth/current | Current depth of the order book
[**v1OrderbooksSymbolIdDepthCurrentGetWithHttpInfo**](OrderBookApi.md#v1OrderbooksSymbolIdDepthCurrentGetWithHttpInfo) | **GET** /v1/orderbooks/{symbol_id}/depth/current | Current depth of the order book
[**v1OrderbooksSymbolIdHistoryGet**](OrderBookApi.md#v1OrderbooksSymbolIdHistoryGet) | **GET** /v1/orderbooks/{symbol_id}/history | Historical data
[**v1OrderbooksSymbolIdHistoryGetWithHttpInfo**](OrderBookApi.md#v1OrderbooksSymbolIdHistoryGetWithHttpInfo) | **GET** /v1/orderbooks/{symbol_id}/history | Historical data
[**v1OrderbooksSymbolIdLatestGet**](OrderBookApi.md#v1OrderbooksSymbolIdLatestGet) | **GET** /v1/orderbooks/{symbol_id}/latest | Latest data
[**v1OrderbooksSymbolIdLatestGetWithHttpInfo**](OrderBookApi.md#v1OrderbooksSymbolIdLatestGetWithHttpInfo) | **GET** /v1/orderbooks/{symbol_id}/latest | Latest data



## v1OrderbooksSymbolIdCurrentGet

> v1OrderbooksSymbolIdCurrentGet(v1OrderbooksSymbolIdCurrentGetRequest): ApiRequest[OrderBookBase]

Get current order book

Retrieves the current order book for the specified symbol.

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
    val apiInstance = OrderBookApi("https://rest.coinapi.io")
    val symbolId: String = symbolId_example // String | The symbol ID (from the Metadata -> Symbols)

    val limitLevels: Int = 56 // Int | The maximum number of levels to include in the response.
    
    val request = apiInstance.v1OrderbooksSymbolIdCurrentGet(symbolId, limitLevels)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling OrderBookApi#v1OrderbooksSymbolIdCurrentGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling OrderBookApi#v1OrderbooksSymbolIdCurrentGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **String**| The symbol ID (from the Metadata -&gt; Symbols) |
 **limitLevels** | **Int**| The maximum number of levels to include in the response. | [optional]

### Return type

ApiRequest[[**OrderBookBase**](OrderBookBase.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1OrderbooksSymbolIdDepthCurrentGet

> v1OrderbooksSymbolIdDepthCurrentGet(v1OrderbooksSymbolIdDepthCurrentGetRequest): ApiRequest[OrderBookDepth]

Current depth of the order book

Retrieves the current depth of the order book for the specified symbol.

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
    val apiInstance = OrderBookApi("https://rest.coinapi.io")
    val symbolId: String = symbolId_example // String | The symbol ID (from the Metadata -> Symbols)

    val limitLevels: Int = 56 // Int | The maximum number of levels to include in the response.
    
    val request = apiInstance.v1OrderbooksSymbolIdDepthCurrentGet(symbolId, limitLevels)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling OrderBookApi#v1OrderbooksSymbolIdDepthCurrentGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling OrderBookApi#v1OrderbooksSymbolIdDepthCurrentGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **String**| The symbol ID (from the Metadata -&gt; Symbols) |
 **limitLevels** | **Int**| The maximum number of levels to include in the response. | [optional]

### Return type

ApiRequest[[**OrderBookDepth**](OrderBookDepth.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1OrderbooksSymbolIdHistoryGet

> v1OrderbooksSymbolIdHistoryGet(v1OrderbooksSymbolIdHistoryGetRequest): ApiRequest[Seq[OrderBook]]

Historical data

Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.              :::info The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels. :::  :::warning The &#39;time_start&#39; and &#39;time_end&#39; parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the &#39;date&#39; parameter instead for querying data for a specific day without filter. :::

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
    val apiInstance = OrderBookApi("https://rest.coinapi.io")
    val symbolId: String = symbolId_example // String | Symbol identifier for requested timeseries (from the Metadata -> Symbols)

    val date: String = date_example // String | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided)

    val timeStart: String = timeStart_example // String | Starting time in ISO 8601 (deprecated, use 'date' instead)

    val timeEnd: String = timeEnd_example // String | Timeseries ending time in ISO 8601 (deprecated, use 'date' instead)

    val limit: Int = 56 // Int | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

    val limitLevels: Int = 56 // Int | Maximum amount of levels from each side of the book to include in response (optional)
    
    val request = apiInstance.v1OrderbooksSymbolIdHistoryGet(symbolId, date, timeStart, timeEnd, limit, limitLevels)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling OrderBookApi#v1OrderbooksSymbolIdHistoryGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling OrderBookApi#v1OrderbooksSymbolIdHistoryGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **String**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) |
 **date** | **String**| Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | [optional]
 **timeStart** | **String**| Starting time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional]
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional]
 **limit** | **Int**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional]
 **limitLevels** | **Int**| Maximum amount of levels from each side of the book to include in response (optional) | [optional]

### Return type

ApiRequest[[**Seq[OrderBook]**](OrderBook.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1OrderbooksSymbolIdLatestGet

> v1OrderbooksSymbolIdLatestGet(v1OrderbooksSymbolIdLatestGetRequest): ApiRequest[Seq[OrderBook]]

Latest data

Get latest order book snapshots for a specific symbol, returned in time descending order.              :::info The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels. :::

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
    val apiInstance = OrderBookApi("https://rest.coinapi.io")
    val symbolId: String = symbolId_example // String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)

    val limit: Int = 56 // Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

    val limitLevels: Int = 56 // Int | Maximum amount of levels from each side of the book to include in response (optional)
    
    val request = apiInstance.v1OrderbooksSymbolIdLatestGet(symbolId, limit, limitLevels)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling OrderBookApi#v1OrderbooksSymbolIdLatestGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling OrderBookApi#v1OrderbooksSymbolIdLatestGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **String**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) |
 **limit** | **Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional]
 **limitLevels** | **Int**| Maximum amount of levels from each side of the book to include in response (optional) | [optional]

### Return type

ApiRequest[[**Seq[OrderBook]**](OrderBook.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

