# PSOpenAPITools.PSOpenAPITools\Api.MetadataApi

All URIs are relative to *https://rest-api.indexes.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ApiMetadataExchangesExchangeIdGet**](MetadataApi.md#Invoke-ApiMetadataExchangesExchangeIdGet) | **GET** /api/metadata/exchanges/{exchange_id} | List all exchanges by exchange_id
[**Invoke-ApiMetadataExchangesGet**](MetadataApi.md#Invoke-ApiMetadataExchangesGet) | **GET** /api/metadata/exchanges | List all exchanges


<a id="Invoke-ApiMetadataExchangesExchangeIdGet"></a>
# **Invoke-ApiMetadataExchangesExchangeIdGet**
> MetadataExchange[] Invoke-ApiMetadataExchangesExchangeIdGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>

List all exchanges by exchange_id

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$ExchangeId = "MyExchangeId" # String | The ID of the exchange.

# List all exchanges by exchange_id
try {
    $Result = Invoke-ApiMetadataExchangesExchangeIdGet -ExchangeId $ExchangeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ApiMetadataExchangesExchangeIdGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExchangeId** | **String**| The ID of the exchange. | 

### Return type

[**MetadataExchange[]**](MetadataExchange.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ApiMetadataExchangesGet"></a>
# **Invoke-ApiMetadataExchangesGet**
> MetadataExchange[] Invoke-ApiMetadataExchangesGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterExchangeId] <String><br>

List all exchanges

Get a detailed list of exchanges provided by the system.                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$FilterExchangeId = "MyFilterExchangeId" # String | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`) (optional)

# List all exchanges
try {
    $Result = Invoke-ApiMetadataExchangesGet -FilterExchangeId $FilterExchangeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ApiMetadataExchangesGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterExchangeId** | **String**| Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional] 

### Return type

[**MetadataExchange[]**](MetadataExchange.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

