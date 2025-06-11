# openapi.api.FilingMetadataApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1FilingsGet**](FilingMetadataApi.md#v1filingsget) | **GET** /v1/filings | Query SEC filing metadata


# **v1FilingsGet**
> BuiltList<DTOFilingMetadataDto> v1FilingsGet(cik, ticker, formType, fillingDateStart, fillingDateEnd, reportDateStart, reportDateEnd, itemsContain, pageSize, pageNumber, sortBy, sortOrder)

Query SEC filing metadata

Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.  ### Available Sort Fields  Field Name | Description -----------|------------- AccessionNumber | SEC filing accession number FilingDate | Date when filing was submitted AcceptanceDateTime | Date and time of filing acceptance ReportDate | Date of the report Size | Size of the filing document  ### Date Format All dates must be provided in YYYY-MM-DD format  ### Form Types Form types can be provided as comma-separated values, e.g.: \"10-K,8-K,10-Q\"  :::tip For optimal performance, use date ranges and form types to narrow down your search :::

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getFilingMetadataApi();
final int cik = 789; // int | Filter by Central Index Key (CIK)
final String ticker = ticker_example; // String | Filter by stock ticker symbol
final String formType = formType_example; // String | Filter by form type(s) (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
final String fillingDateStart = fillingDateStart_example; // String | Filter by filling date start (inclusive), format YYYY-MM-DD
final String fillingDateEnd = fillingDateEnd_example; // String | Filter by filling date end (inclusive), format YYYY-MM-DD
final String reportDateStart = reportDateStart_example; // String | Filter by report date start (inclusive), format YYYY-MM-DD
final String reportDateEnd = reportDateEnd_example; // String | Filter by report date end (inclusive), format YYYY-MM-DD
final String itemsContain = itemsContain_example; // String | Filter filings where the 'Items' field contains the specified text
final int pageSize = 56; // int | Number of results per page (default: 50, max: 200)
final int pageNumber = 56; // int | Page number to retrieve (default: 1)
final DTOFilingSortBy sortBy = ; // DTOFilingSortBy | Field to sort results by (default: AccessionNumber)
final String sortOrder = sortOrder_example; // String | Sort order (asc or desc, default: desc)

try {
    final response = api.v1FilingsGet(cik, ticker, formType, fillingDateStart, fillingDateEnd, reportDateStart, reportDateEnd, itemsContain, pageSize, pageNumber, sortBy, sortOrder);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilingMetadataApi->v1FilingsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cik** | **int**| Filter by Central Index Key (CIK) | [optional] 
 **ticker** | **String**| Filter by stock ticker symbol | [optional] 
 **formType** | **String**| Filter by form type(s) (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated | [optional] 
 **fillingDateStart** | **String**| Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] 
 **fillingDateEnd** | **String**| Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] 
 **reportDateStart** | **String**| Filter by report date start (inclusive), format YYYY-MM-DD | [optional] 
 **reportDateEnd** | **String**| Filter by report date end (inclusive), format YYYY-MM-DD | [optional] 
 **itemsContain** | **String**| Filter filings where the 'Items' field contains the specified text | [optional] 
 **pageSize** | **int**| Number of results per page (default: 50, max: 200) | [optional] 
 **pageNumber** | **int**| Page number to retrieve (default: 1) | [optional] 
 **sortBy** | [**DTOFilingSortBy**](.md)| Field to sort results by (default: AccessionNumber) | [optional] 
 **sortOrder** | **String**| Sort order (asc or desc, default: desc) | [optional] [default to 'desc']

### Return type

[**BuiltList&lt;DTOFilingMetadataDto&gt;**](DTOFilingMetadataDto.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

