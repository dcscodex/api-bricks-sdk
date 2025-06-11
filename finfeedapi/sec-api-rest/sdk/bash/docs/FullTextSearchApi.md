# FullTextSearchApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1FullTextGet**](FullTextSearchApi.md#v1FullTextGet) | **GET** /v1/full-text | Full-text search of SEC filing documents



## v1FullTextGet

Full-text search of SEC filing documents

Search across SEC filing documents with advanced filtering and sorting capabilities.

### Available Sort Fields

Field Name | Description
-----------|-------------
AccessionNumber | SEC filing accession number
FormType | Type of the filing document
FilingDate | Date when filing was submitted
CompanyName | Name of the company
CIK | Central Index Key
DocumentFilename | Name of the filing document
DocumentDescription | Description of the document

### Search Options

Option | Description
--------|-------------
text_contains | Keywords that must appear in the document
text_not_contain | Keywords that must not appear in the document

### Date Format
All dates must be provided in YYYY-MM-DD format

:::tip
Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches
:::

:::note
The search is case-insensitive and supports partial word matches
:::

### Example

```bash
 v1FullTextGet  form_type=value  filling_date_start=value  filling_date_end=value  text_contains=value  text_not_contain=value  page_size=value  page_number=value  sort_by=value  sort_order=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formType** | **string** | Filter by form type (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated | [optional] [default to null]
 **fillingDateStart** | **string** | Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] [default to null]
 **fillingDateEnd** | **string** | Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] [default to null]
 **textContains** | **string** | Keywords that the text must contain. Multiple values can be comma-separated | [optional] [default to null]
 **textNotContain** | **string** | Keywords that the text must not contain. Multiple values can be comma-separated | [optional] [default to null]
 **pageSize** | **integer** | Number of results per page (default: 100) | [optional] [default to null]
 **pageNumber** | **integer** | Page number to retrieve (default: 1) | [optional] [default to null]
 **sortBy** | **string** | Field to sort by (default: AccessionNumber) | [optional] [default to AccessionNumber]
 **sortOrder** | **string** | Sort order (asc or desc). Defaults to asc | [optional] [default to asc]

### Return type

[**array[DTOSecFilingResultDto]**](DTOSecFilingResultDto.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

