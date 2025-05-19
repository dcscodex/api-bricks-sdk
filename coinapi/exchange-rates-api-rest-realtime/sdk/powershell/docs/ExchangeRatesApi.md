# PSOpenAPITools.PSOpenAPITools\Api.ExchangeRatesApi

All URIs are relative to *https://api-realtime.exrates.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-SpecificRate**](ExchangeRatesApi.md#Get-SpecificRate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
[**Invoke-V1ExchangerateAssetIdBaseGet**](ExchangeRatesApi.md#Invoke-V1ExchangerateAssetIdBaseGet) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates


<a id="Get-SpecificRate"></a>
# **Get-SpecificRate**
> V1ExchangeRate Get-SpecificRate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetIdBase] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetIdQuote] <String><br>

Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$AssetIdBase = "MyAssetIdBase" # String | Requested exchange rate base asset identifier (from the Metadata -> Assets)
$AssetIdQuote = "MyAssetIdQuote" # String | Requested exchange rate quote asset identifier (from the Metadata -> Assets)

# Get specific rate
try {
    $Result = Get-SpecificRate -AssetIdBase $AssetIdBase -AssetIdQuote $AssetIdQuote
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

### Return type

[**V1ExchangeRate**](V1ExchangeRate.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey)

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

Get all current rates

Get the current exchange rate between requested asset and all other assets.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::                :::info  You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC);  :::

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$AssetIdBase = "MyAssetIdBase" # String | Requested exchange rates base asset identifier (from the Metadata -> Assets)
$FilterAssetId = "MyFilterAssetId" # String | Comma or semicolon delimited asset identifiers used to filter response (optional) (optional)
$Invert = $true # Boolean | True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`) (optional) (default to $false)

# Get all current rates
try {
    $Result = Invoke-V1ExchangerateAssetIdBaseGet -AssetIdBase $AssetIdBase -FilterAssetId $FilterAssetId -Invert $Invert
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

### Return type

[**V1ExchangeRates**](V1ExchangeRates.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

