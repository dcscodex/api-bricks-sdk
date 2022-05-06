# PSOpenAPITools.PSOpenAPITools/Api.EndpointsApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Stop-points**](EndpointsApi.md#Stop-points) | **GET** /v1/endpoints | Get API endpoints


<a name="Stop-points"></a>
# **Stop-points**
> AccountEndpoint[] Stop-points<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterExchangeId] <String[]><br>

Get API endpoints

Get all API endpoints that the EMS API expose for your subscription.

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

$FilterExchangeId = "MyFilterExchangeId" # String[] | Exchange id (optional)

# Get API endpoints
try {
    $Result = Stop-points -FilterExchangeId $FilterExchangeId
} catch {
    Write-Host ("Exception occurred when calling Stop-points: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterExchangeId** | [**String[]**](String.md)| Exchange id | [optional] 

### Return type

[**AccountEndpoint[]**](AccountEndpoint.md) (PSCustomObject)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

