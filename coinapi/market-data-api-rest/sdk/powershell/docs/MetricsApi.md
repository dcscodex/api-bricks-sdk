# PSOpenAPITools.PSOpenAPITools\Api.MetricsApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1MetricsAssetCurrentGet**](MetricsApi.md#Invoke-V1MetricsAssetCurrentGet) | **GET** /v1/metrics/asset/current | Current metrics for given asset
[**Invoke-V1MetricsAssetHistoryGet**](MetricsApi.md#Invoke-V1MetricsAssetHistoryGet) | **GET** /v1/metrics/asset/history | Historical metrics for asset
[**Invoke-V1MetricsAssetListingGet**](MetricsApi.md#Invoke-V1MetricsAssetListingGet) | **GET** /v1/metrics/asset/listing | Listing of all supported metrics for asset
[**Invoke-V1MetricsExchangeCurrentGet**](MetricsApi.md#Invoke-V1MetricsExchangeCurrentGet) | **GET** /v1/metrics/exchange/current | Current metrics for given exchange
[**Invoke-V1MetricsExchangeHistoryGet**](MetricsApi.md#Invoke-V1MetricsExchangeHistoryGet) | **GET** /v1/metrics/exchange/history | Historical metrics for the exchange
[**Invoke-V1MetricsExchangeListingGet**](MetricsApi.md#Invoke-V1MetricsExchangeListingGet) | **GET** /v1/metrics/exchange/listing | Listing of all supported exchange metrics
[**Invoke-V1MetricsListingGet**](MetricsApi.md#Invoke-V1MetricsListingGet) | **GET** /v1/metrics/listing | Listing of all supported metrics by CoinAPI
[**Invoke-V1MetricsSymbolCurrentGet**](MetricsApi.md#Invoke-V1MetricsSymbolCurrentGet) | **GET** /v1/metrics/symbol/current | Current metrics for given symbol
[**Invoke-V1MetricsSymbolHistoryGet**](MetricsApi.md#Invoke-V1MetricsSymbolHistoryGet) | **GET** /v1/metrics/symbol/history | Historical metrics for symbol
[**Invoke-V1MetricsSymbolListingGet**](MetricsApi.md#Invoke-V1MetricsSymbolListingGet) | **GET** /v1/metrics/symbol/listing | Listing of all supported metrics for symbol


<a id="Invoke-V1MetricsAssetCurrentGet"></a>
# **Invoke-V1MetricsAssetCurrentGet**
> V1GeneralData[] Invoke-V1MetricsAssetCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MetricId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetIdExternal] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>

Current metrics for given asset

Get current asset metrics.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$MetricId = "MyMetricId" # String | Metric identifier (from the Metrics -> Listing) (optional)
$AssetId = "MyAssetId" # String | Asset identifier (from the Metadata -> Assets) (optional)
$AssetIdExternal = "MyAssetIdExternal" # String | Exchange asset identifier (optional)
$ExchangeId = "MyExchangeId" # String | Exchange identifier (from the Metadata -> Exchanges) (optional)

# Current metrics for given asset
try {
    $Result = Invoke-V1MetricsAssetCurrentGet -MetricId $MetricId -AssetId $AssetId -AssetIdExternal $AssetIdExternal -ExchangeId $ExchangeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1MetricsAssetCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MetricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | [optional] 
 **AssetId** | **String**| Asset identifier (from the Metadata -&gt; Assets) | [optional] 
 **AssetIdExternal** | **String**| Exchange asset identifier | [optional] 
 **ExchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] 

### Return type

[**V1GeneralData[]**](V1GeneralData.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1MetricsAssetHistoryGet"></a>
# **Invoke-V1MetricsAssetHistoryGet**
> V1MetricData[] Invoke-V1MetricsAssetHistoryGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MetricId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetIdExternal] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeStart] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeEnd] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeFormat] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PeriodId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Historical metrics for asset

Get asset metrics history.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$MetricId = "MyMetricId" # String | Metric identifier (from the Metrics -> Listing)
$ExchangeId = "MyExchangeId" # String | Exchange identifier (from the Metadata -> Exchanges)
$AssetId = "MyAssetId" # String | Asset identifier (from the Metadata -> Assets) (optional)
$AssetIdExternal = "MyAssetIdExternal" # String | Exchange asset identifier (optional)
$TimeStart = (Get-Date) # System.DateTime | Starting time in ISO 8601 (optional)
$TimeEnd = (Get-Date) # System.DateTime | Ending time in ISO 8601 (optional)
$TimeFormat = "MyTimeFormat" # String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional)
$PeriodId = "MyPeriodId" # String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC` (optional)
$Limit = 56 # Int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

# Historical metrics for asset
try {
    $Result = Invoke-V1MetricsAssetHistoryGet -MetricId $MetricId -ExchangeId $ExchangeId -AssetId $AssetId -AssetIdExternal $AssetIdExternal -TimeStart $TimeStart -TimeEnd $TimeEnd -TimeFormat $TimeFormat -PeriodId $PeriodId -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1MetricsAssetHistoryGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MetricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | 
 **ExchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | 
 **AssetId** | **String**| Asset identifier (from the Metadata -&gt; Assets) | [optional] 
 **AssetIdExternal** | **String**| Exchange asset identifier | [optional] 
 **TimeStart** | **System.DateTime**| Starting time in ISO 8601 | [optional] 
 **TimeEnd** | **System.DateTime**| Ending time in ISO 8601 | [optional] 
 **TimeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **PeriodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] 
 **Limit** | **Int32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**V1MetricData[]**](V1MetricData.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1MetricsAssetListingGet"></a>
# **Invoke-V1MetricsAssetListingGet**
> V1ListingItem[] Invoke-V1MetricsAssetListingGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MetricId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NetworkId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetIdExternal] <String><br>

Listing of all supported metrics for asset

Get data metrics for asset.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$MetricId = "MyMetricId" # String | Metric identifier (from the Metrics -> Listing) (optional)
$ExchangeId = "MyExchangeId" # String | Exchange identifier (from the Metadata -> Exchanges) (optional)
$ChainId = "MyChainId" # String | Chain identifier (optional)
$NetworkId = "MyNetworkId" # String | Network identifier (optional)
$AssetId = "MyAssetId" # String | Asset identifier (from the Metadata -> Assets) (optional)
$AssetIdExternal = "MyAssetIdExternal" # String | The asset external identifier (optional)

# Listing of all supported metrics for asset
try {
    $Result = Invoke-V1MetricsAssetListingGet -MetricId $MetricId -ExchangeId $ExchangeId -ChainId $ChainId -NetworkId $NetworkId -AssetId $AssetId -AssetIdExternal $AssetIdExternal
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1MetricsAssetListingGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MetricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | [optional] 
 **ExchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] 
 **ChainId** | **String**| Chain identifier | [optional] 
 **NetworkId** | **String**| Network identifier | [optional] 
 **AssetId** | **String**| Asset identifier (from the Metadata -&gt; Assets) | [optional] 
 **AssetIdExternal** | **String**| The asset external identifier | [optional] 

### Return type

[**V1ListingItem[]**](V1ListingItem.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1MetricsExchangeCurrentGet"></a>
# **Invoke-V1MetricsExchangeCurrentGet**
> V1GeneralData[] Invoke-V1MetricsExchangeCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MetricId] <String><br>

Current metrics for given exchange

Get current exchange metrics values.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$ExchangeId = "MyExchangeId" # String | The exchange identifier (from the Metadata -> Exchanges)
$MetricId = "MyMetricId" # String | The metric identifier (from the Metrics -> Listing) (optional)

# Current metrics for given exchange
try {
    $Result = Invoke-V1MetricsExchangeCurrentGet -ExchangeId $ExchangeId -MetricId $MetricId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1MetricsExchangeCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExchangeId** | **String**| The exchange identifier (from the Metadata -&gt; Exchanges) | 
 **MetricId** | **String**| The metric identifier (from the Metrics -&gt; Listing) | [optional] 

### Return type

[**V1GeneralData[]**](V1GeneralData.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1MetricsExchangeHistoryGet"></a>
# **Invoke-V1MetricsExchangeHistoryGet**
> V1MetricData[] Invoke-V1MetricsExchangeHistoryGet<br>
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
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$MetricId = "MyMetricId" # String | Metric identifier (from the Metrics -> Listing)
$ExchangeId = "MyExchangeId" # String | Exchange identifier (from the Metadata -> Exchanges)
$TimeStart = (Get-Date) # System.DateTime | Starting time in ISO 8601 (optional)
$TimeEnd = (Get-Date) # System.DateTime | Ending time in ISO 8601 (optional)
$TimeFormat = "MyTimeFormat" # String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional)
$PeriodId = "MyPeriodId" # String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC` (optional)
$Limit = 56 # Int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

# Historical metrics for the exchange
try {
    $Result = Invoke-V1MetricsExchangeHistoryGet -MetricId $MetricId -ExchangeId $ExchangeId -TimeStart $TimeStart -TimeEnd $TimeEnd -TimeFormat $TimeFormat -PeriodId $PeriodId -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1MetricsExchangeHistoryGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MetricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | 
 **ExchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | 
 **TimeStart** | **System.DateTime**| Starting time in ISO 8601 | [optional] 
 **TimeEnd** | **System.DateTime**| Ending time in ISO 8601 | [optional] 
 **TimeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **PeriodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] 
 **Limit** | **Int32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**V1MetricData[]**](V1MetricData.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1MetricsExchangeListingGet"></a>
# **Invoke-V1MetricsExchangeListingGet**
> V1ListingItem[] Invoke-V1MetricsExchangeListingGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MetricId] <String><br>

Listing of all supported exchange metrics

Get data metrics for exchange.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$ExchangeId = "MyExchangeId" # String | The exchange identifier (from the Metadata -> Exchanges)
$MetricId = "MyMetricId" # String | The metric identifier (from the Metrics -> Listing) (optional)

# Listing of all supported exchange metrics
try {
    $Result = Invoke-V1MetricsExchangeListingGet -ExchangeId $ExchangeId -MetricId $MetricId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1MetricsExchangeListingGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExchangeId** | **String**| The exchange identifier (from the Metadata -&gt; Exchanges) | 
 **MetricId** | **String**| The metric identifier (from the Metrics -&gt; Listing) | [optional] 

### Return type

[**V1ListingItem[]**](V1ListingItem.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1MetricsListingGet"></a>
# **Invoke-V1MetricsListingGet**
> V1Metric[] Invoke-V1MetricsListingGet<br>

Listing of all supported metrics by CoinAPI

Get all data metrics.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"


# Listing of all supported metrics by CoinAPI
try {
    $Result = Invoke-V1MetricsListingGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1MetricsListingGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1Metric[]**](V1Metric.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1MetricsSymbolCurrentGet"></a>
# **Invoke-V1MetricsSymbolCurrentGet**
> V1GeneralData[] Invoke-V1MetricsSymbolCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MetricId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SymbolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>

Current metrics for given symbol

Get current symbol metrics.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$MetricId = "MyMetricId" # String | Metric identifier (from the Metrics -> Listing) (optional)
$SymbolId = "MySymbolId" # String | Symbol identifier (from the Metadata -> Symbols) (optional)
$ExchangeId = "MyExchangeId" # String | Exchange id (from the Metadata -> Exchanges) (optional)

# Current metrics for given symbol
try {
    $Result = Invoke-V1MetricsSymbolCurrentGet -MetricId $MetricId -SymbolId $SymbolId -ExchangeId $ExchangeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1MetricsSymbolCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MetricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | [optional] 
 **SymbolId** | **String**| Symbol identifier (from the Metadata -&gt; Symbols) | [optional] 
 **ExchangeId** | **String**| Exchange id (from the Metadata -&gt; Exchanges) | [optional] 

### Return type

[**V1GeneralData[]**](V1GeneralData.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1MetricsSymbolHistoryGet"></a>
# **Invoke-V1MetricsSymbolHistoryGet**
> V1MetricData[] Invoke-V1MetricsSymbolHistoryGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MetricId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SymbolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeStart] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeEnd] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeFormat] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PeriodId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Historical metrics for symbol

Get symbol metrics history.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$MetricId = "MyMetricId" # String | Metric identifier (from the Metrics -> Listing)
$SymbolId = "MySymbolId" # String | Symbol identifier (from the Metadata -> Symbols)
$TimeStart = (Get-Date) # System.DateTime | Starting time in ISO 8601 (optional)
$TimeEnd = (Get-Date) # System.DateTime | Ending time in ISO 8601 (optional)
$TimeFormat = "MyTimeFormat" # String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (optional)
$PeriodId = "MyPeriodId" # String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC` (optional)
$Limit = 56 # Int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

# Historical metrics for symbol
try {
    $Result = Invoke-V1MetricsSymbolHistoryGet -MetricId $MetricId -SymbolId $SymbolId -TimeStart $TimeStart -TimeEnd $TimeEnd -TimeFormat $TimeFormat -PeriodId $PeriodId -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1MetricsSymbolHistoryGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MetricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | 
 **SymbolId** | **String**| Symbol identifier (from the Metadata -&gt; Symbols) | 
 **TimeStart** | **System.DateTime**| Starting time in ISO 8601 | [optional] 
 **TimeEnd** | **System.DateTime**| Ending time in ISO 8601 | [optional] 
 **TimeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **PeriodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] 
 **Limit** | **Int32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**V1MetricData[]**](V1MetricData.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1MetricsSymbolListingGet"></a>
# **Invoke-V1MetricsSymbolListingGet**
> V1ListingItem[] Invoke-V1MetricsSymbolListingGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MetricId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SymbolId] <String><br>

Listing of all supported metrics for symbol

Get data metrics for symbol.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$MetricId = "MyMetricId" # String | Metric identifier (from the Metrics -> Listing) (optional)
$ExchangeId = "MyExchangeId" # String | Exchange identifier (from the Metadata -> Exchanges) (optional)
$SymbolId = "MySymbolId" # String | Symbol identifier (from the Metadata -> Symbols) (optional)

# Listing of all supported metrics for symbol
try {
    $Result = Invoke-V1MetricsSymbolListingGet -MetricId $MetricId -ExchangeId $ExchangeId -SymbolId $SymbolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1MetricsSymbolListingGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MetricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | [optional] 
 **ExchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] 
 **SymbolId** | **String**| Symbol identifier (from the Metadata -&gt; Symbols) | [optional] 

### Return type

[**V1ListingItem[]**](V1ListingItem.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

