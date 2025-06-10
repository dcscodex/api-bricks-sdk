# PSOpenAPITools.PSOpenAPITools\Api.QuotesApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1QuotesCurrentGet**](QuotesApi.md#Invoke-V1QuotesCurrentGet) | **GET** /v1/quotes/current | Current data
[**Invoke-V1QuotesLatestGet**](QuotesApi.md#Invoke-V1QuotesLatestGet) | **GET** /v1/quotes/latest | Latest data
[**Invoke-V1QuotesSymbolIdCurrentGet**](QuotesApi.md#Invoke-V1QuotesSymbolIdCurrentGet) | **GET** /v1/quotes/{symbol_id}/current | Current quotes for a specific symbol
[**Invoke-V1QuotesSymbolIdHistoryGet**](QuotesApi.md#Invoke-V1QuotesSymbolIdHistoryGet) | **GET** /v1/quotes/{symbol_id}/history | Historical data
[**Invoke-V1QuotesSymbolIdLatestGet**](QuotesApi.md#Invoke-V1QuotesSymbolIdLatestGet) | **GET** /v1/quotes/{symbol_id}/latest | Latest quote updates for a specific symbol


<a id="Invoke-V1QuotesCurrentGet"></a>
# **Invoke-V1QuotesCurrentGet**
> V1QuoteTrade[] Invoke-V1QuotesCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterSymbolId] <String><br>

Current data

Get current quotes for all symbols or for a specific symbol.                :::info  When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned.  :::

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$FilterSymbolId = "MyFilterSymbolId" # String | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) (optional)

# Current data
try {
    $Result = Invoke-V1QuotesCurrentGet -FilterSymbolId $FilterSymbolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1QuotesCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterSymbolId** | **String**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] 

### Return type

[**V1QuoteTrade[]**](V1QuoteTrade.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1QuotesLatestGet"></a>
# **Invoke-V1QuotesLatestGet**
> V1Quote[] Invoke-V1QuotesLatestGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterSymbolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Latest data

Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$FilterSymbolId = "MyFilterSymbolId" # String | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) (optional)
$Limit = 56 # Int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

# Latest data
try {
    $Result = Invoke-V1QuotesLatestGet -FilterSymbolId $FilterSymbolId -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1QuotesLatestGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterSymbolId** | **String**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] 
 **Limit** | **Int32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**V1Quote[]**](V1Quote.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1QuotesSymbolIdCurrentGet"></a>
# **Invoke-V1QuotesSymbolIdCurrentGet**
> V1QuoteTrade Invoke-V1QuotesSymbolIdCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SymbolId] <String><br>

Current quotes for a specific symbol

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$SymbolId = "MySymbolId" # String | The symbol identifier (from the Metadata -> Symbols)

# Current quotes for a specific symbol
try {
    $Result = Invoke-V1QuotesSymbolIdCurrentGet -SymbolId $SymbolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1QuotesSymbolIdCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SymbolId** | **String**| The symbol identifier (from the Metadata -&gt; Symbols) | 

### Return type

[**V1QuoteTrade**](V1QuoteTrade.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1QuotesSymbolIdHistoryGet"></a>
# **Invoke-V1QuotesSymbolIdHistoryGet**
> V1Quote[] Invoke-V1QuotesSymbolIdHistoryGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SymbolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Date] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeStart] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeEnd] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Historical data

Get historical quote updates within requested time range, returned in time ascending order.    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$SymbolId = "MySymbolId" # String | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
$Date = "MyDate" # String | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided) (optional)
$TimeStart = "MyTimeStart" # String | Starting time in ISO 8601 (optional)
$TimeEnd = "MyTimeEnd" # String | Timeseries ending time in ISO 8601 (optional)
$Limit = 56 # Int32 | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

# Historical data
try {
    $Result = Invoke-V1QuotesSymbolIdHistoryGet -SymbolId $SymbolId -Date $Date -TimeStart $TimeStart -TimeEnd $TimeEnd -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1QuotesSymbolIdHistoryGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SymbolId** | **String**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 
 **Date** | **String**| Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | [optional] 
 **TimeStart** | **String**| Starting time in ISO 8601 | [optional] 
 **TimeEnd** | **String**| Timeseries ending time in ISO 8601 | [optional] 
 **Limit** | **Int32**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**V1Quote[]**](V1Quote.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1QuotesSymbolIdLatestGet"></a>
# **Invoke-V1QuotesSymbolIdLatestGet**
> V1Quote[] Invoke-V1QuotesSymbolIdLatestGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SymbolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Latest quote updates for a specific symbol

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$SymbolId = "MySymbolId" # String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
$Limit = 56 # Int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

# Latest quote updates for a specific symbol
try {
    $Result = Invoke-V1QuotesSymbolIdLatestGet -SymbolId $SymbolId -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1QuotesSymbolIdLatestGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SymbolId** | **String**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
 **Limit** | **Int32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**V1Quote[]**](V1Quote.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

