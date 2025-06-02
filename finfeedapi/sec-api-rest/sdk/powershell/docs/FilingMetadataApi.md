# PSOpenAPITools.PSOpenAPITools\Api.FilingMetadataApi

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1FilingsGet**](FilingMetadataApi.md#Invoke-V1FilingsGet) | **GET** /v1/filings | Query SEC filing metadata


<a id="Invoke-V1FilingsGet"></a>
# **Invoke-V1FilingsGet**
> DTOFilingMetadataDto[] Invoke-V1FilingsGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Cik] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Ticker] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FormType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FillingDateStart] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FillingDateEnd] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportDateStart] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportDateEnd] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ItemsContain] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageNumber] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortOrder] <String><br>

Query SEC filing metadata

Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FilingDate | Date when filing was submitted  AcceptanceDateTime | Date and time of filing acceptance  ReportDate | Date of the report  Size | Size of the filing document    ### Date Format  All dates must be provided in YYYY-MM-DD format    ### Form Types  Form types can be provided as comma-separated values, e.g.: ""10-K,8-K,10-Q""    :::tip  For optimal performance, use date ranges and form types to narrow down your search  :::

### Example
```powershell
$Cik = 789 # Int64 | Filter by Central Index Key (CIK) (optional)
$Ticker = "MyTicker" # String | Filter by stock ticker symbol (optional)
$FormType = "MyFormType" # String | Filter by form type(s) (e.g., ""10-K"", ""8-K""). Multiple values can be comma-separated (optional)
$FillingDateStart = "MyFillingDateStart" # String | Filter by filling date start (inclusive), format YYYY-MM-DD (optional)
$FillingDateEnd = "MyFillingDateEnd" # String | Filter by filling date end (inclusive), format YYYY-MM-DD (optional)
$ReportDateStart = "MyReportDateStart" # String | Filter by report date start (inclusive), format YYYY-MM-DD (optional)
$ReportDateEnd = "MyReportDateEnd" # String | Filter by report date end (inclusive), format YYYY-MM-DD (optional)
$ItemsContain = "MyItemsContain" # String | Filter filings where the 'Items' field contains the specified text (optional)
$PageSize = 56 # Int32 | Number of results per page (default: 50, max: 200) (optional)
$PageNumber = 56 # Int32 | Page number to retrieve (default: 1) (optional)
$SortBy = "AccessionNumber" # DTOFilingSortBy | Field to sort results by (default: AccessionNumber) (optional)
$SortOrder = "MySortOrder" # String | Sort order (asc or desc, default: desc) (optional) (default to "desc")

# Query SEC filing metadata
try {
    $Result = Invoke-V1FilingsGet -Cik $Cik -Ticker $Ticker -FormType $FormType -FillingDateStart $FillingDateStart -FillingDateEnd $FillingDateEnd -ReportDateStart $ReportDateStart -ReportDateEnd $ReportDateEnd -ItemsContain $ItemsContain -PageSize $PageSize -PageNumber $PageNumber -SortBy $SortBy -SortOrder $SortOrder
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1FilingsGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Cik** | **Int64**| Filter by Central Index Key (CIK) | [optional] 
 **Ticker** | **String**| Filter by stock ticker symbol | [optional] 
 **FormType** | **String**| Filter by form type(s) (e.g., &quot;&quot;10-K&quot;&quot;, &quot;&quot;8-K&quot;&quot;). Multiple values can be comma-separated | [optional] 
 **FillingDateStart** | **String**| Filter by filling date start (inclusive), format YYYY-MM-DD | [optional] 
 **FillingDateEnd** | **String**| Filter by filling date end (inclusive), format YYYY-MM-DD | [optional] 
 **ReportDateStart** | **String**| Filter by report date start (inclusive), format YYYY-MM-DD | [optional] 
 **ReportDateEnd** | **String**| Filter by report date end (inclusive), format YYYY-MM-DD | [optional] 
 **ItemsContain** | **String**| Filter filings where the &#39;Items&#39; field contains the specified text | [optional] 
 **PageSize** | **Int32**| Number of results per page (default: 50, max: 200) | [optional] 
 **PageNumber** | **Int32**| Page number to retrieve (default: 1) | [optional] 
 **SortBy** | [**DTOFilingSortBy**](DTOFilingSortBy.md)| Field to sort results by (default: AccessionNumber) | [optional] 
 **SortOrder** | **String**| Sort order (asc or desc, default: desc) | [optional] [default to &quot;desc&quot;]

### Return type

[**DTOFilingMetadataDto[]**](DTOFilingMetadataDto.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

