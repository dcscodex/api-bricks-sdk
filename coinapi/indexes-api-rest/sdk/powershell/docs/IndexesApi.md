# PSOpenAPITools.PSOpenAPITools\Api.IndexesApi

All URIs are relative to *https://rest-api.indexes.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1IndexdefInputDataIndexDefinitionIdAllGet**](IndexesApi.md#Invoke-V1IndexdefInputDataIndexDefinitionIdAllGet) | **GET** /v1/indexdef/input-data/{index_definition_id}/all | Returns all data inputs for a specific index definition
[**Invoke-V1IndexdefInputDataIndexDefinitionIdGet**](IndexesApi.md#Invoke-V1IndexdefInputDataIndexDefinitionIdGet) | **GET** /v1/indexdef/input-data/{index_definition_id} | Returns data inputs for certain index definition and time
[**Invoke-V1IndexdefMultiassetGet**](IndexesApi.md#Invoke-V1IndexdefMultiassetGet) | **GET** /v1/indexdef/multiasset | Get all multi-asset weights
[**Invoke-V1IndexdefMultiassetIndexIdGet**](IndexesApi.md#Invoke-V1IndexdefMultiassetIndexIdGet) | **GET** /v1/indexdef/multiasset/{index_id} | Get multi-asset weights for specific index
[**Invoke-V1IndexesGet**](IndexesApi.md#Invoke-V1IndexesGet) | **GET** /v1/indexes | List indexes
[**Invoke-V1IndexesIndexDefinitionIdCurrentSnapshotGet**](IndexesApi.md#Invoke-V1IndexesIndexDefinitionIdCurrentSnapshotGet) | **GET** /v1/indexes/{index_definition_id}/currentSnapshot | Current Index Values for index definition
[**Invoke-V1IndexesIndexDefinitionIdHistorySnapshotGet**](IndexesApi.md#Invoke-V1IndexesIndexDefinitionIdHistorySnapshotGet) | **GET** /v1/indexes/{index_definition_id}/historySnapshot | Historical Index Values for index definition
[**Invoke-V1IndexesIndexIdCurrentGet**](IndexesApi.md#Invoke-V1IndexesIndexIdCurrentGet) | **GET** /v1/indexes/{index_id}/current | Current Index Value
[**Invoke-V1IndexesIndexIdHistoryGet**](IndexesApi.md#Invoke-V1IndexesIndexIdHistoryGet) | **GET** /v1/indexes/{index_id}/history | Historical Index Value w/Composition
[**Invoke-V1IndexesIndexIdTimeseriesGet**](IndexesApi.md#Invoke-V1IndexesIndexIdTimeseriesGet) | **GET** /v1/indexes/{index_id}/timeseries | Timeseries Index Value


<a id="Invoke-V1IndexdefInputDataIndexDefinitionIdAllGet"></a>
# **Invoke-V1IndexdefInputDataIndexDefinitionIdAllGet**
> IndexesIndexDefinitionInputData[] Invoke-V1IndexdefInputDataIndexDefinitionIdAllGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IndexDefinitionId] <String><br>

Returns all data inputs for a specific index definition

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$IndexDefinitionId = "MyIndexDefinitionId" # String | 

# Returns all data inputs for a specific index definition
try {
    $Result = Invoke-V1IndexdefInputDataIndexDefinitionIdAllGet -IndexDefinitionId $IndexDefinitionId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1IndexdefInputDataIndexDefinitionIdAllGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IndexDefinitionId** | **String**|  | 

### Return type

[**IndexesIndexDefinitionInputData[]**](IndexesIndexDefinitionInputData.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1IndexdefInputDataIndexDefinitionIdGet"></a>
# **Invoke-V1IndexdefInputDataIndexDefinitionIdGet**
> IndexesIndexDefinitionSnapshotEntry[] Invoke-V1IndexdefInputDataIndexDefinitionIdGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IndexDefinitionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Time] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnabledOnly] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PendingOnly] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterAssetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WithStatusInfo] <System.Nullable[Boolean]><br>

Returns data inputs for certain index definition and time

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$IndexDefinitionId = "MyIndexDefinitionId" # String | 
$Time = (Get-Date) # System.DateTime |  (optional)
$EnabledOnly = $true # Boolean |  (optional) (default to $false)
$PendingOnly = $true # Boolean |  (optional) (default to $false)
$FilterAssetId = "MyFilterAssetId" # String |  (optional)
$WithStatusInfo = $true # Boolean |  (optional) (default to $false)

# Returns data inputs for certain index definition and time
try {
    $Result = Invoke-V1IndexdefInputDataIndexDefinitionIdGet -IndexDefinitionId $IndexDefinitionId -Time $Time -EnabledOnly $EnabledOnly -PendingOnly $PendingOnly -FilterAssetId $FilterAssetId -WithStatusInfo $WithStatusInfo
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1IndexdefInputDataIndexDefinitionIdGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IndexDefinitionId** | **String**|  | 
 **Time** | **System.DateTime**|  | [optional] 
 **EnabledOnly** | **Boolean**|  | [optional] [default to $false]
 **PendingOnly** | **Boolean**|  | [optional] [default to $false]
 **FilterAssetId** | **String**|  | [optional] 
 **WithStatusInfo** | **Boolean**|  | [optional] [default to $false]

### Return type

[**IndexesIndexDefinitionSnapshotEntry[]**](IndexesIndexDefinitionSnapshotEntry.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1IndexdefMultiassetGet"></a>
# **Invoke-V1IndexdefMultiassetGet**
> IndexesIndexMultiAssetWeight[] Invoke-V1IndexdefMultiassetGet<br>

Get all multi-asset weights

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"


# Get all multi-asset weights
try {
    $Result = Invoke-V1IndexdefMultiassetGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1IndexdefMultiassetGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**IndexesIndexMultiAssetWeight[]**](IndexesIndexMultiAssetWeight.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1IndexdefMultiassetIndexIdGet"></a>
# **Invoke-V1IndexdefMultiassetIndexIdGet**
> IndexesIndexMultiAssetWeight[] Invoke-V1IndexdefMultiassetIndexIdGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IndexId] <String><br>

Get multi-asset weights for specific index

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$IndexId = "MyIndexId" # String | 

# Get multi-asset weights for specific index
try {
    $Result = Invoke-V1IndexdefMultiassetIndexIdGet -IndexId $IndexId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1IndexdefMultiassetIndexIdGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IndexId** | **String**|  | 

### Return type

[**IndexesIndexMultiAssetWeight[]**](IndexesIndexMultiAssetWeight.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1IndexesGet"></a>
# **Invoke-V1IndexesGet**
> IndexesIndexIdentifier[] Invoke-V1IndexesGet<br>

List indexes

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"


# List indexes
try {
    $Result = Invoke-V1IndexesGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1IndexesGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**IndexesIndexIdentifier[]**](IndexesIndexIdentifier.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1IndexesIndexDefinitionIdCurrentSnapshotGet"></a>
# **Invoke-V1IndexesIndexDefinitionIdCurrentSnapshotGet**
> IndexesIndexDefinitionSnapshotEntry[] Invoke-V1IndexesIndexDefinitionIdCurrentSnapshotGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IndexDefinitionId] <String><br>

Current Index Values for index definition

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$IndexDefinitionId = "MyIndexDefinitionId" # String | 

# Current Index Values for index definition
try {
    $Result = Invoke-V1IndexesIndexDefinitionIdCurrentSnapshotGet -IndexDefinitionId $IndexDefinitionId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1IndexesIndexDefinitionIdCurrentSnapshotGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IndexDefinitionId** | **String**|  | 

### Return type

[**IndexesIndexDefinitionSnapshotEntry[]**](IndexesIndexDefinitionSnapshotEntry.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1IndexesIndexDefinitionIdHistorySnapshotGet"></a>
# **Invoke-V1IndexesIndexDefinitionIdHistorySnapshotGet**
> IndexesIndexDefinitionSnapshotEntry[] Invoke-V1IndexesIndexDefinitionIdHistorySnapshotGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IndexDefinitionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Time] <System.Nullable[System.DateTime]><br>

Historical Index Values for index definition

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$IndexDefinitionId = "MyIndexDefinitionId" # String | 
$Time = (Get-Date) # System.DateTime |  (optional)

# Historical Index Values for index definition
try {
    $Result = Invoke-V1IndexesIndexDefinitionIdHistorySnapshotGet -IndexDefinitionId $IndexDefinitionId -Time $Time
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1IndexesIndexDefinitionIdHistorySnapshotGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IndexDefinitionId** | **String**|  | 
 **Time** | **System.DateTime**|  | [optional] 

### Return type

[**IndexesIndexDefinitionSnapshotEntry[]**](IndexesIndexDefinitionSnapshotEntry.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1IndexesIndexIdCurrentGet"></a>
# **Invoke-V1IndexesIndexIdCurrentGet**
> IndexesIndexValue Invoke-V1IndexesIndexIdCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IndexId] <String><br>

Current Index Value

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$IndexId = "MyIndexId" # String | 

# Current Index Value
try {
    $Result = Invoke-V1IndexesIndexIdCurrentGet -IndexId $IndexId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1IndexesIndexIdCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IndexId** | **String**|  | 

### Return type

[**IndexesIndexValue**](IndexesIndexValue.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1IndexesIndexIdHistoryGet"></a>
# **Invoke-V1IndexesIndexIdHistoryGet**
> IndexesIndexValue[] Invoke-V1IndexesIndexIdHistoryGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IndexId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeStart] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeEnd] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Historical Index Value w/Composition

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$IndexId = "MyIndexId" # String | 
$TimeStart = (Get-Date) # System.DateTime |  (optional)
$TimeEnd = (Get-Date) # System.DateTime |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 100)

# Historical Index Value w/Composition
try {
    $Result = Invoke-V1IndexesIndexIdHistoryGet -IndexId $IndexId -TimeStart $TimeStart -TimeEnd $TimeEnd -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1IndexesIndexIdHistoryGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IndexId** | **String**|  | 
 **TimeStart** | **System.DateTime**|  | [optional] 
 **TimeEnd** | **System.DateTime**|  | [optional] 
 **Limit** | **Int32**|  | [optional] [default to 100]

### Return type

[**IndexesIndexValue[]**](IndexesIndexValue.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1IndexesIndexIdTimeseriesGet"></a>
# **Invoke-V1IndexesIndexIdTimeseriesGet**
> IndexesIndexTimeseriesItem[] Invoke-V1IndexesIndexIdTimeseriesGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IndexId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PeriodId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeStart] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeEnd] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Timeseries Index Value

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$IndexId = "MyIndexId" # String | 
$PeriodId = "MyPeriodId" # String | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
$TimeStart = "MyTimeStart" # String | Timeseries starting time in ISO 8601
$TimeEnd = "MyTimeEnd" # String | Timeseries ending time in ISO 8601
$Limit = 56 # Int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

# Timeseries Index Value
try {
    $Result = Invoke-V1IndexesIndexIdTimeseriesGet -IndexId $IndexId -PeriodId $PeriodId -TimeStart $TimeStart -TimeEnd $TimeEnd -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1IndexesIndexIdTimeseriesGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IndexId** | **String**|  | 
 **PeriodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) | 
 **TimeStart** | **String**| Timeseries starting time in ISO 8601 | 
 **TimeEnd** | **String**| Timeseries ending time in ISO 8601 | 
 **Limit** | **Int32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**IndexesIndexTimeseriesItem[]**](IndexesIndexTimeseriesItem.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

