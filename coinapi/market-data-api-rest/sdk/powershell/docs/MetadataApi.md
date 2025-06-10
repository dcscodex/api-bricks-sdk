# PSOpenAPITools.PSOpenAPITools\Api.MetadataApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1AssetsAssetIdGet**](MetadataApi.md#Invoke-V1AssetsAssetIdGet) | **GET** /v1/assets/{asset_id} | List all assets by asset ID
[**Invoke-V1AssetsGet**](MetadataApi.md#Invoke-V1AssetsGet) | **GET** /v1/assets | List all assets
[**Invoke-V1AssetsIconsSizeGet**](MetadataApi.md#Invoke-V1AssetsIconsSizeGet) | **GET** /v1/assets/icons/{size} | List all asset icons
[**Invoke-V1ExchangesExchangeIdGet**](MetadataApi.md#Invoke-V1ExchangesExchangeIdGet) | **GET** /v1/exchanges/{exchange_id} | List all exchanges by exchange_id
[**Invoke-V1ExchangesGet**](MetadataApi.md#Invoke-V1ExchangesGet) | **GET** /v1/exchanges | List all exchanges
[**Invoke-V1ExchangesIconsSizeGet**](MetadataApi.md#Invoke-V1ExchangesIconsSizeGet) | **GET** /v1/exchanges/icons/{size} | List of icons for the exchanges
[**Invoke-V1SymbolsExchangeIdGet**](MetadataApi.md#Invoke-V1SymbolsExchangeIdGet) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange
[**Invoke-V1SymbolsGet**](MetadataApi.md#Invoke-V1SymbolsGet) | **GET** /v1/symbols | List all symbols
[**Invoke-V1SymbolsMapExchangeIdGet**](MetadataApi.md#Invoke-V1SymbolsMapExchangeIdGet) | **GET** /v1/symbols/map/{exchange_id} | List symbol mapping for the exchange


<a id="Invoke-V1AssetsAssetIdGet"></a>
# **Invoke-V1AssetsAssetIdGet**
> V1Asset[] Invoke-V1AssetsAssetIdGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetId] <String><br>

List all assets by asset ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$AssetId = "MyAssetId" # String | The asset ID.

# List all assets by asset ID
try {
    $Result = Invoke-V1AssetsAssetIdGet -AssetId $AssetId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1AssetsAssetIdGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AssetId** | **String**| The asset ID. | 

### Return type

[**V1Asset[]**](V1Asset.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1AssetsGet"></a>
# **Invoke-V1AssetsGet**
> V1Asset[] Invoke-V1AssetsGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterAssetId] <String><br>

List all assets

Retrieves all assets.                :::info  Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).  :::                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$FilterAssetId = "MyFilterAssetId" # String | Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`). (optional)

# List all assets
try {
    $Result = Invoke-V1AssetsGet -FilterAssetId $FilterAssetId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1AssetsGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterAssetId** | **String**| Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. &#x60;BTC;ETH&#x60;). | [optional] 

### Return type

[**V1Asset[]**](V1Asset.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1AssetsIconsSizeGet"></a>
# **Invoke-V1AssetsIconsSizeGet**
> V1Icon[] Invoke-V1AssetsIconsSizeGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <Int32><br>

List all asset icons

Gets the list of icons (of the given size) for all the assets.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$Size = 56 # Int32 | The size of the icons.

# List all asset icons
try {
    $Result = Invoke-V1AssetsIconsSizeGet -Size $Size
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1AssetsIconsSizeGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Size** | **Int32**| The size of the icons. | 

### Return type

[**V1Icon[]**](V1Icon.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1ExchangesExchangeIdGet"></a>
# **Invoke-V1ExchangesExchangeIdGet**
> V1Exchange[] Invoke-V1ExchangesExchangeIdGet<br>
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
    $Result = Invoke-V1ExchangesExchangeIdGet -ExchangeId $ExchangeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1ExchangesExchangeIdGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExchangeId** | **String**| The ID of the exchange. | 

### Return type

[**V1Exchange[]**](V1Exchange.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1ExchangesGet"></a>
# **Invoke-V1ExchangesGet**
> V1Exchange[] Invoke-V1ExchangesGet<br>
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
    $Result = Invoke-V1ExchangesGet -FilterExchangeId $FilterExchangeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1ExchangesGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterExchangeId** | **String**| Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional] 

### Return type

[**V1Exchange[]**](V1Exchange.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1ExchangesIconsSizeGet"></a>
# **Invoke-V1ExchangesIconsSizeGet**
> V1Icon[] Invoke-V1ExchangesIconsSizeGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <Int32><br>

List of icons for the exchanges

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$Size = 56 # Int32 | The size of the icons.

# List of icons for the exchanges
try {
    $Result = Invoke-V1ExchangesIconsSizeGet -Size $Size
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1ExchangesIconsSizeGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Size** | **Int32**| The size of the icons. | 

### Return type

[**V1Icon[]**](V1Icon.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1SymbolsExchangeIdGet"></a>
# **Invoke-V1SymbolsExchangeIdGet**
> V1Symbol[] Invoke-V1SymbolsExchangeIdGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterSymbolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterAssetId] <String><br>

List of symbols for the exchange

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$ExchangeId = "MyExchangeId" # String | The ID of the exchange (from the Metadata -> Exchanges)
$FilterSymbolId = "MyFilterSymbolId" # String | The filter for symbol ID. (optional)
$FilterAssetId = "MyFilterAssetId" # String | The filter for asset ID. (optional)

# List of symbols for the exchange
try {
    $Result = Invoke-V1SymbolsExchangeIdGet -ExchangeId $ExchangeId -FilterSymbolId $FilterSymbolId -FilterAssetId $FilterAssetId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1SymbolsExchangeIdGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExchangeId** | **String**| The ID of the exchange (from the Metadata -&gt; Exchanges) | 
 **FilterSymbolId** | **String**| The filter for symbol ID. | [optional] 
 **FilterAssetId** | **String**| The filter for asset ID. | [optional] 

### Return type

[**V1Symbol[]**](V1Symbol.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1SymbolsGet"></a>
# **Invoke-V1SymbolsGet**
> V1Symbol[] Invoke-V1SymbolsGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterSymbolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterExchangeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterAssetId] <String><br>

List all symbols

Retrieves all symbols with optional filtering.                :::info  ""price_precision"" and ""size_precision"" are data precisions and are not always the same precisions used for trading eg. for the ""BINANCE"" exchanges.  :::                :::info  You should not assume that the market data will be always within the resolution provided by the ""price_precision"" and ""size_precision"". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately.  :::                ### Symbol identifier                Our symbol identifier is created using a pattern that depends on symbol type.                Type | `symbol_id` pattern  --------- | ---------  SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}`  FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}`  OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}`  PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}`  INDEX | `{exchange_id}_IDX_{index_id}`  CREDIT | `{exchange_id}_CRE_{asset_id_base}`  CONTACT  | `{exchange_id}_COT_{contract_id}`                :::info  In the unlikely event when the ""symbol_id"" for more than one market is the same. We will append the additional term (prefixed with the ""_"") at the end of the duplicated identifiers to differentiate them.  :::info                ### Symbol types list (enumeration of `symbol_type` output variable)                Type | Name | Description  -------- | - | -----------  SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)*  FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time  OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date  PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time  INDEX | Index | Statistical composite that measures changes in the economy or markets.  CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate.  CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)*                ### Additional output variables for `symbol_type = INDEX`                Variable | Description  --------- | -----------  index_id | Index identifier  index_display_name | Human readable name of the index *(optional)*  index_display_description | Description of the index *(optional)*                ### Additional output variables for `symbol_type = FUTURES`                Variable | Description  --------- | -----------  future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601  future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)*  future_contract_unit_asset | Identifier of the asset used to denominate the contract unit                ### Additional output variables for `symbol_type = PERPETUAL`                Variable | Description  --------- | -----------  future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)*  future_contract_unit_asset | Identifier of the asset used to denominate the contract unit                ### Additional output variables for `symbol_type = OPTION`                Variable | Description  --------- | -----------  option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options  option_strike_price | Price at which option contract can be exercised  option_contract_unit | Base asset amount of underlying spot which single option represents  option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN`  option_expiration_time | Option contract expiration time in ISO 8601                ### Additional output variables for `symbol_type = CONTRACT`                Variable | Description  --------- | -----------  contract_delivery_time | Predetermined time of contract delivery date in ISO 8601  contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)*  contract_unit_asset | Identifier of the asset used to denominate the contract unit  contract_id | Identifier of contract by the exchange

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$FilterSymbolId = "MyFilterSymbolId" # String | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. `BITSTAMP`_ or `BINANCE_SPOT_`) (optional)
$FilterExchangeId = "MyFilterExchangeId" # String | The filter for exchange ID. (optional)
$FilterAssetId = "MyFilterAssetId" # String | The filter for asset ID. (optional)

# List all symbols
try {
    $Result = Invoke-V1SymbolsGet -FilterSymbolId $FilterSymbolId -FilterExchangeId $FilterExchangeId -FilterAssetId $FilterAssetId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1SymbolsGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterSymbolId** | **String**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. &#x60;BITSTAMP&#x60;_ or &#x60;BINANCE_SPOT_&#x60;) | [optional] 
 **FilterExchangeId** | **String**| The filter for exchange ID. | [optional] 
 **FilterAssetId** | **String**| The filter for asset ID. | [optional] 

### Return type

[**V1Symbol[]**](V1Symbol.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1SymbolsMapExchangeIdGet"></a>
# **Invoke-V1SymbolsMapExchangeIdGet**
> V1SymbolMapping[] Invoke-V1SymbolsMapExchangeIdGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExchangeId] <String><br>

List symbol mapping for the exchange

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"

$ExchangeId = "MyExchangeId" # String | The ID of the exchange (from the Metadata -> Exchanges)

# List symbol mapping for the exchange
try {
    $Result = Invoke-V1SymbolsMapExchangeIdGet -ExchangeId $ExchangeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1SymbolsMapExchangeIdGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExchangeId** | **String**| The ID of the exchange (from the Metadata -&gt; Exchanges) | 

### Return type

[**V1SymbolMapping[]**](V1SymbolMapping.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

