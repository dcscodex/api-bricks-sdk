# MetadataApi

All URIs are relative to *https://api-realtime.fx.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AssetsAssetIdGet**](MetadataApi.md#v1AssetsAssetIdGet) | **GET** /v1/assets/{asset_id} | List all assets by asset ID
[**v1AssetsAssetIdGetWithHttpInfo**](MetadataApi.md#v1AssetsAssetIdGetWithHttpInfo) | **GET** /v1/assets/{asset_id} | List all assets by asset ID
[**v1AssetsGet**](MetadataApi.md#v1AssetsGet) | **GET** /v1/assets | List all assets
[**v1AssetsGetWithHttpInfo**](MetadataApi.md#v1AssetsGetWithHttpInfo) | **GET** /v1/assets | List all assets
[**v1AssetsIconsSizeGet**](MetadataApi.md#v1AssetsIconsSizeGet) | **GET** /v1/assets/icons/{size} | List all asset icons
[**v1AssetsIconsSizeGetWithHttpInfo**](MetadataApi.md#v1AssetsIconsSizeGetWithHttpInfo) | **GET** /v1/assets/icons/{size} | List all asset icons



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
    
    // Configure API key authorization: APIKey
    implicit val APIKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    val apiInvoker = ApiInvoker()
    val apiInstance = MetadataApi("https://api-realtime.fx.finfeedapi.com")
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

[APIKey](../README.md#APIKey)

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
    
    // Configure API key authorization: APIKey
    implicit val APIKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    val apiInvoker = ApiInvoker()
    val apiInstance = MetadataApi("https://api-realtime.fx.finfeedapi.com")
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

[APIKey](../README.md#APIKey)

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
    
    // Configure API key authorization: APIKey
    implicit val APIKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    val apiInvoker = ApiInvoker()
    val apiInstance = MetadataApi("https://api-realtime.fx.finfeedapi.com")
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

[APIKey](../README.md#APIKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

