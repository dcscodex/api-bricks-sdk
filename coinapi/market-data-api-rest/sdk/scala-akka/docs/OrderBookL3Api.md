# OrderBookL3Api

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1Orderbooks3CurrentGet**](OrderBookL3Api.md#v1Orderbooks3CurrentGet) | **GET** /v1/orderbooks3/current | Current order books
[**v1Orderbooks3CurrentGetWithHttpInfo**](OrderBookL3Api.md#v1Orderbooks3CurrentGetWithHttpInfo) | **GET** /v1/orderbooks3/current | Current order books
[**v1Orderbooks3SymbolIdCurrentGet**](OrderBookL3Api.md#v1Orderbooks3SymbolIdCurrentGet) | **GET** /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id
[**v1Orderbooks3SymbolIdCurrentGetWithHttpInfo**](OrderBookL3Api.md#v1Orderbooks3SymbolIdCurrentGetWithHttpInfo) | **GET** /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id



## v1Orderbooks3CurrentGet

> v1Orderbooks3CurrentGet(v1Orderbooks3CurrentGetRequest): ApiRequest[Seq[OrderBookBase]]

Current order books

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
    val apiInstance = OrderBookL3Api("https://rest.coinapi.io")
    val filterSymbolId: String = filterSymbolId_example // String | Comma or semicolon delimited parts of symbol identifier used to filter the response.

    val limitLevels: Int = 56 // Int | The maximum number of levels to include in the response.
    
    val request = apiInstance.v1Orderbooks3CurrentGet(filterSymbolId, limitLevels)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling OrderBookL3Api#v1Orderbooks3CurrentGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling OrderBookL3Api#v1Orderbooks3CurrentGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterSymbolId** | **String**| Comma or semicolon delimited parts of symbol identifier used to filter the response. | [optional]
 **limitLevels** | **Int**| The maximum number of levels to include in the response. | [optional]

### Return type

ApiRequest[[**Seq[OrderBookBase]**](OrderBookBase.md)]


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1Orderbooks3SymbolIdCurrentGet

> v1Orderbooks3SymbolIdCurrentGet(v1Orderbooks3SymbolIdCurrentGetRequest): ApiRequest[OrderBookBase]

Current order book by symbol_id

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
    
    // Configure API key authorization: ApiKey
    implicit val ApiKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    val apiInvoker = ApiInvoker()
    val apiInstance = OrderBookL3Api("https://rest.coinapi.io")
    val symbolId: String = symbolId_example // String | The symbol ID (from the Metadata -> Symbols)

    val limitLevels: Int = 56 // Int | The maximum number of levels to include in the response.
    
    val request = apiInstance.v1Orderbooks3SymbolIdCurrentGet(symbolId, limitLevels)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling OrderBookL3Api#v1Orderbooks3SymbolIdCurrentGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling OrderBookL3Api#v1Orderbooks3SymbolIdCurrentGet")
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

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

