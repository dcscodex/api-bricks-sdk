# ContentExtractionApi

All URIs are relative to *https://api.sec.finfeedapi.com*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1ExtractorGet**](ContentExtractionApi.md#v1ExtractorGet) | **GET** /v1/extractor | Extract and classify SEC filing content |
| [**v1ExtractorItemGet**](ContentExtractionApi.md#v1ExtractorItemGet) | **GET** /v1/extractor/item | Extract specific item content from SEC filing |


<a id="v1ExtractorGet"></a>
# **v1ExtractorGet**
> kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt; v1ExtractorGet(accessionNumber, type)

Extract and classify SEC filing content

Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.  ### Supported Form Types  Form Type | Description ----------|------------ 8-K      | Current report filing 10-K     | Annual report filing 10-Q     | Quarterly report filing  ### Content Classification - 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01) - 10-K/10-Q forms: Items categorized by their respective part and item structure  :::note Both HTML and plain text documents are supported for content extraction. :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ContentExtractionApi()
val accessionNumber : kotlin.String = accessionNumber_example // kotlin.String | The SEC filing accession number used to retrieve the filing from EDGAR database.
val type : DTOExtractorType =  // DTOExtractorType | Result type (text or html, default: text)
try {
    val result : kotlin.collections.Map<kotlin.String, kotlin.Any> = apiInstance.v1ExtractorGet(accessionNumber, type)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ContentExtractionApi#v1ExtractorGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ContentExtractionApi#v1ExtractorGet")
    e.printStackTrace()
}
```

### Parameters
| **accessionNumber** | **kotlin.String**| The SEC filing accession number used to retrieve the filing from EDGAR database. | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **type** | [**DTOExtractorType**](.md)| Result type (text or html, default: text) | [optional] [enum: text, html] |

### Return type

[**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="v1ExtractorItemGet"></a>
# **v1ExtractorItemGet**
> kotlin.String v1ExtractorItemGet(accessionNumber, itemNumber, type)

Extract specific item content from SEC filing

Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.  ### Item Number Format  Form Type | Item Format Examples -----------|------------------- 8-K       | 1.01, 2.01, 7.01 10-K      | 1, 2, 3 10-K/10-Q | PartI 1, PartII 2  :::tip For best results, ensure the item number matches exactly with the filing&#39;s structure. :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ContentExtractionApi()
val accessionNumber : kotlin.String = accessionNumber_example // kotlin.String | The SEC filing accession number used to retrieve the filing from EDGAR database.
val itemNumber : kotlin.String = itemNumber_example // kotlin.String | The specific item number to extract (e.g., \"1.01\", \"2.01\", \"7.01\").
val type : DTOExtractorType =  // DTOExtractorType | Result type (text or html, default: text)
try {
    val result : kotlin.String = apiInstance.v1ExtractorItemGet(accessionNumber, itemNumber, type)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ContentExtractionApi#v1ExtractorItemGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ContentExtractionApi#v1ExtractorItemGet")
    e.printStackTrace()
}
```

### Parameters
| **accessionNumber** | **kotlin.String**| The SEC filing accession number used to retrieve the filing from EDGAR database. | |
| **itemNumber** | **kotlin.String**| The specific item number to extract (e.g., \&quot;1.01\&quot;, \&quot;2.01\&quot;, \&quot;7.01\&quot;). | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **type** | [**DTOExtractorType**](.md)| Result type (text or html, default: text) | [optional] [enum: text, html] |

### Return type

**kotlin.String**

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

