# openapi.api.ContentExtractionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ExtractorGet**](ContentExtractionApi.md#v1extractorget) | **GET** /v1/extractor | Extract and classify SEC filing content
[**v1ExtractorItemGet**](ContentExtractionApi.md#v1extractoritemget) | **GET** /v1/extractor/item | Extract specific item content from SEC filing


# **v1ExtractorGet**
> BuiltMap<String, JsonObject> v1ExtractorGet(accessionNumber, type)

Extract and classify SEC filing content

Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.    ### Supported Form Types    Form Type | Description  ----------|------------  8-K      | Current report filing  10-K     | Annual report filing  10-Q     | Quarterly report filing    ### Content Classification  - 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01)  - 10-K/10-Q forms: Items categorized by their respective part and item structure    :::note  Both HTML and plain text documents are supported for content extraction.  :::

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getContentExtractionApi();
final String accessionNumber = accessionNumber_example; // String | The SEC filing accession number used to retrieve the filing from EDGAR database.
final DTOExtractorType type = ; // DTOExtractorType | Result type (text or html, default: text)

try {
    final response = api.v1ExtractorGet(accessionNumber, type);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ContentExtractionApi->v1ExtractorGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessionNumber** | **String**| The SEC filing accession number used to retrieve the filing from EDGAR database. | 
 **type** | [**DTOExtractorType**](.md)| Result type (text or html, default: text) | [optional] 

### Return type

[**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ExtractorItemGet**
> String v1ExtractorItemGet(accessionNumber, itemNumber, type)

Extract specific item content from SEC filing

Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.    ### Item Number Format    Form Type | Item Format Examples  -----------|-------------------  8-K       | 1.01, 2.01, 7.01  10-K      | 1, 2, 3  10-K/10-Q | PartI 1, PartII 2    :::tip  For best results, ensure the item number matches exactly with the filing's structure.  :::

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getContentExtractionApi();
final String accessionNumber = accessionNumber_example; // String | The SEC filing accession number used to retrieve the filing from EDGAR database.
final String itemNumber = itemNumber_example; // String | The specific item number to extract (e.g., \"1.01\", \"2.01\", \"7.01\").
final DTOExtractorType type = ; // DTOExtractorType | Result type (text or html, default: text)

try {
    final response = api.v1ExtractorItemGet(accessionNumber, itemNumber, type);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ContentExtractionApi->v1ExtractorItemGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessionNumber** | **String**| The SEC filing accession number used to retrieve the filing from EDGAR database. | 
 **itemNumber** | **String**| The specific item number to extract (e.g., \"1.01\", \"2.01\", \"7.01\"). | 
 **type** | [**DTOExtractorType**](.md)| Result type (text or html, default: text) | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

