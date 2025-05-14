# RestApi.FullTextSearchApi

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1FullTextGet**](FullTextSearchApi.md#v1FullTextGet) | **GET** /v1/full-text | Full-text search of SEC filing documents



## v1FullTextGet

> [DTOSecFilingResultDto] v1FullTextGet(opts)

Full-text search of SEC filing documents

Search across SEC filing documents with advanced filtering and sorting capabilities.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FormType | Type of the filing document  FilingDate | Date when filing was submitted  CompanyName | Name of the company  CIK | Central Index Key  DocumentFilename | Name of the filing document  DocumentDescription | Description of the document    ### Search Options    Option | Description  --------|-------------  text_contains | Keywords that must appear in the document  text_not_contain | Keywords that must not appear in the document    ### Date Format  All dates must be provided in YYYY-MM-DD format    :::tip  Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches  :::    :::note  The search is case-insensitive and supports partial word matches  :::

### Example

```javascript
import RestApi from 'rest_api';

let apiInstance = new RestApi.FullTextSearchApi();
let opts = {
  'formType': "formType_example", // String | Filter by form type (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
  'fillingDateStart': "fillingDateStart_example", // String | Filter by filling date start (inclusive), format YYYY-MM-DD
  'fillingDateEnd': "fillingDateEnd_example", // String | Filter by filling date end (inclusive), format YYYY-MM-DD
  'textContains': "textContains_example", // String | Keywords that the text must contain. Multiple values can be comma-separated
  'textNotContain': "textNotContain_example", // String | Keywords that the text must not contain. Multiple values can be comma-separated
  'pageSize': 56, // Number | Number of results per page (default: 100)
  'pageNumber': 56, // Number | Page number to retrieve (default: 1)
  'sortBy': "'AccessionNumber'", // String | Field to sort by (default: AccessionNumber)
  'sortOrder': "'asc'" // String | Sort order (asc or desc). Defaults to asc
};
apiInstance.v1FullTextGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formType** | **String**| Filter by form type (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional] 
 **fillingDateStart** | **String**| Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] 
 **fillingDateEnd** | **String**| Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] 
 **textContains** | **String**| Keywords that the text must contain. Multiple values can be comma-separated | [optional] 
 **textNotContain** | **String**| Keywords that the text must not contain. Multiple values can be comma-separated | [optional] 
 **pageSize** | **Number**| Number of results per page (default: 100) | [optional] 
 **pageNumber** | **Number**| Page number to retrieve (default: 1) | [optional] 
 **sortBy** | **String**| Field to sort by (default: AccessionNumber) | [optional] [default to &#39;AccessionNumber&#39;]
 **sortOrder** | **String**| Sort order (asc or desc). Defaults to asc | [optional] [default to &#39;asc&#39;]

### Return type

[**[DTOSecFilingResultDto]**](DTOSecFilingResultDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

