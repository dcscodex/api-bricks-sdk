# PSOpenAPITools.PSOpenAPITools/Api.AccountApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DeleteAccount**](AccountApi.md#Invoke-DeleteAccount) | **DELETE** /v1/accounts | Delete account
[**Invoke-DeleteAccountAll**](AccountApi.md#Invoke-DeleteAccountAll) | **DELETE** /v1/accounts/all | Delete all accounts
[**Get-Account**](AccountApi.md#Get-Account) | **GET** /v1/accounts | Get accounts
[**Invoke-PersistAccount**](AccountApi.md#Invoke-PersistAccount) | **POST** /v1/accounts | Add or update account


<a name="Invoke-DeleteAccount"></a>
# **Invoke-DeleteAccount**
> void Invoke-DeleteAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String[]><br>

Delete account

Delete specific exchange account maintained by the EMS API for your subscription.

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

$ExchangeId = "MyExchangeId" # String[] | Exchange identifier of the account to delete

# Delete account
try {
    $Result = Invoke-DeleteAccount -ExchangeId $ExchangeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExchangeId** | [**String[]**](String.md)| Exchange identifier of the account to delete | 

### Return type

void (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteAccountAll"></a>
# **Invoke-DeleteAccountAll**
> void Invoke-DeleteAccountAll<br>

Delete all accounts

Delete all exchange accounts maintained by the EMS API for your subscription.

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


# Delete all accounts
try {
    $Result = Invoke-DeleteAccountAll
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteAccountAll: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Account"></a>
# **Get-Account**
> GetAccount[] Get-Account<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterExchangeId] <String[]><br>

Get accounts

Get all accounts maintained for your subscription in the EMS API.

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

$FilterExchangeId = "MyFilterExchangeId" # String[] | Exchange id of the specific account to provide single account instead of the list of all accounts (optional)

# Get accounts
try {
    $Result = Get-Account -FilterExchangeId $FilterExchangeId
} catch {
    Write-Host ("Exception occurred when calling Get-Account: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterExchangeId** | [**String[]**](String.md)| Exchange id of the specific account to provide single account instead of the list of all accounts | [optional] 

### Return type

[**GetAccount[]**](GetAccount.md) (PSCustomObject)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-PersistAccount"></a>
# **Invoke-PersistAccount**
> void Invoke-PersistAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Add or update account

Add new or update existing exchange account for your subscription in the EMS API.

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

$KeyValue = Initialize-KeyValue -Key "MyKey" -Value "MyValue"
$AccountData = Initialize-AccountData -ExchangeId "MyExchangeId" -Parameters $KeyValue # AccountData | Exchange account object that needs to be add/update to the EMS

# Add or update account
try {
    $Result = Invoke-PersistAccount -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-PersistAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**AccountData**](AccountData.md)| Exchange account object that needs to be add/update to the EMS | 

### Return type

void (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

