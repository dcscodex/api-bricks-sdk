# openapi.api.FullTextSearchApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1FullTextGet**](FullTextSearchApi.md#v1fulltextget) | **GET** /v1/full-text | Full-text search of SEC filing documents


# **v1FullTextGet**
> List<DTOSecFilingResultDto> v1FullTextGet(formType, fillingDateStart, fillingDateEnd, textContains, textNotContain, pageSize, pageNumber, sortBy, sortOrder)

Full-text search of SEC filing documents

Search across SEC filing documents with advanced filtering and sorting capabilities.  ### Available Sort Fields  Field Name | Description -----------|------------- AccessionNumber | SEC filing accession number FormType | Type of the filing document FilingDate | Date when filing was submitted CompanyName | Name of the company CIK | Central Index Key DocumentFilename | Name of the filing document DocumentDescription | Description of the document  ### Search Options  Option | Description --------|------------- text_contains | Keywords that must appear in the document text_not_contain | Keywords that must not appear in the document  ### Date Format All dates must be provided in YYYY-MM-DD format  :::tip Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches :::  :::note The search is case-insensitive and supports partial word matches :::

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FullTextSearchApi();
final formType = formType_example; // String | Filter by form type (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
final fillingDateStart = fillingDateStart_example; // String | Filter by filling date start (inclusive), format YYYY-MM-DD
final fillingDateEnd = fillingDateEnd_example; // String | Filter by filling date end (inclusive), format YYYY-MM-DD
final textContains = textContains_example; // String | Keywords that the text must contain. Multiple values can be comma-separated
final textNotContain = textNotContain_example; // String | Keywords that the text must not contain. Multiple values can be comma-separated
final pageSize = 56; // int | Number of results per page (default: 100)
final pageNumber = 56; // int | Page number to retrieve (default: 1)
final sortBy = sortBy_example; // String | Field to sort by (default: AccessionNumber)
final sortOrder = sortOrder_example; // String | Sort order (asc or desc). Defaults to asc

try {
    final result = api_instance.v1FullTextGet(formType, fillingDateStart, fillingDateEnd, textContains, textNotContain, pageSize, pageNumber, sortBy, sortOrder);
    print(result);
} catch (e) {
    print('Exception when calling FullTextSearchApi->v1FullTextGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formType** | **String**| Filter by form type (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated | [optional] 
 **fillingDateStart** | **String**| Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] 
 **fillingDateEnd** | **String**| Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] 
 **textContains** | **String**| Keywords that the text must contain. Multiple values can be comma-separated | [optional] 
 **textNotContain** | **String**| Keywords that the text must not contain. Multiple values can be comma-separated | [optional] 
 **pageSize** | **int**| Number of results per page (default: 100) | [optional] 
 **pageNumber** | **int**| Page number to retrieve (default: 1) | [optional] 
 **sortBy** | **String**| Field to sort by (default: AccessionNumber) | [optional] [default to 'AccessionNumber']
 **sortOrder** | **String**| Sort order (asc or desc). Defaults to asc | [optional] [default to 'asc']

### Return type

[**List<DTOSecFilingResultDto>**](DTOSecFilingResultDto.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

