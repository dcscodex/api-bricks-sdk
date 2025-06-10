# V1Symbol
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SymbolId** | **String** | The symbol identifier. | [optional] 
**ExchangeId** | **String** | The exchange identifier. | [optional] 
**SymbolType** | **String** | The symbol type. | [optional] 
**AssetIdBase** | **String** | The base asset identifier. | [optional] 
**AssetIdQuote** | **String** | The quote asset identifier. | [optional] 
**AssetIdUnit** | **String** | The unit asset identifier. | [optional] 
**FutureContractUnit** | **Double** | The contract unit for futures. | [optional] 
**FutureContractUnitAsset** | **String** | The asset used as the unit for futures contract. | [optional] 
**FutureDeliveryTime** | **System.DateTime** | The future delivery time for futures contract. | [optional] 
**OptionTypeIsCall** | **Boolean** | Indicates whether the option type is a call. | [optional] 
**OptionStrikePrice** | **Double** | The strike price for options. | [optional] 
**OptionContractUnit** | **Double** | The contract unit for options. | [optional] 
**OptionExerciseStyle** | **String** | The exercise style for options. | [optional] 
**OptionExpirationTime** | **System.DateTime** | The expiration time for options. | [optional] 
**ContractDeliveryTime** | **System.DateTime** | The delivery time for contracts. | [optional] 
**ContractUnit** | **Double** | The contract unit for contracts. | [optional] 
**ContractUnitAsset** | **String** | The asset used as the unit for contracts. | [optional] 
**ContractId** | **String** | The contract identifier. | [optional] 
**ContractDisplayName** | **String** | The display name of the contract. | [optional] 
**ContractDisplayDescription** | **String** | The display description of the contract. | [optional] 
**DataStart** | **String** |  | [optional] [readonly] 
**DataEnd** | **String** |  | [optional] [readonly] 
**DataQuoteStart** | **System.DateTime** | The start date of quote data. | [optional] 
**DataQuoteEnd** | **System.DateTime** | The end date of quote data. | [optional] 
**DataOrderbookStart** | **System.DateTime** | The start date of order book data. | [optional] 
**DataOrderbookEnd** | **System.DateTime** | The end date of order book data. | [optional] 
**DataTradeStart** | **System.DateTime** | The start date of trade data. | [optional] 
**DataTradeEnd** | **System.DateTime** | The end date of trade data. | [optional] 
**IndexId** | **String** | The index identifier. | [optional] 
**IndexDisplayName** | **String** | The display name of the index. | [optional] 
**IndexDisplayDescription** | **String** | The display description of the index. | [optional] 
**Volume1hrs** | **Double** | The volume in the last 1 hour. | [optional] 
**Volume1hrsUsd** | **Double** | The volume in USD in the last 1 hour. | [optional] 
**Volume1day** | **Double** | The volume in the last 1 day. | [optional] 
**Volume1dayUsd** | **Double** | The volume in USD in the last 1 day. | [optional] 
**Volume1mth** | **Double** | The volume in the last 1 month. | [optional] 
**Volume1mthUsd** | **Double** | The volume in USD in the last 1 month. | [optional] 
**Price** | **Double** | The price. | [optional] 
**SymbolIdExchange** | **String** | The symbol identifier in the exchange. | [optional] 
**AssetIdBaseExchange** | **String** | The base asset identifier in the exchange. | [optional] 
**AssetIdQuoteExchange** | **String** | The quote asset identifier in the exchange. | [optional] 
**PricePrecision** | **Double** | The price precision. | [optional] 
**SizePrecision** | **Double** | The size precision. | [optional] 
**RawKvp** | **System.Collections.Hashtable** | Not normalized raw kvp data. | [optional] 
**VolumeToUsd** | **Double** | Volume unit in USD. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1Symbol = Initialize-PSOpenAPIToolsV1Symbol  -SymbolId null `
 -ExchangeId null `
 -SymbolType null `
 -AssetIdBase null `
 -AssetIdQuote null `
 -AssetIdUnit null `
 -FutureContractUnit null `
 -FutureContractUnitAsset null `
 -FutureDeliveryTime null `
 -OptionTypeIsCall null `
 -OptionStrikePrice null `
 -OptionContractUnit null `
 -OptionExerciseStyle null `
 -OptionExpirationTime null `
 -ContractDeliveryTime null `
 -ContractUnit null `
 -ContractUnitAsset null `
 -ContractId null `
 -ContractDisplayName null `
 -ContractDisplayDescription null `
 -DataStart null `
 -DataEnd null `
 -DataQuoteStart null `
 -DataQuoteEnd null `
 -DataOrderbookStart null `
 -DataOrderbookEnd null `
 -DataTradeStart null `
 -DataTradeEnd null `
 -IndexId null `
 -IndexDisplayName null `
 -IndexDisplayDescription null `
 -Volume1hrs null `
 -Volume1hrsUsd null `
 -Volume1day null `
 -Volume1dayUsd null `
 -Volume1mth null `
 -Volume1mthUsd null `
 -Price null `
 -SymbolIdExchange null `
 -AssetIdBaseExchange null `
 -AssetIdQuoteExchange null `
 -PricePrecision null `
 -SizePrecision null `
 -RawKvp null `
 -VolumeToUsd null
```

- Convert the resource to JSON
```powershell
$V1Symbol | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

