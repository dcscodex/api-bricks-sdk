# FullTextSearchApi

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1FullTextGet**](FullTextSearchApi.md#v1FullTextGet) | **GET** /v1/full-text | Full-text search of SEC filing documents



## v1FullTextGet

> List&lt;DTOSecFilingResultDto&gt; v1FullTextGet(formType, fillingDateStart, fillingDateEnd, textContains, textNotContain, pageSize, pageNumber, sortBy, sortOrder)

Full-text search of SEC filing documents

Search across SEC filing documents with advanced filtering and sorting capabilities.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FormType | Type of the filing document  FilingDate | Date when filing was submitted  CompanyName | Name of the company  CIK | Central Index Key  DocumentFilename | Name of the filing document  DocumentDescription | Description of the document    ### Search Options    Option | Description  --------|-------------  text_contains | Keywords that must appear in the document  text_not_contain | Keywords that must not appear in the document    ### Date Format  All dates must be provided in YYYY-MM-DD format    :::tip  Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches  :::    :::note  The search is case-insensitive and supports partial word matches  :::

### Example

```java
// Import classes:
//import org.openapitools.client.api.FullTextSearchApi;

FullTextSearchApi apiInstance = new FullTextSearchApi();
String formType = null; // String | Filter by form type (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
String fillingDateStart = null; // String | Filter by filling date start (inclusive), format YYYY-MM-DD
String fillingDateEnd = null; // String | Filter by filling date end (inclusive), format YYYY-MM-DD
String textContains = null; // String | Keywords that the text must contain. Multiple values can be comma-separated
String textNotContain = null; // String | Keywords that the text must not contain. Multiple values can be comma-separated
Integer pageSize = null; // Integer | Number of results per page (default: 100)
Integer pageNumber = null; // Integer | Page number to retrieve (default: 1)
String sortBy = AccessionNumber; // String | Field to sort by (default: AccessionNumber)
String sortOrder = asc; // String | Sort order (asc or desc). Defaults to asc
try {
    List<DTOSecFilingResultDto> result = apiInstance.v1FullTextGet(formType, fillingDateStart, fillingDateEnd, textContains, textNotContain, pageSize, pageNumber, sortBy, sortOrder);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FullTextSearchApi#v1FullTextGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formType** | **String**| Filter by form type (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional] [default to null]
 **fillingDateStart** | **String**| Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] [default to null]
 **fillingDateEnd** | **String**| Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] [default to null]
 **textContains** | **String**| Keywords that the text must contain. Multiple values can be comma-separated | [optional] [default to null]
 **textNotContain** | **String**| Keywords that the text must not contain. Multiple values can be comma-separated | [optional] [default to null]
 **pageSize** | **Integer**| Number of results per page (default: 100) | [optional] [default to null]
 **pageNumber** | **Integer**| Page number to retrieve (default: 1) | [optional] [default to null]
 **sortBy** | **String**| Field to sort by (default: AccessionNumber) | [optional] [default to AccessionNumber]
 **sortOrder** | **String**| Sort order (asc or desc). Defaults to asc | [optional] [default to asc]

### Return type

[**List&lt;DTOSecFilingResultDto&gt;**](DTOSecFilingResultDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

