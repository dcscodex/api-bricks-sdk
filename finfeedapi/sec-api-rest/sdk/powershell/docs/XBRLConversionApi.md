# PSOpenAPITools.PSOpenAPITools\Api.XBRLConversionApi

All URIs are relative to *https://api.sec.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1XbrlConverterGet**](XBRLConversionApi.md#Invoke-V1XbrlConverterGet) | **GET** /v1/xbrl-converter | Convert XBRL data to JSON format


<a id="Invoke-V1XbrlConverterGet"></a>
# **Invoke-V1XbrlConverterGet**
> System.Collections.Hashtable Invoke-V1XbrlConverterGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HtmUrl] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XbrlUrl] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccessionNo] <String><br>

Convert XBRL data to JSON format

Converts XBRL data to JSON format using one of three possible input methods.  ### Input Methods  1. HTML URL (htm-url)    - URL of the filing ending with .htm or .html    - Both filing URLs and index page URLs are accepted    - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231.htm  2. XBRL URL (xbrl-url)    - URL of the XBRL file ending with .xml    - Can be found in the dataFiles array from Query API    - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231_htm.xml  3. Accession Number (accession-no)    - The SEC filing accession number    - Example: 0001564590-21-004599  :::note Only one of the three parameters should be provided. If multiple parameters are provided, the priority order is: 1. htm-url 2. xbrl-url 3. accession-no :::  ### Supported Filing Types  - Annual Reports (10-K) - Quarterly Reports (10-Q) - Current Reports (8-K) - Registration Statements (S-1, S-3) - Foreign Private Issuer Reports (20-F, 40-F)  ### Response Format  The API returns a JSON object containing: - Financial statements (Income Statement, Balance Sheet, Cash Flow Statement) - Accounting policies and footnotes - Company information - Filing metadata  ### Example Response ```json {   ""StatementsOfIncome"": {     ""RevenueFromContractWithCustomerExcludingAssessedTax"": [       {         ""decimals"": ""-6"",         ""unitRef"": ""U_USD"",         ""period"": {           ""startDate"": ""2023-07-01"",           ""endDate"": ""2024-06-30""         },         ""value"": ""245122000000""       }     ]   } } ```

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$HtmUrl = "MyHtmUrl" # String | URL of the filing ending with .htm or .html (optional)
$XbrlUrl = "MyXbrlUrl" # String | URL of the XBRL file ending with .xml (optional)
$AccessionNo = "MyAccessionNo" # String | SEC filing accession number (optional)

# Convert XBRL data to JSON format
try {
    $Result = Invoke-V1XbrlConverterGet -HtmUrl $HtmUrl -XbrlUrl $XbrlUrl -AccessionNo $AccessionNo
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1XbrlConverterGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **HtmUrl** | **String**| URL of the filing ending with .htm or .html | [optional] 
 **XbrlUrl** | **String**| URL of the XBRL file ending with .xml | [optional] 
 **AccessionNo** | **String**| SEC filing accession number | [optional] 

### Return type

[**System.Collections.Hashtable**](AnyType.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

