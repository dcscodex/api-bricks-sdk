# PSOpenAPITools.PSOpenAPITools\Api.ContentExtractionApi

All URIs are relative to *https://api-historical.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1ExtractorGet**](ContentExtractionApi.md#Invoke-V1ExtractorGet) | **GET** /v1/extractor | Extract and classify SEC filing content
[**Invoke-V1ExtractorItemGet**](ContentExtractionApi.md#Invoke-V1ExtractorItemGet) | **GET** /v1/extractor/item | Extract specific item content from SEC filing


<a id="Invoke-V1ExtractorGet"></a>
# **Invoke-V1ExtractorGet**
> DTOFilingExtractResultDto Invoke-V1ExtractorGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccessionNumber] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <PSCustomObject><br>

Extract and classify SEC filing content

Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.    ### Supported Form Types    Form Type | Description  ----------|------------  8-K      | Current report filing  10-K     | Annual report filing  10-Q     | Quarterly report filing    ### Content Classification  - 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01)  - 10-K/10-Q forms: Items categorized by their respective part and item structure    :::note  Both HTML and plain text documents are supported for content extraction.  :::

### Example
```powershell
$AccessionNumber = "MyAccessionNumber" # String | The SEC filing accession number used to retrieve the filing from EDGAR database.
$Type = "text" # DTOExtractorType | Result type (text or html, default: text) (optional)

# Extract and classify SEC filing content
try {
    $Result = Invoke-V1ExtractorGet -AccessionNumber $AccessionNumber -Type $Type
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1ExtractorGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AccessionNumber** | **String**| The SEC filing accession number used to retrieve the filing from EDGAR database. | 
 **Type** | [**DTOExtractorType**](DTOExtractorType.md)| Result type (text or html, default: text) | [optional] 

### Return type

[**DTOFilingExtractResultDto**](DTOFilingExtractResultDto.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1ExtractorItemGet"></a>
# **Invoke-V1ExtractorItemGet**
> String Invoke-V1ExtractorItemGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccessionNumber] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ItemNumber] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <PSCustomObject><br>

Extract specific item content from SEC filing

Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.    ### Item Number Format    Form Type | Item Format Examples  -----------|-------------------  8-K       | 1.01, 2.01, 7.01  10-K      | 1, 2, 3  10-K/10-Q | PartI 1, PartII 2    :::tip  For best results, ensure the item number matches exactly with the filing's structure.  :::

### Example
```powershell
$AccessionNumber = "MyAccessionNumber" # String | The SEC filing accession number used to retrieve the filing from EDGAR database.
$ItemNumber = "MyItemNumber" # String | The specific item number to extract (e.g., ""1.01"", ""2.01"", ""7.01"").
$Type = "text" # DTOExtractorType | Result type (text or html, default: text) (optional)

# Extract specific item content from SEC filing
try {
    $Result = Invoke-V1ExtractorItemGet -AccessionNumber $AccessionNumber -ItemNumber $ItemNumber -Type $Type
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1ExtractorItemGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AccessionNumber** | **String**| The SEC filing accession number used to retrieve the filing from EDGAR database. | 
 **ItemNumber** | **String**| The specific item number to extract (e.g., &quot;&quot;1.01&quot;&quot;, &quot;&quot;2.01&quot;&quot;, &quot;&quot;7.01&quot;&quot;). | 
 **Type** | [**DTOExtractorType**](DTOExtractorType.md)| Result type (text or html, default: text) | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

