# PSOpenAPITools.PSOpenAPITools\Api.OrderBookApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1OrderbooksSymbolIdCurrentGet**](OrderBookApi.md#Invoke-V1OrderbooksSymbolIdCurrentGet) | **GET** /v1/orderbooks/{symbol_id}/current | Get current order book
[**Invoke-V1OrderbooksSymbolIdDepthCurrentGet**](OrderBookApi.md#Invoke-V1OrderbooksSymbolIdDepthCurrentGet) | **GET** /v1/orderbooks/{symbol_id}/depth/current | Current depth of the order book
[**Invoke-V1OrderbooksSymbolIdHistoryGet**](OrderBookApi.md#Invoke-V1OrderbooksSymbolIdHistoryGet) | **GET** /v1/orderbooks/{symbol_id}/history | Historical data
[**Invoke-V1OrderbooksSymbolIdLatestGet**](OrderBookApi.md#Invoke-V1OrderbooksSymbolIdLatestGet) | **GET** /v1/orderbooks/{symbol_id}/latest | Latest data


<a id="Invoke-V1OrderbooksSymbolIdCurrentGet"></a>
# **Invoke-V1OrderbooksSymbolIdCurrentGet**
> V1OrderBookBase Invoke-V1OrderbooksSymbolIdCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SymbolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LimitLevels] <System.Nullable[Int32]><br>

Get current order book

Retrieves the current order book for the specified symbol.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$SymbolId = "MySymbolId" # String | The symbol ID (from the Metadata -> Symbols)
$LimitLevels = 56 # Int32 | The maximum number of levels to include in the response. (optional)

# Get current order book
try {
    $Result = Invoke-V1OrderbooksSymbolIdCurrentGet -SymbolId $SymbolId -LimitLevels $LimitLevels
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1OrderbooksSymbolIdCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1OrderbooksSymbolIdDepthCurrentGet"></a>
# **Invoke-V1OrderbooksSymbolIdDepthCurrentGet**
> V1OrderBookDepth Invoke-V1OrderbooksSymbolIdDepthCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SymbolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LimitLevels] <System.Nullable[Int32]><br>

Current depth of the order book

Retrieves the current depth of the order book for the specified symbol.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$SymbolId = "MySymbolId" # String | The symbol ID (from the Metadata -> Symbols)
$LimitLevels = 56 # Int32 | The maximum number of levels to include in the response. (optional)

# Current depth of the order book
try {
    $Result = Invoke-V1OrderbooksSymbolIdDepthCurrentGet -SymbolId $SymbolId -LimitLevels $LimitLevels
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1OrderbooksSymbolIdDepthCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SymbolId** | **String**| The symbol ID (from the Metadata -&gt; Symbols) | 
 **LimitLevels** | **Int32**| The maximum number of levels to include in the response. | [optional] 

### Return type

[**V1OrderBookDepth**](V1OrderBookDepth.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1OrderbooksSymbolIdHistoryGet"></a>
# **Invoke-V1OrderbooksSymbolIdHistoryGet**
> V1OrderBook[] Invoke-V1OrderbooksSymbolIdHistoryGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SymbolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Date] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeStart] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeEnd] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LimitLevels] <System.Nullable[Int32]><br>

Historical data

Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::

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
$TimeStart = "MyTimeStart" # String | Starting time in ISO 8601 (deprecated, use 'date' instead) (optional)
$TimeEnd = "MyTimeEnd" # String | Timeseries ending time in ISO 8601 (deprecated, use 'date' instead) (optional)
$Limit = 56 # Int32 | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)
$LimitLevels = 56 # Int32 | Maximum amount of levels from each side of the book to include in response (optional) (optional)

# Historical data
try {
    $Result = Invoke-V1OrderbooksSymbolIdHistoryGet -SymbolId $SymbolId -Date $Date -TimeStart $TimeStart -TimeEnd $TimeEnd -Limit $Limit -LimitLevels $LimitLevels
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1OrderbooksSymbolIdHistoryGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SymbolId** | **String**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 
 **Date** | **String**| Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | [optional] 
 **TimeStart** | **String**| Starting time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional] 
 **TimeEnd** | **String**| Timeseries ending time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional] 
 **Limit** | **Int32**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **LimitLevels** | **Int32**| Maximum amount of levels from each side of the book to include in response (optional) | [optional] 

### Return type

[**V1OrderBook[]**](V1OrderBook.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1OrderbooksSymbolIdLatestGet"></a>
# **Invoke-V1OrderbooksSymbolIdLatestGet**
> V1OrderBook[] Invoke-V1OrderbooksSymbolIdLatestGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SymbolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LimitLevels] <System.Nullable[Int32]><br>

Latest data

Get latest order book snapshots for a specific symbol, returned in time descending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::

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
$LimitLevels = 56 # Int32 | Maximum amount of levels from each side of the book to include in response (optional) (optional)

# Latest data
try {
    $Result = Invoke-V1OrderbooksSymbolIdLatestGet -SymbolId $SymbolId -Limit $Limit -LimitLevels $LimitLevels
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1OrderbooksSymbolIdLatestGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SymbolId** | **String**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
 **Limit** | **Int32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **LimitLevels** | **Int32**| Maximum amount of levels from each side of the book to include in response (optional) | [optional] 

### Return type

[**V1OrderBook[]**](V1OrderBook.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

