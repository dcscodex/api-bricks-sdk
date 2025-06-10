# V1Quote
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SymbolId** | **String** | The symbol identifier. | [optional] 
**TimeExchange** | **System.DateTime** | The exchange time of the quote. | [optional] 
**TimeCoinapi** | **System.DateTime** | The CoinAPI time when the quote was received. | [optional] 
**AskPrice** | **Double** | The best asking price. | [optional] 
**AskSize** | **Double** | The volume resting on the best ask. If the value is equal to zero, then the size is unknown. | [optional] 
**BidPrice** | **Double** | The best bidding price. | [optional] 
**BidSize** | **Double** | The volume resting on the best bid. If the value is equal to zero, then the size is unknown. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1Quote = Initialize-PSOpenAPIToolsV1Quote  -SymbolId null `
 -TimeExchange null `
 -TimeCoinapi null `
 -AskPrice null `
 -AskSize null `
 -BidPrice null `
 -BidSize null
```

- Convert the resource to JSON
```powershell
$V1Quote | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

