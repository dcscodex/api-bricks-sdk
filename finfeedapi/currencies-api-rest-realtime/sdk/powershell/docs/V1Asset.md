# V1Asset
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetId** | **String** | Gets or sets the asset ID. | [optional] 
**Name** | **String** | Gets or sets the name of the asset. | [optional] 
**TypeIsCrypto** | **Int32** | Gets or sets a value indicating whether the asset is a cryptocurrency. | [optional] 
**DataQuoteStart** | **System.DateTime** | Gets or sets the start date of quote data. | [optional] 
**DataQuoteEnd** | **System.DateTime** | Gets or sets the end date of quote data. | [optional] 
**DataOrderbookStart** | **System.DateTime** | Gets or sets the start date of order book data. | [optional] 
**DataOrderbookEnd** | **System.DateTime** | Gets or sets the end date of order book data. | [optional] 
**DataTradeStart** | **System.DateTime** | Gets or sets the start date of trade data. | [optional] 
**DataTradeEnd** | **System.DateTime** | Gets or sets the end date of trade data. | [optional] 
**DataSymbolsCount** | **Int64** | Gets or sets the number of symbols. | [optional] 
**Volume1hrsUsd** | **Double** | Gets or sets the USD volume in the last 1 hour. | [optional] 
**Volume1dayUsd** | **Double** | Gets or sets the USD volume in the last 1 day. | [optional] 
**Volume1mthUsd** | **Double** | Gets or sets the USD volume in the last 1 month. | [optional] 
**PriceUsd** | **Double** | Gets or sets the USD price of the asset. | [optional] 
**IdIcon** | **String** | Gets or sets the ID of the icon for the asset. | [optional] 
**SupplyCurrent** | **Double** | Gets or sets the current supply of the asset. | [optional] 
**SupplyTotal** | **Double** | Gets or sets the total supply of the asset. | [optional] 
**SupplyMax** | **Double** | Gets or sets the maximum supply of the asset. | [optional] 
**ChainAddresses** | [**V1ChainNetworkAddress[]**](V1ChainNetworkAddress.md) |  | [optional] 
**DataStart** | **String** |  | [optional] [readonly] 
**DataEnd** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$V1Asset = Initialize-PSOpenAPIToolsV1Asset  -AssetId null `
 -Name null `
 -TypeIsCrypto null `
 -DataQuoteStart null `
 -DataQuoteEnd null `
 -DataOrderbookStart null `
 -DataOrderbookEnd null `
 -DataTradeStart null `
 -DataTradeEnd null `
 -DataSymbolsCount null `
 -Volume1hrsUsd null `
 -Volume1dayUsd null `
 -Volume1mthUsd null `
 -PriceUsd null `
 -IdIcon null `
 -SupplyCurrent null `
 -SupplyTotal null `
 -SupplyMax null `
 -ChainAddresses null `
 -DataStart null `
 -DataEnd null
```

- Convert the resource to JSON
```powershell
$V1Asset | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

