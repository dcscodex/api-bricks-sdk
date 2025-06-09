# FullTextSearchAPI

All URIs are relative to *https://api.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**FullTextSearchAPI_v1FullTextGet**](FullTextSearchAPI.md#FullTextSearchAPI_v1FullTextGet) | **GET** /v1/full-text | Full-text search of SEC filing documents


# **FullTextSearchAPI_v1FullTextGet**
```c
// Full-text search of SEC filing documents
//
// Search across SEC filing documents with advanced filtering and sorting capabilities.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FormType | Type of the filing document  FilingDate | Date when filing was submitted  CompanyName | Name of the company  CIK | Central Index Key  DocumentFilename | Name of the filing document  DocumentDescription | Description of the document    ### Search Options    Option | Description  --------|-------------  text_contains | Keywords that must appear in the document  text_not_contain | Keywords that must not appear in the document    ### Date Format  All dates must be provided in YYYY-MM-DD format    :::tip  Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches  :::    :::note  The search is case-insensitive and supports partial word matches  :::
//
list_t* FullTextSearchAPI_v1FullTextGet(apiClient_t *apiClient, char *form_type, char *filling_date_start, char *filling_date_end, char *text_contains, char *text_not_contain, int *page_size, int *page_number, char *sort_by, char *sort_order);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**form_type** | **char \*** | Filter by form type (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional] 
**filling_date_start** | **char \*** | Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] 
**filling_date_end** | **char \*** | Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] 
**text_contains** | **char \*** | Keywords that the text must contain. Multiple values can be comma-separated | [optional] 
**text_not_contain** | **char \*** | Keywords that the text must not contain. Multiple values can be comma-separated | [optional] 
**page_size** | **int \*** | Number of results per page (default: 100) | [optional] 
**page_number** | **int \*** | Page number to retrieve (default: 1) | [optional] 
**sort_by** | **char \*** | Field to sort by (default: AccessionNumber) | [optional] [default to &#39;AccessionNumber&#39;]
**sort_order** | **char \*** | Sort order (asc or desc). Defaults to asc | [optional] [default to &#39;asc&#39;]

### Return type

[list_t](dto_sec_filing_result_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

