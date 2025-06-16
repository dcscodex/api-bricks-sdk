# PSOpenAPITools.PSOpenAPITools\Api.FileDownloadApi

All URIs are relative to *https://api.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1DownloadGet**](FileDownloadApi.md#Invoke-V1DownloadGet) | **GET** /v1/download | Download file from SEC EDGAR archive


<a id="Invoke-V1DownloadGet"></a>
# **Invoke-V1DownloadGet**
> void Invoke-V1DownloadGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccessionNo] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FileName] <String><br>

Download file from SEC EDGAR archive

Downloads a specific file from the SEC EDGAR archive using the accession number and filename. The file is streamed directly from the SEC servers to the client.  ### Accession Number Format Accession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)  ### File Name Examples - Primary documents: `d123456d10k.htm`, `d789012d8k.htm` - XBRL files: `d123456d10k_htm.xml`, `FilingSummary.xml` - Exhibits: `d123456dexhibit99.htm`, `d123456dex101.htm`  ### File Types The endpoint supports downloading various file types from SEC filings: - HTML documents (.htm, .html) - XBRL files (.xml, .xsd) - Text files (.txt) - PDF files (.pdf) - Other document formats as submitted to SEC  :::tip You can find available filenames for a specific filing using the `/v1/filings` endpoint first :::  :::warning This endpoint streams files directly from the SEC. Large files may take longer to download. :::

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$AccessionNo = "MyAccessionNo" # String | SEC filing accession number in format: 0000000000-00-000000
$FileName = "MyFileName" # String | Name of the file to download from the filing

# Download file from SEC EDGAR archive
try {
    $Result = Invoke-V1DownloadGet -AccessionNo $AccessionNo -FileName $FileName
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1DownloadGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AccessionNo** | **String**| SEC filing accession number in format: 0000000000-00-000000 | 
 **FileName** | **String**| Name of the file to download from the filing | 

### Return type

void (empty response body)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, text/html, application/xml, text/plain, application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

