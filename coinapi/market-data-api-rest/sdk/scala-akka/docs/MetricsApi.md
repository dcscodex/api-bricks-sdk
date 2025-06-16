# MetricsApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1MetricsAssetCurrentGet**](MetricsApi.md#v1MetricsAssetCurrentGet) | **GET** /v1/metrics/asset/current | Current metrics for given asset
[**v1MetricsAssetCurrentGetWithHttpInfo**](MetricsApi.md#v1MetricsAssetCurrentGetWithHttpInfo) | **GET** /v1/metrics/asset/current | Current metrics for given asset
[**v1MetricsAssetHistoryGet**](MetricsApi.md#v1MetricsAssetHistoryGet) | **GET** /v1/metrics/asset/history | Historical metrics for asset
[**v1MetricsAssetHistoryGetWithHttpInfo**](MetricsApi.md#v1MetricsAssetHistoryGetWithHttpInfo) | **GET** /v1/metrics/asset/history | Historical metrics for asset
[**v1MetricsAssetListingGet**](MetricsApi.md#v1MetricsAssetListingGet) | **GET** /v1/metrics/asset/listing | Listing of all supported metrics for asset
[**v1MetricsAssetListingGetWithHttpInfo**](MetricsApi.md#v1MetricsAssetListingGetWithHttpInfo) | **GET** /v1/metrics/asset/listing | Listing of all supported metrics for asset
[**v1MetricsExchangeCurrentGet**](MetricsApi.md#v1MetricsExchangeCurrentGet) | **GET** /v1/metrics/exchange/current | Current metrics for given exchange
[**v1MetricsExchangeCurrentGetWithHttpInfo**](MetricsApi.md#v1MetricsExchangeCurrentGetWithHttpInfo) | **GET** /v1/metrics/exchange/current | Current metrics for given exchange
[**v1MetricsExchangeHistoryGet**](MetricsApi.md#v1MetricsExchangeHistoryGet) | **GET** /v1/metrics/exchange/history | Historical metrics for the exchange
[**v1MetricsExchangeHistoryGetWithHttpInfo**](MetricsApi.md#v1MetricsExchangeHistoryGetWithHttpInfo) | **GET** /v1/metrics/exchange/history | Historical metrics for the exchange
[**v1MetricsExchangeListingGet**](MetricsApi.md#v1MetricsExchangeListingGet) | **GET** /v1/metrics/exchange/listing | Listing of all supported exchange metrics
[**v1MetricsExchangeListingGetWithHttpInfo**](MetricsApi.md#v1MetricsExchangeListingGetWithHttpInfo) | **GET** /v1/metrics/exchange/listing | Listing of all supported exchange metrics
[**v1MetricsListingGet**](MetricsApi.md#v1MetricsListingGet) | **GET** /v1/metrics/listing | Listing of all supported metrics by CoinAPI
[**v1MetricsListingGetWithHttpInfo**](MetricsApi.md#v1MetricsListingGetWithHttpInfo) | **GET** /v1/metrics/listing | Listing of all supported metrics by CoinAPI
[**v1MetricsSymbolCurrentGet**](MetricsApi.md#v1MetricsSymbolCurrentGet) | **GET** /v1/metrics/symbol/current | Current metrics for given symbol
[**v1MetricsSymbolCurrentGetWithHttpInfo**](MetricsApi.md#v1MetricsSymbolCurrentGetWithHttpInfo) | **GET** /v1/metrics/symbol/current | Current metrics for given symbol
[**v1MetricsSymbolHistoryGet**](MetricsApi.md#v1MetricsSymbolHistoryGet) | **GET** /v1/metrics/symbol/history | Historical metrics for symbol
[**v1MetricsSymbolHistoryGetWithHttpInfo**](MetricsApi.md#v1MetricsSymbolHistoryGetWithHttpInfo) | **GET** /v1/metrics/symbol/history | Historical metrics for symbol
[**v1MetricsSymbolListingGet**](MetricsApi.md#v1MetricsSymbolListingGet) | **GET** /v1/metrics/symbol/listing | Listing of all supported metrics for symbol
[**v1MetricsSymbolListingGetWithHttpInfo**](MetricsApi.md#v1MetricsSymbolListingGetWithHttpInfo) | **GET** /v1/metrics/symbol/listing | Listing of all supported metrics for symbol



## v1MetricsAssetCurrentGet

> v1MetricsAssetCurrentGet(v1MetricsAssetCurrentGetRequest): ApiRequest[Seq[GeneralData]]

Current metrics for given asset

Get current asset metrics.

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
    val apiInstance = MetricsApi("https://rest.coinapi.io")
    val metricId: String = metricId_example // String | Metric identifier (from the Metrics -> Listing)

    val assetId: String = assetId_example // String | Asset identifier (from the Metadata -> Assets)

    val assetIdExternal: String = assetIdExternal_example // String | Exchange asset identifier

    val exchangeId: String = exchangeId_example // String | Exchange identifier (from the Metadata -> Exchanges)
    
    val request = apiInstance.v1MetricsAssetCurrentGet(metricId, assetId, assetIdExternal, exchangeId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling MetricsApi#v1MetricsAssetCurrentGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling MetricsApi#v1MetricsAssetCurrentGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | [optional]
 **assetId** | **String**| Asset identifier (from the Metadata -&gt; Assets) | [optional]
 **assetIdExternal** | **String**| Exchange asset identifier | [optional]
 **exchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional]

### Return type

ApiRequest[[**Seq[GeneralData]**](GeneralData.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1MetricsAssetHistoryGet

> v1MetricsAssetHistoryGet(v1MetricsAssetHistoryGetRequest): ApiRequest[Seq[MetricData]]

Historical metrics for asset

Get asset metrics history.

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
    
    // Configure API key authorization: APIKey
    implicit val APIKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    // Configure HTTP bearer authorization: JWT
    implicit val JWT: BearerToken = BearerToken("BEARER TOKEN")

    val apiInvoker = ApiInvoker()
    val apiInstance = MetricsApi("https://rest.coinapi.io")
    val metricId: String = metricId_example // String | Metric identifier (from the Metrics -> Listing)

    val exchangeId: String = exchangeId_example // String | Exchange identifier (from the Metadata -> Exchanges)

    val assetId: String = assetId_example // String | Asset identifier (from the Metadata -> Assets)

    val assetIdExternal: String = assetIdExternal_example // String | Exchange asset identifier

    val timeStart: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | Starting time in ISO 8601

    val timeEnd: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | Ending time in ISO 8601

    val timeFormat: String = timeFormat_example // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)

    val periodId: String = periodId_example // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`

    val limit: Int = 56 // Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    
    val request = apiInstance.v1MetricsAssetHistoryGet(metricId, exchangeId, assetId, assetIdExternal, timeStart, timeEnd, timeFormat, periodId, limit)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling MetricsApi#v1MetricsAssetHistoryGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling MetricsApi#v1MetricsAssetHistoryGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) |
 **exchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) |
 **assetId** | **String**| Asset identifier (from the Metadata -&gt; Assets) | [optional]
 **assetIdExternal** | **String**| Exchange asset identifier | [optional]
 **timeStart** | **OffsetDateTime**| Starting time in ISO 8601 | [optional]
 **timeEnd** | **OffsetDateTime**| Ending time in ISO 8601 | [optional]
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional]
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional]
 **limit** | **Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional]

### Return type

ApiRequest[[**Seq[MetricData]**](MetricData.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1MetricsAssetListingGet

> v1MetricsAssetListingGet(v1MetricsAssetListingGetRequest): ApiRequest[Seq[ListingItem]]

Listing of all supported metrics for asset

Get data metrics for asset.

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
    val apiInstance = MetricsApi("https://rest.coinapi.io")
    val metricId: String = metricId_example // String | Metric identifier (from the Metrics -> Listing)

    val exchangeId: String = exchangeId_example // String | Exchange identifier (from the Metadata -> Exchanges)

    val chainId: String = chainId_example // String | Chain identifier

    val networkId: String = networkId_example // String | Network identifier

    val assetId: String = assetId_example // String | Asset identifier (from the Metadata -> Assets)

    val assetIdExternal: String = assetIdExternal_example // String | The asset external identifier
    
    val request = apiInstance.v1MetricsAssetListingGet(metricId, exchangeId, chainId, networkId, assetId, assetIdExternal)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling MetricsApi#v1MetricsAssetListingGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling MetricsApi#v1MetricsAssetListingGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | [optional]
 **exchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional]
 **chainId** | **String**| Chain identifier | [optional]
 **networkId** | **String**| Network identifier | [optional]
 **assetId** | **String**| Asset identifier (from the Metadata -&gt; Assets) | [optional]
 **assetIdExternal** | **String**| The asset external identifier | [optional]

### Return type

ApiRequest[[**Seq[ListingItem]**](ListingItem.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1MetricsExchangeCurrentGet

> v1MetricsExchangeCurrentGet(v1MetricsExchangeCurrentGetRequest): ApiRequest[Seq[GeneralData]]

Current metrics for given exchange

Get current exchange metrics values.

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
    val apiInstance = MetricsApi("https://rest.coinapi.io")
    val exchangeId: String = exchangeId_example // String | The exchange identifier (from the Metadata -> Exchanges)

    val metricId: String = metricId_example // String | The metric identifier (from the Metrics -> Listing)
    
    val request = apiInstance.v1MetricsExchangeCurrentGet(exchangeId, metricId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling MetricsApi#v1MetricsExchangeCurrentGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling MetricsApi#v1MetricsExchangeCurrentGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| The exchange identifier (from the Metadata -&gt; Exchanges) |
 **metricId** | **String**| The metric identifier (from the Metrics -&gt; Listing) | [optional]

### Return type

ApiRequest[[**Seq[GeneralData]**](GeneralData.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1MetricsExchangeHistoryGet

> v1MetricsExchangeHistoryGet(v1MetricsExchangeHistoryGetRequest): ApiRequest[Seq[MetricData]]

Historical metrics for the exchange

Get exchange metrics history.

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
    
    // Configure API key authorization: APIKey
    implicit val APIKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    // Configure HTTP bearer authorization: JWT
    implicit val JWT: BearerToken = BearerToken("BEARER TOKEN")

    val apiInvoker = ApiInvoker()
    val apiInstance = MetricsApi("https://rest.coinapi.io")
    val metricId: String = metricId_example // String | Metric identifier (from the Metrics -> Listing)

    val exchangeId: String = exchangeId_example // String | Exchange identifier (from the Metadata -> Exchanges)

    val timeStart: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | Starting time in ISO 8601

    val timeEnd: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | Ending time in ISO 8601

    val timeFormat: String = timeFormat_example // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)

    val periodId: String = periodId_example // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`

    val limit: Int = 56 // Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    
    val request = apiInstance.v1MetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling MetricsApi#v1MetricsExchangeHistoryGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling MetricsApi#v1MetricsExchangeHistoryGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) |
 **exchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) |
 **timeStart** | **OffsetDateTime**| Starting time in ISO 8601 | [optional]
 **timeEnd** | **OffsetDateTime**| Ending time in ISO 8601 | [optional]
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional]
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional]
 **limit** | **Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional]

### Return type

ApiRequest[[**Seq[MetricData]**](MetricData.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1MetricsExchangeListingGet

> v1MetricsExchangeListingGet(v1MetricsExchangeListingGetRequest): ApiRequest[Seq[ListingItem]]

Listing of all supported exchange metrics

Get data metrics for exchange.

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
    val apiInstance = MetricsApi("https://rest.coinapi.io")
    val exchangeId: String = exchangeId_example // String | The exchange identifier (from the Metadata -> Exchanges)

    val metricId: String = metricId_example // String | The metric identifier (from the Metrics -> Listing)
    
    val request = apiInstance.v1MetricsExchangeListingGet(exchangeId, metricId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling MetricsApi#v1MetricsExchangeListingGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling MetricsApi#v1MetricsExchangeListingGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| The exchange identifier (from the Metadata -&gt; Exchanges) |
 **metricId** | **String**| The metric identifier (from the Metrics -&gt; Listing) | [optional]

### Return type

ApiRequest[[**Seq[ListingItem]**](ListingItem.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1MetricsListingGet

> v1MetricsListingGet(): ApiRequest[Seq[Metric]]

Listing of all supported metrics by CoinAPI

Get all data metrics.

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
    val apiInstance = MetricsApi("https://rest.coinapi.io")    
    val request = apiInstance.v1MetricsListingGet()
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling MetricsApi#v1MetricsListingGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling MetricsApi#v1MetricsListingGet")
            exception.printStackTrace();
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

ApiRequest[[**Seq[Metric]**](Metric.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1MetricsSymbolCurrentGet

> v1MetricsSymbolCurrentGet(v1MetricsSymbolCurrentGetRequest): ApiRequest[Seq[GeneralData]]

Current metrics for given symbol

Get current symbol metrics.

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
    val apiInstance = MetricsApi("https://rest.coinapi.io")
    val metricId: String = metricId_example // String | Metric identifier (from the Metrics -> Listing)

    val symbolId: String = symbolId_example // String | Symbol identifier (from the Metadata -> Symbols)

    val exchangeId: String = exchangeId_example // String | Exchange id (from the Metadata -> Exchanges)
    
    val request = apiInstance.v1MetricsSymbolCurrentGet(metricId, symbolId, exchangeId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling MetricsApi#v1MetricsSymbolCurrentGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling MetricsApi#v1MetricsSymbolCurrentGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | [optional]
 **symbolId** | **String**| Symbol identifier (from the Metadata -&gt; Symbols) | [optional]
 **exchangeId** | **String**| Exchange id (from the Metadata -&gt; Exchanges) | [optional]

### Return type

ApiRequest[[**Seq[GeneralData]**](GeneralData.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1MetricsSymbolHistoryGet

> v1MetricsSymbolHistoryGet(v1MetricsSymbolHistoryGetRequest): ApiRequest[Seq[MetricData]]

Historical metrics for symbol

Get symbol metrics history.

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
    
    // Configure API key authorization: APIKey
    implicit val APIKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    // Configure HTTP bearer authorization: JWT
    implicit val JWT: BearerToken = BearerToken("BEARER TOKEN")

    val apiInvoker = ApiInvoker()
    val apiInstance = MetricsApi("https://rest.coinapi.io")
    val metricId: String = metricId_example // String | Metric identifier (from the Metrics -> Listing)

    val symbolId: String = symbolId_example // String | Symbol identifier (from the Metadata -> Symbols)

    val timeStart: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | Starting time in ISO 8601

    val timeEnd: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | Ending time in ISO 8601

    val timeFormat: String = timeFormat_example // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)

    val periodId: String = periodId_example // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`

    val limit: Int = 56 // Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    
    val request = apiInstance.v1MetricsSymbolHistoryGet(metricId, symbolId, timeStart, timeEnd, timeFormat, periodId, limit)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling MetricsApi#v1MetricsSymbolHistoryGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling MetricsApi#v1MetricsSymbolHistoryGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) |
 **symbolId** | **String**| Symbol identifier (from the Metadata -&gt; Symbols) |
 **timeStart** | **OffsetDateTime**| Starting time in ISO 8601 | [optional]
 **timeEnd** | **OffsetDateTime**| Ending time in ISO 8601 | [optional]
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional]
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional]
 **limit** | **Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional]

### Return type

ApiRequest[[**Seq[MetricData]**](MetricData.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1MetricsSymbolListingGet

> v1MetricsSymbolListingGet(v1MetricsSymbolListingGetRequest): ApiRequest[Seq[ListingItem]]

Listing of all supported metrics for symbol

Get data metrics for symbol.

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
    val apiInstance = MetricsApi("https://rest.coinapi.io")
    val metricId: String = metricId_example // String | Metric identifier (from the Metrics -> Listing)

    val exchangeId: String = exchangeId_example // String | Exchange identifier (from the Metadata -> Exchanges)

    val symbolId: String = symbolId_example // String | Symbol identifier (from the Metadata -> Symbols)
    
    val request = apiInstance.v1MetricsSymbolListingGet(metricId, exchangeId, symbolId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling MetricsApi#v1MetricsSymbolListingGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling MetricsApi#v1MetricsSymbolListingGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | [optional]
 **exchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional]
 **symbolId** | **String**| Symbol identifier (from the Metadata -&gt; Symbols) | [optional]

### Return type

ApiRequest[[**Seq[ListingItem]**](ListingItem.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

