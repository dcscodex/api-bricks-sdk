# V1Exchange
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | **String** | Gets or sets the exchange ID. | [optional] 
**Website** | **String** | Gets or sets the website URL of the exchange. | [optional] 
**Name** | **String** | Gets or sets the name of the exchange. | [optional] 
**DataStart** | **String** |  | [optional] [readonly] 
**DataEnd** | **String** |  | [optional] [readonly] 
**DataQuoteStart** | **System.DateTime** | Gets or sets the start date of quote data. | [optional] 
**DataQuoteEnd** | **System.DateTime** | Gets or sets the end date of quote data. | [optional] 
**DataOrderbookStart** | **System.DateTime** | Gets or sets the start date of order book data. | [optional] 
**DataOrderbookEnd** | **System.DateTime** | Gets or sets the end date of order book data. | [optional] 
**DataTradeStart** | **System.DateTime** | Gets or sets the start date of trade data. | [optional] 
**DataTradeEnd** | **System.DateTime** | Gets or sets the end date of trade data. | [optional] 
**DataTradeCount** | **Int64** | Gets or sets the number of trades. | [optional] 
**DataSymbolsCount** | **Int64** | Gets or sets the number of symbols. | [optional] 
**Volume1hrsUsd** | **Double** | Gets or sets the USD volume in the last 1 hour. | [optional] 
**Volume1dayUsd** | **Double** | Gets or sets the USD volume in the last 1 day. | [optional] 
**Volume1mthUsd** | **Double** | Gets or sets the USD volume in the last 1 month. | [optional] 
**MetricId** | **String[]** | Gets or sets the list of metric IDs. | [optional] 
**Icons** | [**V1Icon[]**](V1Icon.md) | Gets or sets the list of icons for the exchange. | [optional] [readonly] 
**Rank** | **Double** | Rank of the exchange. | [optional] 
**IntegrationStatus** | **String** | Status of the integration | [optional] 

## Examples

- Prepare the resource
```powershell
$V1Exchange = Initialize-PSOpenAPIToolsV1Exchange  -ExchangeId null `
 -Website null `
 -Name null `
 -DataStart null `
 -DataEnd null `
 -DataQuoteStart null `
 -DataQuoteEnd null `
 -DataOrderbookStart null `
 -DataOrderbookEnd null `
 -DataTradeStart null `
 -DataTradeEnd null `
 -DataTradeCount null `
 -DataSymbolsCount null `
 -Volume1hrsUsd null `
 -Volume1dayUsd null `
 -Volume1mthUsd null `
 -MetricId null `
 -Icons null `
 -Rank null `
 -IntegrationStatus null
```

- Convert the resource to JSON
```powershell
$V1Exchange | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

