# FullTextSearchApi

All URIs are relative to *https://api.sec.finfeedapi.com*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1FullTextGet**](FullTextSearchApi.md#v1FullTextGet) | **GET** /v1/full-text | Full-text search of SEC filing documents |


<a id="v1FullTextGet"></a>
# **v1FullTextGet**
> kotlin.collections.List&lt;DTOSecFilingResultDto&gt; v1FullTextGet(formType, fillingDateStart, fillingDateEnd, textContains, textNotContain, pageSize, pageNumber, sortBy, sortOrder)

Full-text search of SEC filing documents

Search across SEC filing documents with advanced filtering and sorting capabilities.  ### Available Sort Fields  Field Name | Description -----------|------------- AccessionNumber | SEC filing accession number FormType | Type of the filing document FilingDate | Date when filing was submitted CompanyName | Name of the company CIK | Central Index Key DocumentFilename | Name of the filing document DocumentDescription | Description of the document  ### Search Options  Option | Description --------|------------- text_contains | Keywords that must appear in the document text_not_contain | Keywords that must not appear in the document  ### Date Format All dates must be provided in YYYY-MM-DD format  :::tip Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches :::  :::note The search is case-insensitive and supports partial word matches :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FullTextSearchApi()
val formType : kotlin.String = formType_example // kotlin.String | Filter by form type (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
val fillingDateStart : kotlin.String = fillingDateStart_example // kotlin.String | Filter by filling date start (inclusive), format YYYY-MM-DD
val fillingDateEnd : kotlin.String = fillingDateEnd_example // kotlin.String | Filter by filling date end (inclusive), format YYYY-MM-DD
val textContains : kotlin.String = textContains_example // kotlin.String | Keywords that the text must contain. Multiple values can be comma-separated
val textNotContain : kotlin.String = textNotContain_example // kotlin.String | Keywords that the text must not contain. Multiple values can be comma-separated
val pageSize : kotlin.Int = 56 // kotlin.Int | Number of results per page (default: 100)
val pageNumber : kotlin.Int = 56 // kotlin.Int | Page number to retrieve (default: 1)
val sortBy : kotlin.String = sortBy_example // kotlin.String | Field to sort by (default: AccessionNumber)
val sortOrder : kotlin.String = sortOrder_example // kotlin.String | Sort order (asc or desc). Defaults to asc
try {
    val result : kotlin.collections.List<DTOSecFilingResultDto> = apiInstance.v1FullTextGet(formType, fillingDateStart, fillingDateEnd, textContains, textNotContain, pageSize, pageNumber, sortBy, sortOrder)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FullTextSearchApi#v1FullTextGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FullTextSearchApi#v1FullTextGet")
    e.printStackTrace()
}
```

### Parameters
| **formType** | **kotlin.String**| Filter by form type (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional] |
| **fillingDateStart** | **kotlin.String**| Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] |
| **fillingDateEnd** | **kotlin.String**| Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] |
| **textContains** | **kotlin.String**| Keywords that the text must contain. Multiple values can be comma-separated | [optional] |
| **textNotContain** | **kotlin.String**| Keywords that the text must not contain. Multiple values can be comma-separated | [optional] |
| **pageSize** | **kotlin.Int**| Number of results per page (default: 100) | [optional] |
| **pageNumber** | **kotlin.Int**| Page number to retrieve (default: 1) | [optional] |
| **sortBy** | **kotlin.String**| Field to sort by (default: AccessionNumber) | [optional] [default to &quot;AccessionNumber&quot;] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **sortOrder** | **kotlin.String**| Sort order (asc or desc). Defaults to asc | [optional] [default to &quot;asc&quot;] |

### Return type

[**kotlin.collections.List&lt;DTOSecFilingResultDto&gt;**](DTOSecFilingResultDto.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

