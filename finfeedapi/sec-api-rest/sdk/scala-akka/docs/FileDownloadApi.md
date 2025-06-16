# FileDownloadApi

All URIs are relative to *https://api.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1DownloadGet**](FileDownloadApi.md#v1DownloadGet) | **GET** /v1/download | Download file from SEC EDGAR archive
[**v1DownloadGetWithHttpInfo**](FileDownloadApi.md#v1DownloadGetWithHttpInfo) | **GET** /v1/download | Download file from SEC EDGAR archive



## v1DownloadGet

> v1DownloadGet(v1DownloadGetRequest): ApiRequest[Unit]

Download file from SEC EDGAR archive

Downloads a specific file from the SEC EDGAR archive using the accession number and filename. The file is streamed directly from the SEC servers to the client.  ### Accession Number Format Accession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)  ### File Name Examples - Primary documents: &#x60;d123456d10k.htm&#x60;, &#x60;d789012d8k.htm&#x60; - XBRL files: &#x60;d123456d10k_htm.xml&#x60;, &#x60;FilingSummary.xml&#x60; - Exhibits: &#x60;d123456dexhibit99.htm&#x60;, &#x60;d123456dex101.htm&#x60;  ### File Types The endpoint supports downloading various file types from SEC filings: - HTML documents (.htm, .html) - XBRL files (.xml, .xsd) - Text files (.txt) - PDF files (.pdf) - Other document formats as submitted to SEC  :::tip You can find available filenames for a specific filing using the &#x60;/v1/filings&#x60; endpoint first :::  :::warning This endpoint streams files directly from the SEC. Large files may take longer to download. :::

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
    val apiInstance = FileDownloadApi("https://api.sec.finfeedapi.com")
    val accessionNo: String = accessionNo_example // String | SEC filing accession number in format: 0000000000-00-000000

    val fileName: String = fileName_example // String | Name of the file to download from the filing
    
    val request = apiInstance.v1DownloadGet(accessionNo, fileName)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling FileDownloadApi#v1DownloadGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling FileDownloadApi#v1DownloadGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessionNo** | **String**| SEC filing accession number in format: 0000000000-00-000000 |
 **fileName** | **String**| Name of the file to download from the filing |

### Return type


ApiRequest[Unit] (empty response body)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, text/html, application/xml, text/plain, application/pdf, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | File downloaded successfully |  -  |
| **400** | Invalid request parameters |  -  |
| **404** | Filing or file not found |  -  |
| **500** | Server error |  -  |

