# FilingMetadataApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1FilingsGet**](FilingMetadataApi.md#v1FilingsGet) | **GET** /v1/filings | Query SEC filing metadata



## v1FilingsGet

Query SEC filing metadata

Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.

### Available Sort Fields

Field Name | Description
-----------|-------------
AccessionNumber | SEC filing accession number
FilingDate | Date when filing was submitted
AcceptanceDateTime | Date and time of filing acceptance
ReportDate | Date of the report
Size | Size of the filing document

### Date Format
All dates must be provided in YYYY-MM-DD format

### Form Types
Form types can be provided as comma-separated values, e.g.: \"10-K,8-K,10-Q\"

:::tip
For optimal performance, use date ranges and form types to narrow down your search
:::

### Example

```bash
 v1FilingsGet  cik=value  ticker=value  form_type=value  filling_date_start=value  filling_date_end=value  report_date_start=value  report_date_end=value  items_contain=value  page_size=value  page_number=value  sort_by=value  sort_order=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cik** | **integer** | Filter by Central Index Key (CIK) | [optional] [default to null]
 **ticker** | **string** | Filter by stock ticker symbol | [optional] [default to null]
 **formType** | **string** | Filter by form type(s) (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated | [optional] [default to null]
 **fillingDateStart** | **string** | Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] [default to null]
 **fillingDateEnd** | **string** | Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] [default to null]
 **reportDateStart** | **string** | Filter by report date start (inclusive), format YYYY-MM-DD | [optional] [default to null]
 **reportDateEnd** | **string** | Filter by report date end (inclusive), format YYYY-MM-DD | [optional] [default to null]
 **itemsContain** | **string** | Filter filings where the 'Items' field contains the specified text | [optional] [default to null]
 **pageSize** | **integer** | Number of results per page (default: 50, max: 200) | [optional] [default to null]
 **pageNumber** | **integer** | Page number to retrieve (default: 1) | [optional] [default to null]
 **sortBy** | [**DTOFilingSortBy**](.md) | Field to sort results by (default: AccessionNumber) | [optional] [default to null]
 **sortOrder** | **string** | Sort order (asc or desc, default: desc) | [optional] [default to desc]

### Return type

[**array[DTOFilingMetadataDto]**](DTOFilingMetadataDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

