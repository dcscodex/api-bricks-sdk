# PSOpenAPITools.PSOpenAPITools\Api.FullTextSearchApi

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1FullTextGet**](FullTextSearchApi.md#Invoke-V1FullTextGet) | **GET** /v1/full-text | Full-text search of SEC filing documents


<a id="Invoke-V1FullTextGet"></a>
# **Invoke-V1FullTextGet**
> DTOSecFilingResultDto[] Invoke-V1FullTextGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FillingDateStart] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FillingDateEnd] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TextContains] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TextNotContain] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageNumber] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortOrder] <String><br>

Full-text search of SEC filing documents

Search across SEC filing documents with advanced filtering and sorting capabilities.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FormType | Type of the filing document  FilingDate | Date when filing was submitted  CompanyName | Name of the company  CIK | Central Index Key  DocumentFilename | Name of the filing document  DocumentDescription | Description of the document    ### Search Options    Option | Description  --------|-------------  text_contains | Keywords that must appear in the document  text_not_contain | Keywords that must not appear in the document    ### Date Format  All dates must be provided in YYYY-MM-DD format    :::tip  Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches  :::    :::note  The search is case-insensitive and supports partial word matches  :::

### Example
```powershell
$FormType = "MyFormType" # String | Filter by form type (e.g., ""10-K"", ""8-K""). Multiple values can be comma-separated (optional)
$FillingDateStart = "MyFillingDateStart" # String | Filter by filling date start (inclusive), format YYYY-MM-DD (optional)
$FillingDateEnd = "MyFillingDateEnd" # String | Filter by filling date end (inclusive), format YYYY-MM-DD (optional)
$TextContains = "MyTextContains" # String | Keywords that the text must contain. Multiple values can be comma-separated (optional)
$TextNotContain = "MyTextNotContain" # String | Keywords that the text must not contain. Multiple values can be comma-separated (optional)
$PageSize = 56 # Int32 | Number of results per page (default: 100) (optional)
$PageNumber = 56 # Int32 | Page number to retrieve (default: 1) (optional)
$SortBy = "MySortBy" # String | Field to sort by (default: AccessionNumber) (optional) (default to "AccessionNumber")
$SortOrder = "MySortOrder" # String | Sort order (asc or desc). Defaults to asc (optional) (default to "asc")

# Full-text search of SEC filing documents
try {
    $Result = Invoke-V1FullTextGet -FormType $FormType -FillingDateStart $FillingDateStart -FillingDateEnd $FillingDateEnd -TextContains $TextContains -TextNotContain $TextNotContain -PageSize $PageSize -PageNumber $PageNumber -SortBy $SortBy -SortOrder $SortOrder
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1FullTextGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FormType** | **String**| Filter by form type (e.g., &quot;&quot;10-K&quot;&quot;, &quot;&quot;8-K&quot;&quot;). Multiple values can be comma-separated | [optional] 
 **FillingDateStart** | **String**| Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] 
 **FillingDateEnd** | **String**| Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] 
 **TextContains** | **String**| Keywords that the text must contain. Multiple values can be comma-separated | [optional] 
 **TextNotContain** | **String**| Keywords that the text must not contain. Multiple values can be comma-separated | [optional] 
 **PageSize** | **Int32**| Number of results per page (default: 100) | [optional] 
 **PageNumber** | **Int32**| Page number to retrieve (default: 1) | [optional] 
 **SortBy** | **String**| Field to sort by (default: AccessionNumber) | [optional] [default to &quot;AccessionNumber&quot;]
 **SortOrder** | **String**| Sort order (asc or desc). Defaults to asc | [optional] [default to &quot;asc&quot;]

### Return type

[**DTOSecFilingResultDto[]**](DTOSecFilingResultDto.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

