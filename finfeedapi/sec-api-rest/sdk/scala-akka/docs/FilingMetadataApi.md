# FilingMetadataApi

All URIs are relative to *https://api.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1FilingsGet**](FilingMetadataApi.md#v1FilingsGet) | **GET** /v1/filings | Query SEC filing metadata
[**v1FilingsGetWithHttpInfo**](FilingMetadataApi.md#v1FilingsGetWithHttpInfo) | **GET** /v1/filings | Query SEC filing metadata



## v1FilingsGet

> v1FilingsGet(v1FilingsGetRequest): ApiRequest[Seq[FilingMetadataDto]]

Query SEC filing metadata

Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.  ### Available Sort Fields  Field Name | Description -----------|------------- AccessionNumber | SEC filing accession number FilingDate | Date when filing was submitted AcceptanceDateTime | Date and time of filing acceptance ReportDate | Date of the report Size | Size of the filing document  ### Date Format All dates must be provided in YYYY-MM-DD format  ### Form Types Form types can be provided as comma-separated values, e.g.: \&quot;10-K,8-K,10-Q\&quot;  :::tip For optimal performance, use date ranges and form types to narrow down your search :::

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
    val apiInstance = FilingMetadataApi("https://api.sec.finfeedapi.com")
    val cik: Long = 789 // Long | Filter by Central Index Key (CIK)

    val ticker: String = ticker_example // String | Filter by stock ticker symbol

    val formType: String = formType_example // String | Filter by form type(s) (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated

    val fillingDateStart: String = fillingDateStart_example // String | Filter by filling date start (inclusive), format YYYY-MM-DD

    val fillingDateEnd: String = fillingDateEnd_example // String | Filter by filling date end (inclusive), format YYYY-MM-DD

    val reportDateStart: String = reportDateStart_example // String | Filter by report date start (inclusive), format YYYY-MM-DD

    val reportDateEnd: String = reportDateEnd_example // String | Filter by report date end (inclusive), format YYYY-MM-DD

    val itemsContain: String = itemsContain_example // String | Filter filings where the 'Items' field contains the specified text

    val pageSize: Int = 56 // Int | Number of results per page (default: 50, max: 200)

    val pageNumber: Int = 56 // Int | Page number to retrieve (default: 1)

    val sortBy: FilingSortBy =  // FilingSortBy | Field to sort results by (default: AccessionNumber)

    val sortOrder: String = sortOrder_example // String | Sort order (asc or desc, default: desc)
    
    val request = apiInstance.v1FilingsGet(cik, ticker, formType, fillingDateStart, fillingDateEnd, reportDateStart, reportDateEnd, itemsContain, pageSize, pageNumber, sortBy, sortOrder)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling FilingMetadataApi#v1FilingsGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling FilingMetadataApi#v1FilingsGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cik** | **Long**| Filter by Central Index Key (CIK) | [optional]
 **ticker** | **String**| Filter by stock ticker symbol | [optional]
 **formType** | **String**| Filter by form type(s) (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional]
 **fillingDateStart** | **String**| Filter by filling date start (inclusive), format YYYY-MM-DD | [optional]
 **fillingDateEnd** | **String**| Filter by filling date end (inclusive), format YYYY-MM-DD | [optional]
 **reportDateStart** | **String**| Filter by report date start (inclusive), format YYYY-MM-DD | [optional]
 **reportDateEnd** | **String**| Filter by report date end (inclusive), format YYYY-MM-DD | [optional]
 **itemsContain** | **String**| Filter filings where the &#39;Items&#39; field contains the specified text | [optional]
 **pageSize** | **Int**| Number of results per page (default: 50, max: 200) | [optional]
 **pageNumber** | **Int**| Page number to retrieve (default: 1) | [optional]
 **sortBy** | [**FilingSortBy**](.md)| Field to sort results by (default: AccessionNumber) | [optional] [enum: AccessionNumber, FilingDate, ReportDate, AcceptanceDateTime, Size]
 **sortOrder** | **String**| Sort order (asc or desc, default: desc) | [optional]

### Return type

ApiRequest[[**Seq[FilingMetadataDto]**](FilingMetadataDto.md)]


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

