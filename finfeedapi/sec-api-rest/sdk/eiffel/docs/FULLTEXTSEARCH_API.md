# FULLTEXTSEARCH_API

All URIs are relative to *https://api.sec.finfeedapi.com*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**v1_full_text_get**](FULLTEXTSEARCH_API.md#v1_full_text_get) | **Get** /v1/full-text | Full-text search of SEC filing documents


# **v1_full_text_get**
> v1_full_text_get (form_type:  detachable STRING_32 ; filling_date_start:  detachable STRING_32 ; filling_date_end:  detachable STRING_32 ; text_contains:  detachable STRING_32 ; text_not_contain:  detachable STRING_32 ; page_size:  detachable INTEGER_32 ; page_number:  detachable INTEGER_32 ; sort_by:  detachable STRING_32 ; sort_order:  detachable STRING_32 ): detachable LIST [DTO_SEC_FILING_RESULT_DTO]


Full-text search of SEC filing documents

Search across SEC filing documents with advanced filtering and sorting capabilities.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FormType | Type of the filing document  FilingDate | Date when filing was submitted  CompanyName | Name of the company  CIK | Central Index Key  DocumentFilename | Name of the filing document  DocumentDescription | Description of the document    ### Search Options    Option | Description  --------|-------------  text_contains | Keywords that must appear in the document  text_not_contain | Keywords that must not appear in the document    ### Date Format  All dates must be provided in YYYY-MM-DD format    :::tip  Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches  :::    :::note  The search is case-insensitive and supports partial word matches  :::


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **form_type** | **STRING_32**| Filter by form type (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional] [default to null]
 **filling_date_start** | **STRING_32**| Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] [default to null]
 **filling_date_end** | **STRING_32**| Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] [default to null]
 **text_contains** | **STRING_32**| Keywords that the text must contain. Multiple values can be comma-separated | [optional] [default to null]
 **text_not_contain** | **STRING_32**| Keywords that the text must not contain. Multiple values can be comma-separated | [optional] [default to null]
 **page_size** | **INTEGER_32**| Number of results per page (default: 100) | [optional] [default to null]
 **page_number** | **INTEGER_32**| Page number to retrieve (default: 1) | [optional] [default to null]
 **sort_by** | **STRING_32**| Field to sort by (default: AccessionNumber) | [optional] [default to AccessionNumber]
 **sort_order** | **STRING_32**| Sort order (asc or desc). Defaults to asc | [optional] [default to asc]

### Return type

[**LIST [DTO_SEC_FILING_RESULT_DTO]**](DTO.SecFilingResultDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

