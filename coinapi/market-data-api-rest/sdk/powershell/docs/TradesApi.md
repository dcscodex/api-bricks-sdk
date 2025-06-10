# PSOpenAPITools.PSOpenAPITools\Api.TradesApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1TradesLatestGet**](TradesApi.md#Invoke-V1TradesLatestGet) | **GET** /v1/trades/latest | Latest data
[**Invoke-V1TradesSymbolIdHistoryGet**](TradesApi.md#Invoke-V1TradesSymbolIdHistoryGet) | **GET** /v1/trades/{symbol_id}/history | Historical data
[**Invoke-V1TradesSymbolIdLatestGet**](TradesApi.md#Invoke-V1TradesSymbolIdLatestGet) | **GET** /v1/trades/{symbol_id}/latest | Latest data by symbol_id


<a id="Invoke-V1TradesLatestGet"></a>
# **Invoke-V1TradesLatestGet**
> V1Trade[] Invoke-V1TradesLatestGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterSymbolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeId] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Latest data

Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$FilterSymbolId = "MyFilterSymbolId" # String | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) (optional)
$IncludeId = $true # Boolean | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers. (optional) (default to $false)
$Limit = 56 # Int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

# Latest data
try {
    $Result = Invoke-V1TradesLatestGet -FilterSymbolId $FilterSymbolId -IncludeId $IncludeId -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1TradesLatestGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterSymbolId** | **String**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] 
 **IncludeId** | **Boolean**| Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to $false]
 **Limit** | **Int32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**V1Trade[]**](V1Trade.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1TradesSymbolIdHistoryGet"></a>
# **Invoke-V1TradesSymbolIdHistoryGet**
> V1Trade[] Invoke-V1TradesSymbolIdHistoryGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SymbolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Date] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeStart] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeEnd] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeId] <System.Nullable[Boolean]><br>

Historical data

Get history transactions from specific symbol, returned in time ascending order.    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$SymbolId = "MySymbolId" # String | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
$Date = "MyDate" # String | Date in ISO 8601, returned data is for the whole given day (required if 'time_start' is not provided) (optional)
$TimeStart = "MyTimeStart" # String | Starting time in ISO 8601 (optional)
$TimeEnd = "MyTimeEnd" # String | Timeseries ending time in ISO 8601 (optional)
$Limit = 56 # Int32 | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)
$IncludeId = $true # Boolean | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers. (optional) (default to $false)

# Historical data
try {
    $Result = Invoke-V1TradesSymbolIdHistoryGet -SymbolId $SymbolId -Date $Date -TimeStart $TimeStart -TimeEnd $TimeEnd -Limit $Limit -IncludeId $IncludeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1TradesSymbolIdHistoryGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SymbolId** | **String**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 
 **Date** | **String**| Date in ISO 8601, returned data is for the whole given day (required if &#39;time_start&#39; is not provided) | [optional] 
 **TimeStart** | **String**| Starting time in ISO 8601 | [optional] 
 **TimeEnd** | **String**| Timeseries ending time in ISO 8601 | [optional] 
 **Limit** | **Int32**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **IncludeId** | **Boolean**| Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to $false]

### Return type

[**V1Trade[]**](V1Trade.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1TradesSymbolIdLatestGet"></a>
# **Invoke-V1TradesSymbolIdLatestGet**
> V1Trade[] Invoke-V1TradesSymbolIdLatestGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SymbolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeId] <System.Nullable[Boolean]><br>

Latest data by symbol_id

Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$SymbolId = "MySymbolId" # String | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
$Limit = 56 # Int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)
$IncludeId = $true # Boolean | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers. (optional) (default to $false)

# Latest data by symbol_id
try {
    $Result = Invoke-V1TradesSymbolIdLatestGet -SymbolId $SymbolId -Limit $Limit -IncludeId $IncludeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1TradesSymbolIdLatestGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SymbolId** | **String**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 
 **Limit** | **Int32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **IncludeId** | **Boolean**| Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to $false]

### Return type

[**V1Trade[]**](V1Trade.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

