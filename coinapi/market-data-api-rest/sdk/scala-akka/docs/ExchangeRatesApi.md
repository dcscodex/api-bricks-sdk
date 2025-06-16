# ExchangeRatesApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSpecificRate**](ExchangeRatesApi.md#getSpecificRate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
[**getSpecificRateWithHttpInfo**](ExchangeRatesApi.md#getSpecificRateWithHttpInfo) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
[**v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet**](ExchangeRatesApi.md#v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote}/history | Timeseries data
[**v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGetWithHttpInfo**](ExchangeRatesApi.md#v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGetWithHttpInfo) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote}/history | Timeseries data
[**v1ExchangerateAssetIdBaseGet**](ExchangeRatesApi.md#v1ExchangerateAssetIdBaseGet) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates
[**v1ExchangerateAssetIdBaseGetWithHttpInfo**](ExchangeRatesApi.md#v1ExchangerateAssetIdBaseGetWithHttpInfo) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates
[**v1ExchangerateHistoryPeriodsGet**](ExchangeRatesApi.md#v1ExchangerateHistoryPeriodsGet) | **GET** /v1/exchangerate/history/periods | Timeseries periods
[**v1ExchangerateHistoryPeriodsGetWithHttpInfo**](ExchangeRatesApi.md#v1ExchangerateHistoryPeriodsGetWithHttpInfo) | **GET** /v1/exchangerate/history/periods | Timeseries periods



## getSpecificRate

> getSpecificRate(getSpecificRateRequest): ApiRequest[ExchangeRate]

Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::

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
    val apiInstance = ExchangeRatesApi("https://rest.coinapi.io")
    val assetIdBase: String = assetIdBase_example // String | Requested exchange rate base asset identifier (from the Metadata -> Assets)

    val assetIdQuote: String = assetIdQuote_example // String | Requested exchange rate quote asset identifier (from the Metadata -> Assets)

    val time: String = time_example // String | Time at which exchange rate is calculated (optional, if not supplied then current rate is returned)
    
    val request = apiInstance.getSpecificRate(assetIdBase, assetIdQuote, time)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ExchangeRatesApi#getSpecificRate")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ExchangeRatesApi#getSpecificRate")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetIdBase** | **String**| Requested exchange rate base asset identifier (from the Metadata -&gt; Assets) |
 **assetIdQuote** | **String**| Requested exchange rate quote asset identifier (from the Metadata -&gt; Assets) |
 **time** | **String**| Time at which exchange rate is calculated (optional, if not supplied then current rate is returned) | [optional]

### Return type

ApiRequest[[**ExchangeRate**](ExchangeRate.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet

> v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet(v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGetRequest): ApiRequest[Seq[ExchangeRatesTimeseriesItem]]

Timeseries data

Get the historical exchange rates between two assets in the form of the timeseries.

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
    val apiInstance = ExchangeRatesApi("https://rest.coinapi.io")
    val assetIdBase: String = assetIdBase_example // String | Requested exchange rates base asset identifier (from the Metadata -> Assets)

    val assetIdQuote: String = assetIdQuote_example // String | Requested exchange rates base asset identifier (from the Metadata -> Assets)

    val periodId: String = periodId_example // String | Identifier of requested timeseries period (required, e.g. `5SEC` or `1HRS`)

    val timeStart: String = timeStart_example // String | Timeseries starting time in ISO 8601 (required)

    val timeEnd: String = timeEnd_example // String | Timeseries ending time in ISO 8601 (required)

    val limit: Int = 56 // Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    
    val request = apiInstance.v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet(assetIdBase, assetIdQuote, periodId, timeStart, timeEnd, limit)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ExchangeRatesApi#v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ExchangeRatesApi#v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetIdBase** | **String**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) |
 **assetIdQuote** | **String**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) |
 **periodId** | **String**| Identifier of requested timeseries period (required, e.g. &#x60;5SEC&#x60; or &#x60;1HRS&#x60;) | [optional]
 **timeStart** | **String**| Timeseries starting time in ISO 8601 (required) | [optional]
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 (required) | [optional]
 **limit** | **Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional]

### Return type

ApiRequest[[**Seq[ExchangeRatesTimeseriesItem]**](ExchangeRatesTimeseriesItem.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1ExchangerateAssetIdBaseGet

> v1ExchangerateAssetIdBaseGet(v1ExchangerateAssetIdBaseGetRequest): ApiRequest[ExchangeRates]

Get all current rates

Get the current exchange rate between requested asset and all other assets.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::              :::info You can invert the rates by using Y &#x3D; 1 / X equation, for example BTC/USD &#x3D; 1 / (USD/BTC); :::

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
    val apiInstance = ExchangeRatesApi("https://rest.coinapi.io")
    val assetIdBase: String = assetIdBase_example // String | Requested exchange rates base asset identifier (from the Metadata -> Assets)

    val filterAssetId: String = filterAssetId_example // String | Comma or semicolon delimited asset identifiers used to filter response (optional)

    val invert: Boolean = true // Boolean | True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`)

    val time: String = time_example // String | Time for historical rates (optional)
    
    val request = apiInstance.v1ExchangerateAssetIdBaseGet(assetIdBase, filterAssetId, invert, time)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ExchangeRatesApi#v1ExchangerateAssetIdBaseGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ExchangeRatesApi#v1ExchangerateAssetIdBaseGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetIdBase** | **String**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) |
 **filterAssetId** | **String**| Comma or semicolon delimited asset identifiers used to filter response (optional) | [optional]
 **invert** | **Boolean**| True will invert all the rates (optional, if true then rates will be calculated as &#x60;rate &#x3D; 1 / actual_rate&#x60; eg. &#x60;USD/BTC&#x60; as &#x60;BTC/USD&#x60;) | [optional]
 **time** | **String**| Time for historical rates (optional) | [optional]

### Return type

ApiRequest[[**ExchangeRates**](ExchangeRates.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1ExchangerateHistoryPeriodsGet

> v1ExchangerateHistoryPeriodsGet(): ApiRequest[Seq[TimeseriesPeriod]]

Timeseries periods

You can also obtain historical exchange rates of any asset pair, grouped into time periods. Get full list of supported time periods available for requesting exchange rates historical timeseries data.              ## Timeseries periods Time unit | Period identifiers --- | --- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY

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
    val apiInstance = ExchangeRatesApi("https://rest.coinapi.io")    
    val request = apiInstance.v1ExchangerateHistoryPeriodsGet()
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ExchangeRatesApi#v1ExchangerateHistoryPeriodsGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ExchangeRatesApi#v1ExchangerateHistoryPeriodsGet")
            exception.printStackTrace();
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

ApiRequest[[**Seq[TimeseriesPeriod]**](TimeseriesPeriod.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

