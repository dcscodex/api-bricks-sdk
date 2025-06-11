# ContentExtractionApi

All URIs are relative to *https://api.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ExtractorGet**](ContentExtractionApi.md#v1ExtractorGet) | **GET** /v1/extractor | Extract and classify SEC filing content
[**v1ExtractorGetWithHttpInfo**](ContentExtractionApi.md#v1ExtractorGetWithHttpInfo) | **GET** /v1/extractor | Extract and classify SEC filing content
[**v1ExtractorItemGet**](ContentExtractionApi.md#v1ExtractorItemGet) | **GET** /v1/extractor/item | Extract specific item content from SEC filing
[**v1ExtractorItemGetWithHttpInfo**](ContentExtractionApi.md#v1ExtractorItemGetWithHttpInfo) | **GET** /v1/extractor/item | Extract specific item content from SEC filing



## v1ExtractorGet

> v1ExtractorGet(v1ExtractorGetRequest): ApiRequest[Map[String, AnyType]]

Extract and classify SEC filing content

Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.  ### Supported Form Types  Form Type | Description ----------|------------ 8-K      | Current report filing 10-K     | Annual report filing 10-Q     | Quarterly report filing  ### Content Classification - 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01) - 10-K/10-Q forms: Items categorized by their respective part and item structure  :::note Both HTML and plain text documents are supported for content extraction. :::

### Example

```scala
// Import classes:
import 
import 
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
    val apiInstance = ContentExtractionApi("https://api.sec.finfeedapi.com")
    val accessionNumber: String = accessionNumber_example // String | The SEC filing accession number used to retrieve the filing from EDGAR database.

    val `type`: ExtractorType =  // ExtractorType | Result type (text or html, default: text)
    
    val request = apiInstance.v1ExtractorGet(accessionNumber, `type`)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ContentExtractionApi#v1ExtractorGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ContentExtractionApi#v1ExtractorGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessionNumber** | **String**| The SEC filing accession number used to retrieve the filing from EDGAR database. |
 **`type`** | [**ExtractorType**](.md)| Result type (text or html, default: text) | [optional] [enum: text, html]

### Return type

ApiRequest[[**Map[String, AnyType]**](AnyType.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful extraction |  -  |
| **400** | Invalid request |  -  |
| **404** | Filing not found |  -  |
| **500** | Server error |  -  |


## v1ExtractorItemGet

> v1ExtractorItemGet(v1ExtractorItemGetRequest): ApiRequest[String]

Extract specific item content from SEC filing

Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.  ### Item Number Format  Form Type | Item Format Examples -----------|------------------- 8-K       | 1.01, 2.01, 7.01 10-K      | 1, 2, 3 10-K/10-Q | PartI 1, PartII 2  :::tip For best results, ensure the item number matches exactly with the filing&#39;s structure. :::

### Example

```scala
// Import classes:
import 
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
    val apiInstance = ContentExtractionApi("https://api.sec.finfeedapi.com")
    val accessionNumber: String = accessionNumber_example // String | The SEC filing accession number used to retrieve the filing from EDGAR database.

    val itemNumber: String = itemNumber_example // String | The specific item number to extract (e.g., \"1.01\", \"2.01\", \"7.01\").

    val `type`: ExtractorType =  // ExtractorType | Result type (text or html, default: text)
    
    val request = apiInstance.v1ExtractorItemGet(accessionNumber, itemNumber, `type`)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling ContentExtractionApi#v1ExtractorItemGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling ContentExtractionApi#v1ExtractorItemGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessionNumber** | **String**| The SEC filing accession number used to retrieve the filing from EDGAR database. |
 **itemNumber** | **String**| The specific item number to extract (e.g., \&quot;1.01\&quot;, \&quot;2.01\&quot;, \&quot;7.01\&quot;). |
 **`type`** | [**ExtractorType**](.md)| Result type (text or html, default: text) | [optional] [enum: text, html]

### Return type

ApiRequest[**String**]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful extraction |  -  |
| **400** | Invalid request |  -  |
| **404** | Filing or item not found |  -  |
| **500** | Server error |  -  |

