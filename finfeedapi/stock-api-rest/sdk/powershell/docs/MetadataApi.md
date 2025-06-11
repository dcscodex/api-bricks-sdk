# PSOpenAPITools.PSOpenAPITools\Api.MetadataApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1ExchangesGet**](MetadataApi.md#Invoke-V1ExchangesGet) | **GET** /v1/exchanges | List of exchanges
[**Invoke-V1SymbolsExchangeIdGet**](MetadataApi.md#Invoke-V1SymbolsExchangeIdGet) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange


<a id="Invoke-V1ExchangesGet"></a>
# **Invoke-V1ExchangesGet**
> FinFeedAPIExchangeModel[] Invoke-V1ExchangesGet<br>

List of exchanges

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"



# List of exchanges
try {
    $Result = Invoke-V1ExchangesGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1ExchangesGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**FinFeedAPIExchangeModel[]**](FinFeedAPIExchangeModel.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1SymbolsExchangeIdGet"></a>
# **Invoke-V1SymbolsExchangeIdGet**
> FinFeedAPISymbolModel[] Invoke-V1SymbolsExchangeIdGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>

List of symbols for the exchange

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$ExchangeId = "MyExchangeId" # String | 

# List of symbols for the exchange
try {
    $Result = Invoke-V1SymbolsExchangeIdGet -ExchangeId $ExchangeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1SymbolsExchangeIdGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExchangeId** | **String**|  | 

### Return type

[**FinFeedAPISymbolModel[]**](FinFeedAPISymbolModel.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

