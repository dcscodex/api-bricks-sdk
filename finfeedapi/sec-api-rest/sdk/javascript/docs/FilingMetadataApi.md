# RestApi.FilingMetadataApi

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1FilingsGet**](FilingMetadataApi.md#v1FilingsGet) | **GET** /v1/filings | Query SEC filing metadata



## v1FilingsGet

> [DTOFilingMetadataDto] v1FilingsGet(opts)

Query SEC filing metadata

Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FilingDate | Date when filing was submitted  AcceptanceDateTime | Date and time of filing acceptance  ReportDate | Date of the report  Size | Size of the filing document    ### Date Format  All dates must be provided in YYYY-MM-DD format    ### Form Types  Form types can be provided as comma-separated values, e.g.: \&quot;10-K,8-K,10-Q\&quot;    :::tip  For optimal performance, use date ranges and form types to narrow down your search  :::

### Example

```javascript
import RestApi from 'rest_api';

let apiInstance = new RestApi.FilingMetadataApi();
let opts = {
  'cik': 789, // Number | Filter by Central Index Key (CIK)
  'ticker': "ticker_example", // String | Filter by stock ticker symbol
  'formType': "formType_example", // String | Filter by form type(s) (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
  'fillingDateStart': "fillingDateStart_example", // String | Filter by filling date start (inclusive), format YYYY-MM-DD
  'fillingDateEnd': "fillingDateEnd_example", // String | Filter by filling date end (inclusive), format YYYY-MM-DD
  'reportDateStart': "reportDateStart_example", // String | Filter by report date start (inclusive), format YYYY-MM-DD
  'reportDateEnd': "reportDateEnd_example", // String | Filter by report date end (inclusive), format YYYY-MM-DD
  'itemsContain': "itemsContain_example", // String | Filter filings where the 'Items' field contains the specified text
  'pageSize': 56, // Number | Number of results per page (default: 50, max: 200)
  'pageNumber': 56, // Number | Page number to retrieve (default: 1)
  'sortBy': new RestApi.DTOFilingSortBy(), // DTOFilingSortBy | Field to sort results by (default: AccessionNumber)
  'sortOrder': "'desc'" // String | Sort order (asc or desc, default: desc)
};
apiInstance.v1FilingsGet(opts, (error, data, response) => {
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
 **cik** | **Number**| Filter by Central Index Key (CIK) | [optional] 
 **ticker** | **String**| Filter by stock ticker symbol | [optional] 
 **formType** | **String**| Filter by form type(s) (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional] 
 **fillingDateStart** | **String**| Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] 
 **fillingDateEnd** | **String**| Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] 
 **reportDateStart** | **String**| Filter by report date start (inclusive), format YYYY-MM-DD | [optional] 
 **reportDateEnd** | **String**| Filter by report date end (inclusive), format YYYY-MM-DD | [optional] 
 **itemsContain** | **String**| Filter filings where the &#39;Items&#39; field contains the specified text | [optional] 
 **pageSize** | **Number**| Number of results per page (default: 50, max: 200) | [optional] 
 **pageNumber** | **Number**| Page number to retrieve (default: 1) | [optional] 
 **sortBy** | [**DTOFilingSortBy**](.md)| Field to sort results by (default: AccessionNumber) | [optional] 
 **sortOrder** | **String**| Sort order (asc or desc, default: desc) | [optional] [default to &#39;desc&#39;]

### Return type

[**[DTOFilingMetadataDto]**](DTOFilingMetadataDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

