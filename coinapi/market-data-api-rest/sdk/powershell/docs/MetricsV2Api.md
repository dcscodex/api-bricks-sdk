# PSOpenAPITools.PSOpenAPITools\Api.MetricsV2Api

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V2MetricsAssetHistoryGet**](MetricsV2Api.md#Invoke-V2MetricsAssetHistoryGet) | **GET** /v2/metrics/asset/history | Historical metrics for the asset
[**Invoke-V2MetricsAssetListingGet**](MetricsV2Api.md#Invoke-V2MetricsAssetListingGet) | **GET** /v2/metrics/asset/listing | Listing of metrics available for specific asset
[**Invoke-V2MetricsChainHistoryGet**](MetricsV2Api.md#Invoke-V2MetricsChainHistoryGet) | **GET** /v2/metrics/chain/history | Historical metrics for the chain
[**Invoke-V2MetricsChainListingGet**](MetricsV2Api.md#Invoke-V2MetricsChainListingGet) | **GET** /v2/metrics/chain/listing | Listing of metrics available for specific chain
[**Invoke-V2MetricsExchangeHistoryGet**](MetricsV2Api.md#Invoke-V2MetricsExchangeHistoryGet) | **GET** /v2/metrics/exchange/history | Historical metrics for the exchange
[**Invoke-V2MetricsExchangeListingGet**](MetricsV2Api.md#Invoke-V2MetricsExchangeListingGet) | **GET** /v2/metrics/exchange/listing | Listing of metrics available for specific exchange
[**Invoke-V2MetricsListingGet**](MetricsV2Api.md#Invoke-V2MetricsListingGet) | **GET** /v2/metrics/listing | Listing of all supported metrics


<a id="Invoke-V2MetricsAssetHistoryGet"></a>
# **Invoke-V2MetricsAssetHistoryGet**
> SystemCollectionsHashtable[] Invoke-V2MetricsAssetHistoryGet<br>
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
    $Result = Invoke-V2MetricsAssetHistoryGet -MetricId $MetricId -AssetId $AssetId -TimeStart $TimeStart -TimeEnd $TimeEnd -TimeFormat $TimeFormat -PeriodId $PeriodId -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2MetricsAssetHistoryGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-V2MetricsAssetListingGet"></a>
# **Invoke-V2MetricsAssetListingGet**
> V1MetricInfo[] Invoke-V2MetricsAssetListingGet<br>
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
    $Result = Invoke-V2MetricsAssetListingGet -AssetId $AssetId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2MetricsAssetListingGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-V2MetricsChainHistoryGet"></a>
# **Invoke-V2MetricsChainHistoryGet**
> SystemCollectionsHashtable[] Invoke-V2MetricsChainHistoryGet<br>
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
    $Result = Invoke-V2MetricsChainHistoryGet -MetricId $MetricId -ChainId $ChainId -TimeStart $TimeStart -TimeEnd $TimeEnd -TimeFormat $TimeFormat -PeriodId $PeriodId -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2MetricsChainHistoryGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-V2MetricsChainListingGet"></a>
# **Invoke-V2MetricsChainListingGet**
> V1MetricInfo[] Invoke-V2MetricsChainListingGet<br>
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
    $Result = Invoke-V2MetricsChainListingGet -ChainId $ChainId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2MetricsChainListingGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-V2MetricsExchangeHistoryGet"></a>
# **Invoke-V2MetricsExchangeHistoryGet**
> SystemCollectionsHashtable[] Invoke-V2MetricsExchangeHistoryGet<br>
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
    $Result = Invoke-V2MetricsExchangeHistoryGet -MetricId $MetricId -ExchangeId $ExchangeId -TimeStart $TimeStart -TimeEnd $TimeEnd -TimeFormat $TimeFormat -PeriodId $PeriodId -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2MetricsExchangeHistoryGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-V2MetricsExchangeListingGet"></a>
# **Invoke-V2MetricsExchangeListingGet**
> V1MetricInfo[] Invoke-V2MetricsExchangeListingGet<br>
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
    $Result = Invoke-V2MetricsExchangeListingGet -ExchangeId $ExchangeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2MetricsExchangeListingGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-V2MetricsListingGet"></a>
# **Invoke-V2MetricsListingGet**
> V1MetricInfo[] Invoke-V2MetricsListingGet<br>

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
    $Result = Invoke-V2MetricsListingGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2MetricsListingGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

