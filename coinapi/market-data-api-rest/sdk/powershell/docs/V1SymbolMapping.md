# V1SymbolMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SymbolId** | **String** | The symbol ID. | [optional] 
**SymbolIdExchange** | **String** | The exchange-specific symbol ID. | [optional] 
**CoinapiDatainfoId** | **Int32** | The CoinAPI DataInfo ID. | [optional] 
**AssetIdBaseExchange** | **String** | The exchange-specific base asset ID. | [optional] 
**AssetIdQuoteExchange** | **String** | The exchange-specific quote asset ID. | [optional] 
**AssetIdBase** | **String** | The base asset ID. | [optional] 
**AssetIdQuote** | **String** | The quote asset ID. | [optional] 
**PricePrecision** | **Double** | The price precision. | [optional] 
**SizePrecision** | **Double** | The size precision. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1SymbolMapping = Initialize-PSOpenAPIToolsV1SymbolMapping  -SymbolId null `
 -SymbolIdExchange null `
 -CoinapiDatainfoId null `
 -AssetIdBaseExchange null `
 -AssetIdQuoteExchange null `
 -AssetIdBase null `
 -AssetIdQuote null `
 -PricePrecision null `
 -SizePrecision null
```

- Convert the resource to JSON
```powershell
$V1SymbolMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

