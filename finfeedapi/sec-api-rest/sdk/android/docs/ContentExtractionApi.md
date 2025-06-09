# ContentExtractionApi

All URIs are relative to *https://api.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ExtractorGet**](ContentExtractionApi.md#v1ExtractorGet) | **GET** /v1/extractor | Extract and classify SEC filing content
[**v1ExtractorItemGet**](ContentExtractionApi.md#v1ExtractorItemGet) | **GET** /v1/extractor/item | Extract specific item content from SEC filing



## v1ExtractorGet

> Map&lt;String, OasAnyTypeNotMapped&gt; v1ExtractorGet(accessionNumber, type)

Extract and classify SEC filing content

Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.    ### Supported Form Types    Form Type | Description  ----------|------------  8-K      | Current report filing  10-K     | Annual report filing  10-Q     | Quarterly report filing    ### Content Classification  - 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01)  - 10-K/10-Q forms: Items categorized by their respective part and item structure    :::note  Both HTML and plain text documents are supported for content extraction.  :::

### Example

```java
// Import classes:
//import org.openapitools.client.api.ContentExtractionApi;

ContentExtractionApi apiInstance = new ContentExtractionApi();
String accessionNumber = null; // String | The SEC filing accession number used to retrieve the filing from EDGAR database.
DTOExtractorType type = null; // DTOExtractorType | Result type (text or html, default: text)
try {
    Map<String, OasAnyTypeNotMapped> result = apiInstance.v1ExtractorGet(accessionNumber, type);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ContentExtractionApi#v1ExtractorGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessionNumber** | **String**| The SEC filing accession number used to retrieve the filing from EDGAR database. | [default to null]
 **type** | [**DTOExtractorType**](.md)| Result type (text or html, default: text) | [optional] [default to null] [enum: text, html]

### Return type

[**Map&lt;String, OasAnyTypeNotMapped&gt;**](OasAnyTypeNotMapped.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1ExtractorItemGet

> String v1ExtractorItemGet(accessionNumber, itemNumber, type)

Extract specific item content from SEC filing

Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.    ### Item Number Format    Form Type | Item Format Examples  -----------|-------------------  8-K       | 1.01, 2.01, 7.01  10-K      | 1, 2, 3  10-K/10-Q | PartI 1, PartII 2    :::tip  For best results, ensure the item number matches exactly with the filing&#39;s structure.  :::

### Example

```java
// Import classes:
//import org.openapitools.client.api.ContentExtractionApi;

ContentExtractionApi apiInstance = new ContentExtractionApi();
String accessionNumber = null; // String | The SEC filing accession number used to retrieve the filing from EDGAR database.
String itemNumber = null; // String | The specific item number to extract (e.g., \"1.01\", \"2.01\", \"7.01\").
DTOExtractorType type = null; // DTOExtractorType | Result type (text or html, default: text)
try {
    String result = apiInstance.v1ExtractorItemGet(accessionNumber, itemNumber, type);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ContentExtractionApi#v1ExtractorItemGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessionNumber** | **String**| The SEC filing accession number used to retrieve the filing from EDGAR database. | [default to null]
 **itemNumber** | **String**| The specific item number to extract (e.g., \&quot;1.01\&quot;, \&quot;2.01\&quot;, \&quot;7.01\&quot;). | [default to null]
 **type** | [**DTOExtractorType**](.md)| Result type (text or html, default: text) | [optional] [default to null] [enum: text, html]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

