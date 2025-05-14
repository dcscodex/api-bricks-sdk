# IndexesApi

All URIs are relative to *https://rest-api.indexes.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1IndexdefInputDataIndexDefinitionIdAllGet**](IndexesApi.md#v1IndexdefInputDataIndexDefinitionIdAllGet) | **GET** /v1/indexdef/input-data/{index_definition_id}/all | Returns all data inputs for a specific index definition
[**v1IndexdefInputDataIndexDefinitionIdAllGetWithHttpInfo**](IndexesApi.md#v1IndexdefInputDataIndexDefinitionIdAllGetWithHttpInfo) | **GET** /v1/indexdef/input-data/{index_definition_id}/all | Returns all data inputs for a specific index definition
[**v1IndexdefInputDataIndexDefinitionIdGet**](IndexesApi.md#v1IndexdefInputDataIndexDefinitionIdGet) | **GET** /v1/indexdef/input-data/{index_definition_id} | Returns data inputs for certain index definition and time
[**v1IndexdefInputDataIndexDefinitionIdGetWithHttpInfo**](IndexesApi.md#v1IndexdefInputDataIndexDefinitionIdGetWithHttpInfo) | **GET** /v1/indexdef/input-data/{index_definition_id} | Returns data inputs for certain index definition and time
[**v1IndexdefMultiassetGet**](IndexesApi.md#v1IndexdefMultiassetGet) | **GET** /v1/indexdef/multiasset | Get all multi-asset weights
[**v1IndexdefMultiassetGetWithHttpInfo**](IndexesApi.md#v1IndexdefMultiassetGetWithHttpInfo) | **GET** /v1/indexdef/multiasset | Get all multi-asset weights
[**v1IndexdefMultiassetIndexIdGet**](IndexesApi.md#v1IndexdefMultiassetIndexIdGet) | **GET** /v1/indexdef/multiasset/{index_id} | Get multi-asset weights for specific index
[**v1IndexdefMultiassetIndexIdGetWithHttpInfo**](IndexesApi.md#v1IndexdefMultiassetIndexIdGetWithHttpInfo) | **GET** /v1/indexdef/multiasset/{index_id} | Get multi-asset weights for specific index
[**v1IndexesGet**](IndexesApi.md#v1IndexesGet) | **GET** /v1/indexes | List indexes
[**v1IndexesGetWithHttpInfo**](IndexesApi.md#v1IndexesGetWithHttpInfo) | **GET** /v1/indexes | List indexes
[**v1IndexesIndexDefinitionIdCurrentSnapshotGet**](IndexesApi.md#v1IndexesIndexDefinitionIdCurrentSnapshotGet) | **GET** /v1/indexes/{index_definition_id}/currentSnapshot | Current Index Values for index definition
[**v1IndexesIndexDefinitionIdCurrentSnapshotGetWithHttpInfo**](IndexesApi.md#v1IndexesIndexDefinitionIdCurrentSnapshotGetWithHttpInfo) | **GET** /v1/indexes/{index_definition_id}/currentSnapshot | Current Index Values for index definition
[**v1IndexesIndexDefinitionIdHistorySnapshotGet**](IndexesApi.md#v1IndexesIndexDefinitionIdHistorySnapshotGet) | **GET** /v1/indexes/{index_definition_id}/historySnapshot | Historical Index Values for index definition
[**v1IndexesIndexDefinitionIdHistorySnapshotGetWithHttpInfo**](IndexesApi.md#v1IndexesIndexDefinitionIdHistorySnapshotGetWithHttpInfo) | **GET** /v1/indexes/{index_definition_id}/historySnapshot | Historical Index Values for index definition
[**v1IndexesIndexIdCurrentGet**](IndexesApi.md#v1IndexesIndexIdCurrentGet) | **GET** /v1/indexes/{index_id}/current | Current Index Value
[**v1IndexesIndexIdCurrentGetWithHttpInfo**](IndexesApi.md#v1IndexesIndexIdCurrentGetWithHttpInfo) | **GET** /v1/indexes/{index_id}/current | Current Index Value
[**v1IndexesIndexIdHistoryGet**](IndexesApi.md#v1IndexesIndexIdHistoryGet) | **GET** /v1/indexes/{index_id}/history | Historical Index Value w/Composition
[**v1IndexesIndexIdHistoryGetWithHttpInfo**](IndexesApi.md#v1IndexesIndexIdHistoryGetWithHttpInfo) | **GET** /v1/indexes/{index_id}/history | Historical Index Value w/Composition
[**v1IndexesIndexIdTimeseriesGet**](IndexesApi.md#v1IndexesIndexIdTimeseriesGet) | **GET** /v1/indexes/{index_id}/timeseries | Timeseries Index Value
[**v1IndexesIndexIdTimeseriesGetWithHttpInfo**](IndexesApi.md#v1IndexesIndexIdTimeseriesGetWithHttpInfo) | **GET** /v1/indexes/{index_id}/timeseries | Timeseries Index Value



## v1IndexdefInputDataIndexDefinitionIdAllGet

> v1IndexdefInputDataIndexDefinitionIdAllGet(v1IndexdefInputDataIndexDefinitionIdAllGetRequest): ApiRequest[Seq[IndexDefinitionInputData]]

Returns all data inputs for a specific index definition

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
    val apiInstance = IndexesApi("https://rest-api.indexes.coinapi.io")
    val indexDefinitionId: String = indexDefinitionId_example // String | 
    
    val request = apiInstance.v1IndexdefInputDataIndexDefinitionIdAllGet(indexDefinitionId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling IndexesApi#v1IndexdefInputDataIndexDefinitionIdAllGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling IndexesApi#v1IndexdefInputDataIndexDefinitionIdAllGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexDefinitionId** | **String**|  |

### Return type

ApiRequest[[**Seq[IndexDefinitionInputData]**](IndexDefinitionInputData.md)]


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1IndexdefInputDataIndexDefinitionIdGet

> v1IndexdefInputDataIndexDefinitionIdGet(v1IndexdefInputDataIndexDefinitionIdGetRequest): ApiRequest[Seq[IndexDefinitionSnapshotEntry]]

Returns data inputs for certain index definition and time

### Example

```scala
// Import classes:
import 
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
    val apiInstance = IndexesApi("https://rest-api.indexes.coinapi.io")
    val indexDefinitionId: String = indexDefinitionId_example // String | 

    val time: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val enabledOnly: Boolean = true // Boolean | 

    val pendingOnly: Boolean = true // Boolean | 

    val filterAssetId: String = filterAssetId_example // String | 

    val withStatusInfo: Boolean = true // Boolean | 
    
    val request = apiInstance.v1IndexdefInputDataIndexDefinitionIdGet(indexDefinitionId, time, enabledOnly, pendingOnly, filterAssetId, withStatusInfo)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling IndexesApi#v1IndexdefInputDataIndexDefinitionIdGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling IndexesApi#v1IndexdefInputDataIndexDefinitionIdGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexDefinitionId** | **String**|  |
 **time** | **OffsetDateTime**|  | [optional]
 **enabledOnly** | **Boolean**|  | [optional]
 **pendingOnly** | **Boolean**|  | [optional]
 **filterAssetId** | **String**|  | [optional]
 **withStatusInfo** | **Boolean**|  | [optional]

### Return type

ApiRequest[[**Seq[IndexDefinitionSnapshotEntry]**](IndexDefinitionSnapshotEntry.md)]


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1IndexdefMultiassetGet

> v1IndexdefMultiassetGet(): ApiRequest[Seq[IndexMultiAssetWeight]]

Get all multi-asset weights

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
    val apiInstance = IndexesApi("https://rest-api.indexes.coinapi.io")    
    val request = apiInstance.v1IndexdefMultiassetGet()
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling IndexesApi#v1IndexdefMultiassetGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling IndexesApi#v1IndexdefMultiassetGet")
            exception.printStackTrace();
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

ApiRequest[[**Seq[IndexMultiAssetWeight]**](IndexMultiAssetWeight.md)]


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1IndexdefMultiassetIndexIdGet

> v1IndexdefMultiassetIndexIdGet(v1IndexdefMultiassetIndexIdGetRequest): ApiRequest[Seq[IndexMultiAssetWeight]]

Get multi-asset weights for specific index

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
    val apiInstance = IndexesApi("https://rest-api.indexes.coinapi.io")
    val indexId: String = indexId_example // String | 
    
    val request = apiInstance.v1IndexdefMultiassetIndexIdGet(indexId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling IndexesApi#v1IndexdefMultiassetIndexIdGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling IndexesApi#v1IndexdefMultiassetIndexIdGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexId** | **String**|  |

### Return type

ApiRequest[[**Seq[IndexMultiAssetWeight]**](IndexMultiAssetWeight.md)]


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1IndexesGet

> v1IndexesGet(): ApiRequest[Seq[IndexIdentifier]]

List indexes

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
    val apiInstance = IndexesApi("https://rest-api.indexes.coinapi.io")    
    val request = apiInstance.v1IndexesGet()
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling IndexesApi#v1IndexesGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling IndexesApi#v1IndexesGet")
            exception.printStackTrace();
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

ApiRequest[[**Seq[IndexIdentifier]**](IndexIdentifier.md)]


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1IndexesIndexDefinitionIdCurrentSnapshotGet

> v1IndexesIndexDefinitionIdCurrentSnapshotGet(v1IndexesIndexDefinitionIdCurrentSnapshotGetRequest): ApiRequest[Seq[IndexDefinitionSnapshotEntry]]

Current Index Values for index definition

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
    val apiInstance = IndexesApi("https://rest-api.indexes.coinapi.io")
    val indexDefinitionId: String = indexDefinitionId_example // String | 
    
    val request = apiInstance.v1IndexesIndexDefinitionIdCurrentSnapshotGet(indexDefinitionId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling IndexesApi#v1IndexesIndexDefinitionIdCurrentSnapshotGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling IndexesApi#v1IndexesIndexDefinitionIdCurrentSnapshotGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexDefinitionId** | **String**|  |

### Return type

ApiRequest[[**Seq[IndexDefinitionSnapshotEntry]**](IndexDefinitionSnapshotEntry.md)]


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1IndexesIndexDefinitionIdHistorySnapshotGet

> v1IndexesIndexDefinitionIdHistorySnapshotGet(v1IndexesIndexDefinitionIdHistorySnapshotGetRequest): ApiRequest[Seq[IndexDefinitionSnapshotEntry]]

Historical Index Values for index definition

### Example

```scala
// Import classes:
import 
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
    val apiInstance = IndexesApi("https://rest-api.indexes.coinapi.io")
    val indexDefinitionId: String = indexDefinitionId_example // String | 

    val time: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 
    
    val request = apiInstance.v1IndexesIndexDefinitionIdHistorySnapshotGet(indexDefinitionId, time)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling IndexesApi#v1IndexesIndexDefinitionIdHistorySnapshotGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling IndexesApi#v1IndexesIndexDefinitionIdHistorySnapshotGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexDefinitionId** | **String**|  |
 **time** | **OffsetDateTime**|  | [optional]

### Return type

ApiRequest[[**Seq[IndexDefinitionSnapshotEntry]**](IndexDefinitionSnapshotEntry.md)]


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1IndexesIndexIdCurrentGet

> v1IndexesIndexIdCurrentGet(v1IndexesIndexIdCurrentGetRequest): ApiRequest[IndexValue]

Current Index Value

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
    val apiInstance = IndexesApi("https://rest-api.indexes.coinapi.io")
    val indexId: String = indexId_example // String | 
    
    val request = apiInstance.v1IndexesIndexIdCurrentGet(indexId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling IndexesApi#v1IndexesIndexIdCurrentGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling IndexesApi#v1IndexesIndexIdCurrentGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexId** | **String**|  |

### Return type

ApiRequest[[**IndexValue**](IndexValue.md)]


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1IndexesIndexIdHistoryGet

> v1IndexesIndexIdHistoryGet(v1IndexesIndexIdHistoryGetRequest): ApiRequest[Seq[IndexValue]]

Historical Index Value w/Composition

### Example

```scala
// Import classes:
import 
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
    val apiInstance = IndexesApi("https://rest-api.indexes.coinapi.io")
    val indexId: String = indexId_example // String | 

    val timeStart: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val timeEnd: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val limit: Int = 56 // Int | 
    
    val request = apiInstance.v1IndexesIndexIdHistoryGet(indexId, timeStart, timeEnd, limit)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling IndexesApi#v1IndexesIndexIdHistoryGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling IndexesApi#v1IndexesIndexIdHistoryGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexId** | **String**|  |
 **timeStart** | **OffsetDateTime**|  | [optional]
 **timeEnd** | **OffsetDateTime**|  | [optional]
 **limit** | **Int**|  | [optional]

### Return type

ApiRequest[[**Seq[IndexValue]**](IndexValue.md)]


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1IndexesIndexIdTimeseriesGet

> v1IndexesIndexIdTimeseriesGet(v1IndexesIndexIdTimeseriesGetRequest): ApiRequest[Seq[IndexTimeseriesItem]]

Timeseries Index Value

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
    val apiInstance = IndexesApi("https://rest-api.indexes.coinapi.io")
    val indexId: String = indexId_example // String | 

    val periodId: String = periodId_example // String | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)

    val timeStart: String = timeStart_example // String | Timeseries starting time in ISO 8601

    val timeEnd: String = timeEnd_example // String | Timeseries ending time in ISO 8601

    val limit: Int = 56 // Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    
    val request = apiInstance.v1IndexesIndexIdTimeseriesGet(indexId, periodId, timeStart, timeEnd, limit)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling IndexesApi#v1IndexesIndexIdTimeseriesGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling IndexesApi#v1IndexesIndexIdTimeseriesGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexId** | **String**|  |
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) |
 **timeStart** | **String**| Timeseries starting time in ISO 8601 |
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 |
 **limit** | **Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional]

### Return type

ApiRequest[[**Seq[IndexTimeseriesItem]**](IndexTimeseriesItem.md)]


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

