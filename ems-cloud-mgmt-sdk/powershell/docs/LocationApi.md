# PSOpenAPITools.PSOpenAPITools/Api.LocationApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-Locations**](LocationApi.md#Invoke-Locations) | **GET** /v1/locations | Get site locations


<a name="Invoke-Locations"></a>
# **Invoke-Locations**
> Locations[] Invoke-Locations<br>

Get site locations

This endpoint providing information about the server site locations supported in the EMS API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKeyHeader
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

# Configure API key authorization: APIKeyQueryParam
$Configuration.ApiKey.apikey = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.apikey = "Bearer"


# Get site locations
try {
    $Result = Invoke-Locations
} catch {
    Write-Host ("Exception occurred when calling Invoke-Locations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Locations[]**](Locations.md) (PSCustomObject)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

