# PSOpenAPITools.PSOpenAPITools\Api.ExternalMetricsApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1ExternalmetricsAssetHistoryGet**](ExternalMetricsApi.md#Invoke-V1ExternalmetricsAssetHistoryGet) | **GET** /v1/externalmetrics/asset/history | Historical metrics for the asset
[**Invoke-V1ExternalmetricsAssetListingGet**](ExternalMetricsApi.md#Invoke-V1ExternalmetricsAssetListingGet) | **GET** /v1/externalmetrics/asset/listing | Listing of metrics available for specific asset
[**Invoke-V1ExternalmetricsChainHistoryGet**](ExternalMetricsApi.md#Invoke-V1ExternalmetricsChainHistoryGet) | **GET** /v1/externalmetrics/chain/history | Historical metrics for the chain
[**Invoke-V1ExternalmetricsChainListingGet**](ExternalMetricsApi.md#Invoke-V1ExternalmetricsChainListingGet) | **GET** /v1/externalmetrics/chain/listing | Listing of metrics available for specific chain
[**Invoke-V1ExternalmetricsExchangeHistoryGet**](ExternalMetricsApi.md#Invoke-V1ExternalmetricsExchangeHistoryGet) | **GET** /v1/externalmetrics/exchange/history | Historical metrics for the exchange
[**Invoke-V1ExternalmetricsExchangeListingGet**](ExternalMetricsApi.md#Invoke-V1ExternalmetricsExchangeListingGet) | **GET** /v1/externalmetrics/exchange/listing | Listing of metrics available for specific exchange
[**Invoke-V1ExternalmetricsListingGet**](ExternalMetricsApi.md#Invoke-V1ExternalmetricsListingGet) | **GET** /v1/externalmetrics/listing | Listing of all supported metrics


<a id="Invoke-V1ExternalmetricsAssetHistoryGet"></a>
# **Invoke-V1ExternalmetricsAssetHistoryGet**
> SystemCollectionsHashtable[] Invoke-V1ExternalmetricsAssetHistoryGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MetricId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeStart] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeEnd] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeFormat] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PeriodId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Historical metrics for the asset

Get asset metrics history.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$MetricId = "MyMetricId" # String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
$AssetId = "MyAssetId" # String | Asset identifier (e.g., `USDC`, `USDT`)
$TimeStart = (Get-Date) # System.DateTime | Starting time in ISO 8601 (optional)
$TimeEnd = (Get-Date) # System.DateTime | Ending time in ISO 8601 (optional)
$TimeFormat = "MyTimeFormat" # String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional)
$PeriodId = "MyPeriodId" # String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` (optional)
$Limit = 56 # Int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

# Historical metrics for the asset
try {
    $Result = Invoke-V1ExternalmetricsAssetHistoryGet -MetricId $MetricId -AssetId $AssetId -TimeStart $TimeStart -TimeEnd $TimeEnd -TimeFormat $TimeFormat -PeriodId $PeriodId -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1ExternalmetricsAssetHistoryGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MetricId** | **String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | 
 **AssetId** | **String**| Asset identifier (e.g., &#x60;USDC&#x60;, &#x60;USDT&#x60;) | 
 **TimeStart** | **System.DateTime**| Starting time in ISO 8601 | [optional] 
 **TimeEnd** | **System.DateTime**| Ending time in ISO 8601 | [optional] 
 **TimeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **PeriodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] 
 **Limit** | **Int32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1ExternalmetricsAssetListingGet"></a>
# **Invoke-V1ExternalmetricsAssetListingGet**
> V1MetricInfo[] Invoke-V1ExternalmetricsAssetListingGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetId] <String><br>

Listing of metrics available for specific asset

Get all metrics that are actually available for the specified asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$AssetId = "MyAssetId" # String | Asset identifier (e.g., USDC, USDT)

# Listing of metrics available for specific asset
try {
    $Result = Invoke-V1ExternalmetricsAssetListingGet -AssetId $AssetId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1ExternalmetricsAssetListingGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AssetId** | **String**| Asset identifier (e.g., USDC, USDT) | 

### Return type

[**V1MetricInfo[]**](V1MetricInfo.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1ExternalmetricsChainHistoryGet"></a>
# **Invoke-V1ExternalmetricsChainHistoryGet**
> SystemCollectionsHashtable[] Invoke-V1ExternalmetricsChainHistoryGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MetricId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeStart] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeEnd] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeFormat] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PeriodId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Historical metrics for the chain

Get chain metrics history.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$MetricId = "MyMetricId" # String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
$ChainId = "MyChainId" # String | Chain identifier (e.g., `Ethereum`, `Arbitrum`)
$TimeStart = (Get-Date) # System.DateTime | Starting time in ISO 8601 (optional)
$TimeEnd = (Get-Date) # System.DateTime | Ending time in ISO 8601 (optional)
$TimeFormat = "MyTimeFormat" # String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional)
$PeriodId = "MyPeriodId" # String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` (optional)
$Limit = 56 # Int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

# Historical metrics for the chain
try {
    $Result = Invoke-V1ExternalmetricsChainHistoryGet -MetricId $MetricId -ChainId $ChainId -TimeStart $TimeStart -TimeEnd $TimeEnd -TimeFormat $TimeFormat -PeriodId $PeriodId -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1ExternalmetricsChainHistoryGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MetricId** | **String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | 
 **ChainId** | **String**| Chain identifier (e.g., &#x60;Ethereum&#x60;, &#x60;Arbitrum&#x60;) | 
 **TimeStart** | **System.DateTime**| Starting time in ISO 8601 | [optional] 
 **TimeEnd** | **System.DateTime**| Ending time in ISO 8601 | [optional] 
 **TimeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **PeriodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] 
 **Limit** | **Int32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1ExternalmetricsChainListingGet"></a>
# **Invoke-V1ExternalmetricsChainListingGet**
> V1MetricInfo[] Invoke-V1ExternalmetricsChainListingGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>

Listing of metrics available for specific chain

Get all metrics that are actually available for the specified blockchain chain.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$ChainId = "MyChainId" # String | Chain identifier (e.g., ETHEREUM, ARBITRUM)

# Listing of metrics available for specific chain
try {
    $Result = Invoke-V1ExternalmetricsChainListingGet -ChainId $ChainId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1ExternalmetricsChainListingGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| Chain identifier (e.g., ETHEREUM, ARBITRUM) | 

### Return type

[**V1MetricInfo[]**](V1MetricInfo.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1ExternalmetricsExchangeHistoryGet"></a>
# **Invoke-V1ExternalmetricsExchangeHistoryGet**
> SystemCollectionsHashtable[] Invoke-V1ExternalmetricsExchangeHistoryGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MetricId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeStart] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeEnd] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeFormat] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PeriodId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Historical metrics for the exchange

Get exchange metrics history.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$MetricId = "MyMetricId" # String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
$ExchangeId = "MyExchangeId" # String | Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`)
$TimeStart = (Get-Date) # System.DateTime | Starting time in ISO 8601 (optional)
$TimeEnd = (Get-Date) # System.DateTime | Ending time in ISO 8601 (optional)
$TimeFormat = "MyTimeFormat" # String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional)
$PeriodId = "MyPeriodId" # String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` (optional)
$Limit = 56 # Int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

# Historical metrics for the exchange
try {
    $Result = Invoke-V1ExternalmetricsExchangeHistoryGet -MetricId $MetricId -ExchangeId $ExchangeId -TimeStart $TimeStart -TimeEnd $TimeEnd -TimeFormat $TimeFormat -PeriodId $PeriodId -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1ExternalmetricsExchangeHistoryGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MetricId** | **String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | 
 **ExchangeId** | **String**| Exchange identifier (e.g., &#x60;BINANCE&#x60;, &#x60;UNISWAP-V3-ETHEREUM&#x60;) | 
 **TimeStart** | **System.DateTime**| Starting time in ISO 8601 | [optional] 
 **TimeEnd** | **System.DateTime**| Ending time in ISO 8601 | [optional] 
 **TimeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **PeriodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] 
 **Limit** | **Int32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1ExternalmetricsExchangeListingGet"></a>
# **Invoke-V1ExternalmetricsExchangeListingGet**
> V1MetricInfo[] Invoke-V1ExternalmetricsExchangeListingGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>

Listing of metrics available for specific exchange

Get all metrics that are actually available for the specified exchange.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$ExchangeId = "MyExchangeId" # String | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)

# Listing of metrics available for specific exchange
try {
    $Result = Invoke-V1ExternalmetricsExchangeListingGet -ExchangeId $ExchangeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1ExternalmetricsExchangeListingGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExchangeId** | **String**| Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) | 

### Return type

[**V1MetricInfo[]**](V1MetricInfo.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1ExternalmetricsListingGet"></a>
# **Invoke-V1ExternalmetricsListingGet**
> V1MetricInfo[] Invoke-V1ExternalmetricsListingGet<br>

Listing of all supported metrics

Get all metrics available in the system.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"



# Listing of all supported metrics
try {
    $Result = Invoke-V1ExternalmetricsListingGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1ExternalmetricsListingGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1MetricInfo[]**](V1MetricInfo.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

