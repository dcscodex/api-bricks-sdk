# FILINGMETADATA_API

All URIs are relative to *https://api.sec.finfeedapi.com*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**v1_filings_get**](FILINGMETADATA_API.md#v1_filings_get) | **Get** /v1/filings | Query SEC filing metadata


# **v1_filings_get**
> v1_filings_get (cik:  detachable INTEGER_64 ; ticker:  detachable STRING_32 ; form_type:  detachable STRING_32 ; filling_date_start:  detachable STRING_32 ; filling_date_end:  detachable STRING_32 ; report_date_start:  detachable STRING_32 ; report_date_end:  detachable STRING_32 ; items_contain:  detachable STRING_32 ; page_size:  detachable INTEGER_32 ; page_number:  detachable INTEGER_32 ; sort_by:  detachable DTO_FILING_SORT_BY ; sort_order:  detachable STRING_32 ): detachable LIST [DTO_FILING_METADATA_DTO]


Query SEC filing metadata

Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FilingDate | Date when filing was submitted  AcceptanceDateTime | Date and time of filing acceptance  ReportDate | Date of the report  Size | Size of the filing document    ### Date Format  All dates must be provided in YYYY-MM-DD format    ### Form Types  Form types can be provided as comma-separated values, e.g.: \"10-K,8-K,10-Q\"    :::tip  For optimal performance, use date ranges and form types to narrow down your search  :::


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cik** | **INTEGER_64**| Filter by Central Index Key (CIK) | [optional] [default to null]
 **ticker** | **STRING_32**| Filter by stock ticker symbol | [optional] [default to null]
 **form_type** | **STRING_32**| Filter by form type(s) (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated | [optional] [default to null]
 **filling_date_start** | **STRING_32**| Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] [default to null]
 **filling_date_end** | **STRING_32**| Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] [default to null]
 **report_date_start** | **STRING_32**| Filter by report date start (inclusive), format YYYY-MM-DD | [optional] [default to null]
 **report_date_end** | **STRING_32**| Filter by report date end (inclusive), format YYYY-MM-DD | [optional] [default to null]
 **items_contain** | **STRING_32**| Filter filings where the &#39;Items&#39; field contains the specified text | [optional] [default to null]
 **page_size** | **INTEGER_32**| Number of results per page (default: 50, max: 200) | [optional] [default to null]
 **page_number** | **INTEGER_32**| Page number to retrieve (default: 1) | [optional] [default to null]
 **sort_by** | [**DTO_FILING_SORT_BY**](.md)| Field to sort results by (default: AccessionNumber) | [optional] [default to null]
 **sort_order** | **STRING_32**| Sort order (asc or desc, default: desc) | [optional] [default to desc]

### Return type

[**LIST [DTO_FILING_METADATA_DTO]**](DTO.FilingMetadataDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

