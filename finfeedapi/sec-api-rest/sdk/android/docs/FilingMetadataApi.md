# FilingMetadataApi

All URIs are relative to *https://api.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1FilingsGet**](FilingMetadataApi.md#v1FilingsGet) | **GET** /v1/filings | Query SEC filing metadata



## v1FilingsGet

> List&lt;DTOFilingMetadataDto&gt; v1FilingsGet(cik, ticker, formType, fillingDateStart, fillingDateEnd, reportDateStart, reportDateEnd, itemsContain, pageSize, pageNumber, sortBy, sortOrder)

Query SEC filing metadata

Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.  ### Available Sort Fields  Field Name | Description -----------|------------- AccessionNumber | SEC filing accession number FilingDate | Date when filing was submitted AcceptanceDateTime | Date and time of filing acceptance ReportDate | Date of the report Size | Size of the filing document  ### Date Format All dates must be provided in YYYY-MM-DD format  ### Form Types Form types can be provided as comma-separated values, e.g.: \&quot;10-K,8-K,10-Q\&quot;  :::tip For optimal performance, use date ranges and form types to narrow down your search :::

### Example

```java
// Import classes:
//import org.openapitools.client.api.FilingMetadataApi;

FilingMetadataApi apiInstance = new FilingMetadataApi();
Long cik = null; // Long | Filter by Central Index Key (CIK)
String ticker = null; // String | Filter by stock ticker symbol
String formType = null; // String | Filter by form type(s) (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
String fillingDateStart = null; // String | Filter by filling date start (inclusive), format YYYY-MM-DD
String fillingDateEnd = null; // String | Filter by filling date end (inclusive), format YYYY-MM-DD
String reportDateStart = null; // String | Filter by report date start (inclusive), format YYYY-MM-DD
String reportDateEnd = null; // String | Filter by report date end (inclusive), format YYYY-MM-DD
String itemsContain = null; // String | Filter filings where the 'Items' field contains the specified text
Integer pageSize = null; // Integer | Number of results per page (default: 50, max: 200)
Integer pageNumber = null; // Integer | Page number to retrieve (default: 1)
DTOFilingSortBy sortBy = null; // DTOFilingSortBy | Field to sort results by (default: AccessionNumber)
String sortOrder = desc; // String | Sort order (asc or desc, default: desc)
try {
    List<DTOFilingMetadataDto> result = apiInstance.v1FilingsGet(cik, ticker, formType, fillingDateStart, fillingDateEnd, reportDateStart, reportDateEnd, itemsContain, pageSize, pageNumber, sortBy, sortOrder);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FilingMetadataApi#v1FilingsGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cik** | **Long**| Filter by Central Index Key (CIK) | [optional] [default to null]
 **ticker** | **String**| Filter by stock ticker symbol | [optional] [default to null]
 **formType** | **String**| Filter by form type(s) (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional] [default to null]
 **fillingDateStart** | **String**| Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] [default to null]
 **fillingDateEnd** | **String**| Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] [default to null]
 **reportDateStart** | **String**| Filter by report date start (inclusive), format YYYY-MM-DD | [optional] [default to null]
 **reportDateEnd** | **String**| Filter by report date end (inclusive), format YYYY-MM-DD | [optional] [default to null]
 **itemsContain** | **String**| Filter filings where the &#39;Items&#39; field contains the specified text | [optional] [default to null]
 **pageSize** | **Integer**| Number of results per page (default: 50, max: 200) | [optional] [default to null]
 **pageNumber** | **Integer**| Page number to retrieve (default: 1) | [optional] [default to null]
 **sortBy** | [**DTOFilingSortBy**](.md)| Field to sort results by (default: AccessionNumber) | [optional] [default to null] [enum: AccessionNumber, FilingDate, ReportDate, AcceptanceDateTime, Size]
 **sortOrder** | **String**| Sort order (asc or desc, default: desc) | [optional] [default to desc]

### Return type

[**List&lt;DTOFilingMetadataDto&gt;**](DTOFilingMetadataDto.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

