# FilingMetadataAPI

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**FilingMetadataAPI_v1FilingsGet**](FilingMetadataAPI.md#FilingMetadataAPI_v1FilingsGet) | **GET** /v1/filings | Query SEC filing metadata


# **FilingMetadataAPI_v1FilingsGet**
```c
// Query SEC filing metadata
//
// Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FilingDate | Date when filing was submitted  AcceptanceDateTime | Date and time of filing acceptance  ReportDate | Date of the report  Size | Size of the filing document    ### Date Format  All dates must be provided in YYYY-MM-DD format    ### Form Types  Form types can be provided as comma-separated values, e.g.: \"10-K,8-K,10-Q\"    :::tip  For optimal performance, use date ranges and form types to narrow down your search  :::
//
list_t* FilingMetadataAPI_v1FilingsGet(apiClient_t *apiClient, long cik, char *form_type, char *filling_date_start, char *filling_date_end, char *report_date_start, char *report_date_end, char *items_contain, int *page_size, int *page_number, dto_filing_sort_by_e sort_by, char *sort_order);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**cik** | **long** | Filter by Central Index Key (CIK) | [optional] 
**form_type** | **char \*** | Filter by form type(s) (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional] 
**filling_date_start** | **char \*** | Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] 
**filling_date_end** | **char \*** | Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] 
**report_date_start** | **char \*** | Filter by report date start (inclusive), format YYYY-MM-DD | [optional] 
**report_date_end** | **char \*** | Filter by report date end (inclusive), format YYYY-MM-DD | [optional] 
**items_contain** | **char \*** | Filter filings where the &#39;Items&#39; field contains the specified text | [optional] 
**page_size** | **int \*** | Number of results per page (default: 50, max: 200) | [optional] 
**page_number** | **int \*** | Page number to retrieve (default: 1) | [optional] 
**sort_by** | **dto_filing_sort_by_e** | Field to sort results by (default: AccessionNumber) | [optional] 
**sort_order** | **char \*** | Sort order (asc or desc, default: desc) | [optional] [default to &#39;desc&#39;]

### Return type

[list_t](dto_filing_metadata_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

