# PSOpenAPITools.PSOpenAPITools\Api.ExchangeRatesApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-SpecificRate**](ExchangeRatesApi.md#Get-SpecificRate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
[**Invoke-V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet**](ExchangeRatesApi.md#Invoke-V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote}/history | Timeseries data
[**Invoke-V1ExchangerateAssetIdBaseGet**](ExchangeRatesApi.md#Invoke-V1ExchangerateAssetIdBaseGet) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates
[**Invoke-V1ExchangerateHistoryPeriodsGet**](ExchangeRatesApi.md#Invoke-V1ExchangerateHistoryPeriodsGet) | **GET** /v1/exchangerate/history/periods | Timeseries periods


<a id="Get-SpecificRate"></a>
# **Get-SpecificRate**
> V1ExchangeRate Get-SpecificRate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetIdBase] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetIdQuote] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Time] <String><br>

Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$AssetIdBase = "MyAssetIdBase" # String | Requested exchange rate base asset identifier (from the Metadata -> Assets)
$AssetIdQuote = "MyAssetIdQuote" # String | Requested exchange rate quote asset identifier (from the Metadata -> Assets)
$Time = "MyTime" # String | Time at which exchange rate is calculated (optional, if not supplied then current rate is returned) (optional)

# Get specific rate
try {
    $Result = Get-SpecificRate -AssetIdBase $AssetIdBase -AssetIdQuote $AssetIdQuote -Time $Time
} catch {
    Write-Host ("Exception occurred when calling Get-SpecificRate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AssetIdBase** | **String**| Requested exchange rate base asset identifier (from the Metadata -&gt; Assets) | 
 **AssetIdQuote** | **String**| Requested exchange rate quote asset identifier (from the Metadata -&gt; Assets) | 
 **Time** | **String**| Time at which exchange rate is calculated (optional, if not supplied then current rate is returned) | [optional] 

### Return type

[**V1ExchangeRate**](V1ExchangeRate.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet"></a>
# **Invoke-V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet**
> V1ExchangeRatesTimeseriesItem[] Invoke-V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetIdBase] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetIdQuote] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PeriodId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeStart] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeEnd] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Timeseries data

Get the historical exchange rates between two assets in the form of the timeseries.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$AssetIdBase = "MyAssetIdBase" # String | Requested exchange rates base asset identifier (from the Metadata -> Assets)
$AssetIdQuote = "MyAssetIdQuote" # String | Requested exchange rates base asset identifier (from the Metadata -> Assets)
$PeriodId = "MyPeriodId" # String | Identifier of requested timeseries period (required, e.g. `5SEC` or `1HRS`) (optional)
$TimeStart = "MyTimeStart" # String | Timeseries starting time in ISO 8601 (required) (optional)
$TimeEnd = "MyTimeEnd" # String | Timeseries ending time in ISO 8601 (required) (optional)
$Limit = 56 # Int32 | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

# Timeseries data
try {
    $Result = Invoke-V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet -AssetIdBase $AssetIdBase -AssetIdQuote $AssetIdQuote -PeriodId $PeriodId -TimeStart $TimeStart -TimeEnd $TimeEnd -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AssetIdBase** | **String**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | 
 **AssetIdQuote** | **String**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | 
 **PeriodId** | **String**| Identifier of requested timeseries period (required, e.g. &#x60;5SEC&#x60; or &#x60;1HRS&#x60;) | [optional] 
 **TimeStart** | **String**| Timeseries starting time in ISO 8601 (required) | [optional] 
 **TimeEnd** | **String**| Timeseries ending time in ISO 8601 (required) | [optional] 
 **Limit** | **Int32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**V1ExchangeRatesTimeseriesItem[]**](V1ExchangeRatesTimeseriesItem.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1ExchangerateAssetIdBaseGet"></a>
# **Invoke-V1ExchangerateAssetIdBaseGet**
> V1ExchangeRates Invoke-V1ExchangerateAssetIdBaseGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetIdBase] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterAssetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Invert] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Time] <String><br>

Get all current rates

Get the current exchange rate between requested asset and all other assets.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::                :::info  You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC);  :::

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$AssetIdBase = "MyAssetIdBase" # String | Requested exchange rates base asset identifier (from the Metadata -> Assets)
$FilterAssetId = "MyFilterAssetId" # String | Comma or semicolon delimited asset identifiers used to filter response (optional) (optional)
$Invert = $true # Boolean | True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`) (optional) (default to $false)
$Time = "MyTime" # String | Time for historical rates (optional) (optional)

# Get all current rates
try {
    $Result = Invoke-V1ExchangerateAssetIdBaseGet -AssetIdBase $AssetIdBase -FilterAssetId $FilterAssetId -Invert $Invert -Time $Time
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1ExchangerateAssetIdBaseGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AssetIdBase** | **String**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | 
 **FilterAssetId** | **String**| Comma or semicolon delimited asset identifiers used to filter response (optional) | [optional] 
 **Invert** | **Boolean**| True will invert all the rates (optional, if true then rates will be calculated as &#x60;rate &#x3D; 1 / actual_rate&#x60; eg. &#x60;USD/BTC&#x60; as &#x60;BTC/USD&#x60;) | [optional] [default to $false]
 **Time** | **String**| Time for historical rates (optional) | [optional] 

### Return type

[**V1ExchangeRates**](V1ExchangeRates.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1ExchangerateHistoryPeriodsGet"></a>
# **Invoke-V1ExchangerateHistoryPeriodsGet**
> V1TimeseriesPeriod[] Invoke-V1ExchangerateHistoryPeriodsGet<br>

Timeseries periods

You can also obtain historical exchange rates of any asset pair, grouped into time periods.  Get full list of supported time periods available for requesting exchange rates historical timeseries data.                ## Timeseries periods  Time unit | Period identifiers  --- | ---  Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC  Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN  Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS  Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"


# Timeseries periods
try {
    $Result = Invoke-V1ExchangerateHistoryPeriodsGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1ExchangerateHistoryPeriodsGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1TimeseriesPeriod[]**](V1TimeseriesPeriod.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

