# XBRLConversionApi

All URIs are relative to *https://api.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1XbrlConverterGet**](XBRLConversionApi.md#v1XbrlConverterGet) | **GET** /v1/xbrl-converter | Convert XBRL data to JSON format
[**v1XbrlConverterGetWithHttpInfo**](XBRLConversionApi.md#v1XbrlConverterGetWithHttpInfo) | **GET** /v1/xbrl-converter | Convert XBRL data to JSON format



## v1XbrlConverterGet

> v1XbrlConverterGet(v1XbrlConverterGetRequest): ApiRequest[Map[String, AnyType]]

Convert XBRL data to JSON format

Converts XBRL data to JSON format using one of three possible input methods.  ### Input Methods  1. HTML URL (htm-url)    - URL of the filing ending with .htm or .html    - Both filing URLs and index page URLs are accepted    - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231.htm  2. XBRL URL (xbrl-url)    - URL of the XBRL file ending with .xml    - Can be found in the dataFiles array from Query API    - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231_htm.xml  3. Accession Number (accession-no)    - The SEC filing accession number    - Example: 0001564590-21-004599  :::note Only one of the three parameters should be provided. If multiple parameters are provided, the priority order is: 1. htm-url 2. xbrl-url 3. accession-no :::  ### Supported Filing Types  - Annual Reports (10-K) - Quarterly Reports (10-Q) - Current Reports (8-K) - Registration Statements (S-1, S-3) - Foreign Private Issuer Reports (20-F, 40-F)  ### Response Format  The API returns a JSON object containing: - Financial statements (Income Statement, Balance Sheet, Cash Flow Statement) - Accounting policies and footnotes - Company information - Filing metadata  ### Example Response &#x60;&#x60;&#x60;json {   \&quot;StatementsOfIncome\&quot;: {     \&quot;RevenueFromContractWithCustomerExcludingAssessedTax\&quot;: [       {         \&quot;decimals\&quot;: \&quot;-6\&quot;,         \&quot;unitRef\&quot;: \&quot;U_USD\&quot;,         \&quot;period\&quot;: {           \&quot;startDate\&quot;: \&quot;2023-07-01\&quot;,           \&quot;endDate\&quot;: \&quot;2024-06-30\&quot;         },         \&quot;value\&quot;: \&quot;245122000000\&quot;       }     ]   } } &#x60;&#x60;&#x60;

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
    val apiInstance = XBRLConversionApi("https://api.sec.finfeedapi.com")
    val htmUrl: String = htmUrl_example // String | URL of the filing ending with .htm or .html

    val xbrlUrl: String = xbrlUrl_example // String | URL of the XBRL file ending with .xml

    val accessionNo: String = accessionNo_example // String | SEC filing accession number
    
    val request = apiInstance.v1XbrlConverterGet(htmUrl, xbrlUrl, accessionNo)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling XBRLConversionApi#v1XbrlConverterGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling XBRLConversionApi#v1XbrlConverterGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **htmUrl** | **String**| URL of the filing ending with .htm or .html | [optional]
 **xbrlUrl** | **String**| URL of the XBRL file ending with .xml | [optional]
 **accessionNo** | **String**| SEC filing accession number | [optional]

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
| **200** | Successful conversion |  -  |
| **400** | Invalid request - check parameter format |  -  |
| **404** | Filing or XBRL data not found |  -  |
| **500** | Server error |  -  |

