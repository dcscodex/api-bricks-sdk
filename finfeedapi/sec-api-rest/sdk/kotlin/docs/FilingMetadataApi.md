# FilingMetadataApi

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1FilingsGet**](FilingMetadataApi.md#v1FilingsGet) | **GET** /v1/filings | Query SEC filing metadata |


<a id="v1FilingsGet"></a>
# **v1FilingsGet**
> kotlin.collections.List&lt;DTOFilingMetadataDto&gt; v1FilingsGet(cik, formType, fillingDateStart, fillingDateEnd, reportDateStart, reportDateEnd, itemsContain, pageSize, pageNumber, sortBy, sortOrder)

Query SEC filing metadata

Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FilingDate | Date when filing was submitted  AcceptanceDateTime | Date and time of filing acceptance  ReportDate | Date of the report  Size | Size of the filing document    ### Date Format  All dates must be provided in YYYY-MM-DD format    ### Form Types  Form types can be provided as comma-separated values, e.g.: \&quot;10-K,8-K,10-Q\&quot;    :::tip  For optimal performance, use date ranges and form types to narrow down your search  :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FilingMetadataApi()
val cik : kotlin.Long = 789 // kotlin.Long | Filter by Central Index Key (CIK)
val formType : kotlin.String = formType_example // kotlin.String | Filter by form type(s) (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
val fillingDateStart : kotlin.String = fillingDateStart_example // kotlin.String | Filter by filling date start (inclusive), format YYYY-MM-DD
val fillingDateEnd : kotlin.String = fillingDateEnd_example // kotlin.String | Filter by filling date end (inclusive), format YYYY-MM-DD
val reportDateStart : kotlin.String = reportDateStart_example // kotlin.String | Filter by report date start (inclusive), format YYYY-MM-DD
val reportDateEnd : kotlin.String = reportDateEnd_example // kotlin.String | Filter by report date end (inclusive), format YYYY-MM-DD
val itemsContain : kotlin.String = itemsContain_example // kotlin.String | Filter filings where the 'Items' field contains the specified text
val pageSize : kotlin.Int = 56 // kotlin.Int | Number of results per page (default: 50, max: 200)
val pageNumber : kotlin.Int = 56 // kotlin.Int | Page number to retrieve (default: 1)
val sortBy : DTOFilingSortBy =  // DTOFilingSortBy | Field to sort results by (default: AccessionNumber)
val sortOrder : kotlin.String = sortOrder_example // kotlin.String | Sort order (asc or desc, default: desc)
try {
    val result : kotlin.collections.List<DTOFilingMetadataDto> = apiInstance.v1FilingsGet(cik, formType, fillingDateStart, fillingDateEnd, reportDateStart, reportDateEnd, itemsContain, pageSize, pageNumber, sortBy, sortOrder)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FilingMetadataApi#v1FilingsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FilingMetadataApi#v1FilingsGet")
    e.printStackTrace()
}
```

### Parameters
| **cik** | **kotlin.Long**| Filter by Central Index Key (CIK) | [optional] |
| **formType** | **kotlin.String**| Filter by form type(s) (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional] |
| **fillingDateStart** | **kotlin.String**| Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] |
| **fillingDateEnd** | **kotlin.String**| Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] |
| **reportDateStart** | **kotlin.String**| Filter by report date start (inclusive), format YYYY-MM-DD | [optional] |
| **reportDateEnd** | **kotlin.String**| Filter by report date end (inclusive), format YYYY-MM-DD | [optional] |
| **itemsContain** | **kotlin.String**| Filter filings where the &#39;Items&#39; field contains the specified text | [optional] |
| **pageSize** | **kotlin.Int**| Number of results per page (default: 50, max: 200) | [optional] |
| **pageNumber** | **kotlin.Int**| Page number to retrieve (default: 1) | [optional] |
| **sortBy** | [**DTOFilingSortBy**](.md)| Field to sort results by (default: AccessionNumber) | [optional] [enum: AccessionNumber, FilingDate, ReportDate, AcceptanceDateTime, Size] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **sortOrder** | **kotlin.String**| Sort order (asc or desc, default: desc) | [optional] [default to &quot;desc&quot;] |

### Return type

[**kotlin.collections.List&lt;DTOFilingMetadataDto&gt;**](DTOFilingMetadataDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

