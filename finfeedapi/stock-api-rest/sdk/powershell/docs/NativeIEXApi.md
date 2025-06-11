# PSOpenAPITools.PSOpenAPITools\Api.NativeIEXApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1NativeIexAdminMessagesSymbolGet**](NativeIEXApi.md#Invoke-V1NativeIexAdminMessagesSymbolGet) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages
[**Invoke-V1NativeIexAdminSystemEventGet**](NativeIEXApi.md#Invoke-V1NativeIexAdminSystemEventGet) | **GET** /v1/native/iex/admin/system-event | Get System Events
[**Invoke-V1NativeIexLevel1QuoteSymbolGet**](NativeIEXApi.md#Invoke-V1NativeIexLevel1QuoteSymbolGet) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes
[**Invoke-V1NativeIexLevel2PriceLevelUpdateSymbolGet**](NativeIEXApi.md#Invoke-V1NativeIexLevel2PriceLevelUpdateSymbolGet) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book
[**Invoke-V1NativeIexLevel3OrderBookSymbolGet**](NativeIEXApi.md#Invoke-V1NativeIexLevel3OrderBookSymbolGet) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book
[**Invoke-V1NativeIexTradeSymbolGet**](NativeIEXApi.md#Invoke-V1NativeIexTradeSymbolGet) | **GET** /v1/native/iex/trade/{symbol} | Get Trades


<a id="Invoke-V1NativeIexAdminMessagesSymbolGet"></a>
# **Invoke-V1NativeIexAdminMessagesSymbolGet**
> AdminAdminMessageModel[] Invoke-V1NativeIexAdminMessagesSymbolGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Symbol] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Date] <System.DateTime><br>

Get Admin Messages

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$Symbol = "MySymbol" # String | The symbol identifier
$Date = (Get-Date) # System.DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

# Get Admin Messages
try {
    $Result = Invoke-V1NativeIexAdminMessagesSymbolGet -Symbol $Symbol -Date $Date
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1NativeIexAdminMessagesSymbolGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Symbol** | **String**| The symbol identifier | 
 **Date** | **System.DateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**AdminAdminMessageModel[]**](AdminAdminMessageModel.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1NativeIexAdminSystemEventGet"></a>
# **Invoke-V1NativeIexAdminSystemEventGet**
> AdminSystemEventModel[] Invoke-V1NativeIexAdminSystemEventGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Date] <System.DateTime><br>

Get System Events

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$Date = (Get-Date) # System.DateTime | Date in format YYYY-MM-DD

# Get System Events
try {
    $Result = Invoke-V1NativeIexAdminSystemEventGet -Date $Date
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1NativeIexAdminSystemEventGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Date** | **System.DateTime**| Date in format YYYY-MM-DD | 

### Return type

[**AdminSystemEventModel[]**](AdminSystemEventModel.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1NativeIexLevel1QuoteSymbolGet"></a>
# **Invoke-V1NativeIexLevel1QuoteSymbolGet**
> Level1QuoteUpdateModel[] Invoke-V1NativeIexLevel1QuoteSymbolGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Symbol] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Date] <System.DateTime><br>

Get Level-1 Quotes

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$Symbol = "MySymbol" # String | The symbol identifier
$Date = (Get-Date) # System.DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

# Get Level-1 Quotes
try {
    $Result = Invoke-V1NativeIexLevel1QuoteSymbolGet -Symbol $Symbol -Date $Date
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1NativeIexLevel1QuoteSymbolGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Symbol** | **String**| The symbol identifier | 
 **Date** | **System.DateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**Level1QuoteUpdateModel[]**](Level1QuoteUpdateModel.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1NativeIexLevel2PriceLevelUpdateSymbolGet"></a>
# **Invoke-V1NativeIexLevel2PriceLevelUpdateSymbolGet**
> Level2PriceLevelUpdateModel[] Invoke-V1NativeIexLevel2PriceLevelUpdateSymbolGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Symbol] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Date] <System.DateTime><br>

Get Level-2 Price Level Book

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$Symbol = "MySymbol" # String | The symbol identifier
$Date = (Get-Date) # System.DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

# Get Level-2 Price Level Book
try {
    $Result = Invoke-V1NativeIexLevel2PriceLevelUpdateSymbolGet -Symbol $Symbol -Date $Date
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1NativeIexLevel2PriceLevelUpdateSymbolGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Symbol** | **String**| The symbol identifier | 
 **Date** | **System.DateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**Level2PriceLevelUpdateModel[]**](Level2PriceLevelUpdateModel.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1NativeIexLevel3OrderBookSymbolGet"></a>
# **Invoke-V1NativeIexLevel3OrderBookSymbolGet**
> Level3OrderBookModel[] Invoke-V1NativeIexLevel3OrderBookSymbolGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Symbol] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Date] <System.DateTime><br>

Get Level-3 Order Book

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$Symbol = "MySymbol" # String | The symbol identifier
$Date = (Get-Date) # System.DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

# Get Level-3 Order Book
try {
    $Result = Invoke-V1NativeIexLevel3OrderBookSymbolGet -Symbol $Symbol -Date $Date
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1NativeIexLevel3OrderBookSymbolGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Symbol** | **String**| The symbol identifier | 
 **Date** | **System.DateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**Level3OrderBookModel[]**](Level3OrderBookModel.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1NativeIexTradeSymbolGet"></a>
# **Invoke-V1NativeIexTradeSymbolGet**
> TradeTradeModel[] Invoke-V1NativeIexTradeSymbolGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Symbol] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Date] <System.DateTime><br>

Get Trades

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: APIKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$Symbol = "MySymbol" # String | The symbol identifier
$Date = (Get-Date) # System.DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

# Get Trades
try {
    $Result = Invoke-V1NativeIexTradeSymbolGet -Symbol $Symbol -Date $Date
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1NativeIexTradeSymbolGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Symbol** | **String**| The symbol identifier | 
 **Date** | **System.DateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**TradeTradeModel[]**](TradeTradeModel.md) (PSCustomObject)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

