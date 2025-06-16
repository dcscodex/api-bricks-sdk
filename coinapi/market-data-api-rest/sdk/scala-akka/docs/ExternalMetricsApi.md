# ExternalMetricsApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ExternalmetricsAssetHistoryGet**](ExternalMetricsApi.md#v1ExternalmetricsAssetHistoryGet) | **GET** /v1/externalmetrics/asset/history | Historical metrics for the asset
[**v1ExternalmetricsAssetHistoryGetWithHttpInfo**](ExternalMetricsApi.md#v1ExternalmetricsAssetHistoryGetWithHttpInfo) | **GET** /v1/externalmetrics/asset/history | Historical metrics for the asset
[**v1ExternalmetricsAssetListingGet**](ExternalMetricsApi.md#v1ExternalmetricsAssetListingGet) | **GET** /v1/externalmetrics/asset/listing | Listing of metrics available for specific asset
[**v1ExternalmetricsAssetListingGetWithHttpInfo**](ExternalMetricsApi.md#v1ExternalmetricsAssetListingGetWithHttpInfo) | **GET** /v1/externalmetrics/asset/listing | Listing of metrics available for specific asset
[**v1ExternalmetricsChainHistoryGet**](ExternalMetricsApi.md#v1ExternalmetricsChainHistoryGet) | **GET** /v1/externalmetrics/chain/history | Historical metrics for the chain
[**v1ExternalmetricsChainHistoryGetWithHttpInfo**](ExternalMetricsApi.md#v1ExternalmetricsChainHistoryGetWithHttpInfo) | **GET** /v1/externalmetrics/chain/history | Historical metrics for the chain
[**v1ExternalmetricsChainListingGet**](ExternalMetricsApi.md#v1ExternalmetricsChainListingGet) | **GET** /v1/externalmetrics/chain/listing | Listing of metrics available for specific chain
[**v1ExternalmetricsChainListingGetWithHttpInfo**](ExternalMetricsApi.md#v1ExternalmetricsChainListingGetWithHttpInfo) | **GET** /v1/externalmetrics/chain/listing | Listing of metrics available for specific chain
[**v1ExternalmetricsExchangeHistoryGet**](ExternalMetricsApi.md#v1ExternalmetricsExchangeHistoryGet) | **GET** /v1/externalmetrics/exchange/history | Historical metrics for the exchange
[**v1ExternalmetricsExchangeHistoryGetWithHttpInfo**](ExternalMetricsApi.md#v1ExternalmetricsExchangeHistoryGetWithHttpInfo) | **GET** /v1/externalmetrics/exchange/history | Historical metrics for the exchange
[**v1ExternalmetricsExchangeListingGet**](ExternalMetricsApi.md#v1ExternalmetricsExchangeListingGet) | **GET** /v1/externalmetrics/exchange/listing | Listing of metrics available for specific exchange
[**v1ExternalmetricsExchangeListingGetWithHttpInfo**](ExternalMetricsApi.md#v1ExternalmetricsExchangeListingGetWithHttpInfo) | **GET** /v1/externalmetrics/exchange/listing | Listing of metrics available for specific exchange
[**v1ExternalmetricsListingGet**](ExternalMetricsApi.md#v1ExternalmetricsListingGet) | **GET** /v1/externalmetrics/listing | Listing of all supported metrics
[**v1ExternalmetricsListingGetWithHttpInfo**](ExternalMetricsApi.md#v1ExternalmetricsListingGetWithHttpInfo) | **GET** /v1/externalmetrics/listing | Listing of all supported metrics



## v1ExternalmetricsAssetHistoryGet

> v1ExternalmetricsAssetHistoryGet(v1ExternalmetricsAssetHistoryGetRequest): ApiRequest[Seq[Any]]

Historical metrics for the asset

Get asset metrics history.

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
    val apiInstance = ExternalMetricsApi("https://rest.coinapi.io")
    val metricId: String = metricId_example // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)

    val assetId: String = assetId_example // String | Asset identifier (e.g., `USDC`, `USDT`)

    val timeStart: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | Starting time in ISO 8601

    val timeEnd: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | Ending time in ISO 8601

    val timeFormat: String = timeFormat_example // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)

    val periodId: String = periodId_example // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`

    val limit: Int = 56 // Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    
    val request = apiInstance.v1ExternalmetricsAssetHistoryGet(metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsAssetHistoryGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsAssetHistoryGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) |
 **assetId** | **String**| Asset identifier (e.g., &#x60;USDC&#x60;, &#x60;USDT&#x60;) |
 **timeStart** | **OffsetDateTime**| Starting time in ISO 8601 | [optional]
 **timeEnd** | **OffsetDateTime**| Ending time in ISO 8601 | [optional]
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional]
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional]
 **limit** | **Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional]

### Return type

ApiRequest[**Seq[Any]**]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **400** | Invalid input, e.g., missing required parameters, invalid asset_id. |  -  |
| **500** | Internal server error. |  -  |


## v1ExternalmetricsAssetListingGet

> v1ExternalmetricsAssetListingGet(v1ExternalmetricsAssetListingGetRequest): ApiRequest[Seq[MetricInfo]]

Listing of metrics available for specific asset

Get all metrics that are actually available for the specified asset.

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
    val apiInstance = ExternalMetricsApi("https://rest.coinapi.io")
    val assetId: String = assetId_example // String | Asset identifier (e.g., USDC, USDT)
    
    val request = apiInstance.v1ExternalmetricsAssetListingGet(assetId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsAssetListingGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsAssetListingGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **String**| Asset identifier (e.g., USDC, USDT) |

### Return type

ApiRequest[[**Seq[MetricInfo]**](MetricInfo.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1ExternalmetricsChainHistoryGet

> v1ExternalmetricsChainHistoryGet(v1ExternalmetricsChainHistoryGetRequest): ApiRequest[Seq[Any]]

Historical metrics for the chain

Get chain metrics history.

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
    val apiInstance = ExternalMetricsApi("https://rest.coinapi.io")
    val metricId: String = metricId_example // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)

    val chainId: String = chainId_example // String | Chain identifier (e.g., `Ethereum`, `Arbitrum`)

    val timeStart: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | Starting time in ISO 8601

    val timeEnd: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | Ending time in ISO 8601

    val timeFormat: String = timeFormat_example // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)

    val periodId: String = periodId_example // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`

    val limit: Int = 56 // Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    
    val request = apiInstance.v1ExternalmetricsChainHistoryGet(metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsChainHistoryGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsChainHistoryGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) |
 **chainId** | **String**| Chain identifier (e.g., &#x60;Ethereum&#x60;, &#x60;Arbitrum&#x60;) |
 **timeStart** | **OffsetDateTime**| Starting time in ISO 8601 | [optional]
 **timeEnd** | **OffsetDateTime**| Ending time in ISO 8601 | [optional]
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional]
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional]
 **limit** | **Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional]

### Return type

ApiRequest[**Seq[Any]**]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **400** | Invalid input, e.g., missing required parameters, invalid chain_id. |  -  |
| **500** | Internal server error. |  -  |


## v1ExternalmetricsChainListingGet

> v1ExternalmetricsChainListingGet(v1ExternalmetricsChainListingGetRequest): ApiRequest[Seq[MetricInfo]]

Listing of metrics available for specific chain

Get all metrics that are actually available for the specified blockchain chain.

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
    val apiInstance = ExternalMetricsApi("https://rest.coinapi.io")
    val chainId: String = chainId_example // String | Chain identifier (e.g., ETHEREUM, ARBITRUM)
    
    val request = apiInstance.v1ExternalmetricsChainListingGet(chainId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsChainListingGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsChainListingGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain identifier (e.g., ETHEREUM, ARBITRUM) |

### Return type

ApiRequest[[**Seq[MetricInfo]**](MetricInfo.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1ExternalmetricsExchangeHistoryGet

> v1ExternalmetricsExchangeHistoryGet(v1ExternalmetricsExchangeHistoryGetRequest): ApiRequest[Seq[Any]]

Historical metrics for the exchange

Get exchange metrics history.

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
    val apiInstance = ExternalMetricsApi("https://rest.coinapi.io")
    val metricId: String = metricId_example // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)

    val exchangeId: String = exchangeId_example // String | Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`)

    val timeStart: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | Starting time in ISO 8601

    val timeEnd: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | Ending time in ISO 8601

    val timeFormat: String = timeFormat_example // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)

    val periodId: String = periodId_example // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`

    val limit: Int = 56 // Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    
    val request = apiInstance.v1ExternalmetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsExchangeHistoryGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsExchangeHistoryGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) |
 **exchangeId** | **String**| Exchange identifier (e.g., &#x60;BINANCE&#x60;, &#x60;UNISWAP-V3-ETHEREUM&#x60;) |
 **timeStart** | **OffsetDateTime**| Starting time in ISO 8601 | [optional]
 **timeEnd** | **OffsetDateTime**| Ending time in ISO 8601 | [optional]
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional]
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional]
 **limit** | **Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional]

### Return type

ApiRequest[**Seq[Any]**]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **400** | Invalid input, e.g., missing required parameters, invalid exchange_id mapping. |  -  |
| **500** | Internal server error. |  -  |


## v1ExternalmetricsExchangeListingGet

> v1ExternalmetricsExchangeListingGet(v1ExternalmetricsExchangeListingGetRequest): ApiRequest[Seq[MetricInfo]]

Listing of metrics available for specific exchange

Get all metrics that are actually available for the specified exchange.

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
    val apiInstance = ExternalMetricsApi("https://rest.coinapi.io")
    val exchangeId: String = exchangeId_example // String | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)
    
    val request = apiInstance.v1ExternalmetricsExchangeListingGet(exchangeId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsExchangeListingGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsExchangeListingGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) |

### Return type

ApiRequest[[**Seq[MetricInfo]**](MetricInfo.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1ExternalmetricsListingGet

> v1ExternalmetricsListingGet(): ApiRequest[Seq[MetricInfo]]

Listing of all supported metrics

Get all metrics available in the system.

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
    val apiInstance = ExternalMetricsApi("https://rest.coinapi.io")    
    val request = apiInstance.v1ExternalmetricsListingGet()
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsListingGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ExternalMetricsApi#v1ExternalmetricsListingGet")
            exception.printStackTrace();
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

ApiRequest[[**Seq[MetricInfo]**](MetricInfo.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

