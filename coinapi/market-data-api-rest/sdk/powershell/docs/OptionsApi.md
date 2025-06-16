# PSOpenAPITools.PSOpenAPITools\Api.OptionsApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1OptionsExchangeIdCurrentGet**](OptionsApi.md#Invoke-V1OptionsExchangeIdCurrentGet) | **GET** /v1/options/{exchange_id}/current | Current data by Exchange


<a id="Invoke-V1OptionsExchangeIdCurrentGet"></a>
# **Invoke-V1OptionsExchangeIdCurrentGet**
> OptionsOptionExchangeGroup[] Invoke-V1OptionsExchangeIdCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>

Current data by Exchange

Get current options data for a specific exchange.  Returns option data grouped by underlying asset, quote currency, and expiration time, with quotes for both calls and puts at each strike price.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$ExchangeId = "MyExchangeId" # String | Exchange identifier (from the Metadata -> Exchanges)

# Current data by Exchange
try {
    $Result = Invoke-V1OptionsExchangeIdCurrentGet -ExchangeId $ExchangeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1OptionsExchangeIdCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | 

### Return type

[**OptionsOptionExchangeGroup[]**](OptionsOptionExchangeGroup.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

