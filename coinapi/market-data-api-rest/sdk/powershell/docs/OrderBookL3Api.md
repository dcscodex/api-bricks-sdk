# PSOpenAPITools.PSOpenAPITools\Api.OrderBookL3Api

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1Orderbooks3CurrentGet**](OrderBookL3Api.md#Invoke-V1Orderbooks3CurrentGet) | **GET** /v1/orderbooks3/current | Current order books
[**Invoke-V1Orderbooks3SymbolIdCurrentGet**](OrderBookL3Api.md#Invoke-V1Orderbooks3SymbolIdCurrentGet) | **GET** /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id


<a id="Invoke-V1Orderbooks3CurrentGet"></a>
# **Invoke-V1Orderbooks3CurrentGet**
> V1OrderBookBase[] Invoke-V1Orderbooks3CurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterSymbolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LimitLevels] <System.Nullable[Int32]><br>

Current order books

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$FilterSymbolId = "MyFilterSymbolId" # String | Comma or semicolon delimited parts of symbol identifier used to filter the response. (optional)
$LimitLevels = 56 # Int32 | The maximum number of levels to include in the response. (optional)

# Current order books
try {
    $Result = Invoke-V1Orderbooks3CurrentGet -FilterSymbolId $FilterSymbolId -LimitLevels $LimitLevels
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1Orderbooks3CurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterSymbolId** | **String**| Comma or semicolon delimited parts of symbol identifier used to filter the response. | [optional] 
 **LimitLevels** | **Int32**| The maximum number of levels to include in the response. | [optional] 

### Return type

[**V1OrderBookBase[]**](V1OrderBookBase.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1Orderbooks3SymbolIdCurrentGet"></a>
# **Invoke-V1Orderbooks3SymbolIdCurrentGet**
> V1OrderBookBase Invoke-V1Orderbooks3SymbolIdCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SymbolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LimitLevels] <System.Nullable[Int32]><br>

Current order book by symbol_id

Retrieves the current order book for the specified symbol.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$SymbolId = "MySymbolId" # String | The symbol ID (from the Metadata -> Symbols)
$LimitLevels = 56 # Int32 | The maximum number of levels to include in the response. (optional)

# Current order book by symbol_id
try {
    $Result = Invoke-V1Orderbooks3SymbolIdCurrentGet -SymbolId $SymbolId -LimitLevels $LimitLevels
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1Orderbooks3SymbolIdCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SymbolId** | **String**| The symbol ID (from the Metadata -&gt; Symbols) | 
 **LimitLevels** | **Int32**| The maximum number of levels to include in the response. | [optional] 

### Return type

[**V1OrderBookBase**](V1OrderBookBase.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

