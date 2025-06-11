# FullTextSearchApi

All URIs are relative to *https://api.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1FullTextGet**](FullTextSearchApi.md#v1FullTextGet) | **GET** /v1/full-text | Full-text search of SEC filing documents
[**v1FullTextGetWithHttpInfo**](FullTextSearchApi.md#v1FullTextGetWithHttpInfo) | **GET** /v1/full-text | Full-text search of SEC filing documents



## v1FullTextGet

> v1FullTextGet(v1FullTextGetRequest): ApiRequest[Seq[SecFilingResultDto]]

Full-text search of SEC filing documents

Search across SEC filing documents with advanced filtering and sorting capabilities.  ### Available Sort Fields  Field Name | Description -----------|------------- AccessionNumber | SEC filing accession number FormType | Type of the filing document FilingDate | Date when filing was submitted CompanyName | Name of the company CIK | Central Index Key DocumentFilename | Name of the filing document DocumentDescription | Description of the document  ### Search Options  Option | Description --------|------------- text_contains | Keywords that must appear in the document text_not_contain | Keywords that must not appear in the document  ### Date Format All dates must be provided in YYYY-MM-DD format  :::tip Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches :::  :::note The search is case-insensitive and supports partial word matches :::

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
    val apiInstance = FullTextSearchApi("https://api.sec.finfeedapi.com")
    val formType: String = formType_example // String | Filter by form type (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated

    val fillingDateStart: String = fillingDateStart_example // String | Filter by filling date start (inclusive), format YYYY-MM-DD

    val fillingDateEnd: String = fillingDateEnd_example // String | Filter by filling date end (inclusive), format YYYY-MM-DD

    val textContains: String = textContains_example // String | Keywords that the text must contain. Multiple values can be comma-separated

    val textNotContain: String = textNotContain_example // String | Keywords that the text must not contain. Multiple values can be comma-separated

    val pageSize: Int = 56 // Int | Number of results per page (default: 100)

    val pageNumber: Int = 56 // Int | Page number to retrieve (default: 1)

    val sortBy: String = sortBy_example // String | Field to sort by (default: AccessionNumber)

    val sortOrder: String = sortOrder_example // String | Sort order (asc or desc). Defaults to asc
    
    val request = apiInstance.v1FullTextGet(formType, fillingDateStart, fillingDateEnd, textContains, textNotContain, pageSize, pageNumber, sortBy, sortOrder)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling FullTextSearchApi#v1FullTextGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling FullTextSearchApi#v1FullTextGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formType** | **String**| Filter by form type (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional]
 **fillingDateStart** | **String**| Filter by filling date start (inclusive), format YYYY-MM-DD | [optional]
 **fillingDateEnd** | **String**| Filter by filling date end (inclusive), format YYYY-MM-DD | [optional]
 **textContains** | **String**| Keywords that the text must contain. Multiple values can be comma-separated | [optional]
 **textNotContain** | **String**| Keywords that the text must not contain. Multiple values can be comma-separated | [optional]
 **pageSize** | **Int**| Number of results per page (default: 100) | [optional]
 **pageNumber** | **Int**| Page number to retrieve (default: 1) | [optional]
 **sortBy** | **String**| Field to sort by (default: AccessionNumber) | [optional]
 **sortOrder** | **String**| Sort order (asc or desc). Defaults to asc | [optional]

### Return type

ApiRequest[[**Seq[SecFilingResultDto]**](SecFilingResultDto.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful operation |  -  |
| **400** | Invalid request |  -  |
| **500** | Server error |  -  |

