# V1Trade
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SymbolId** | **String** | The symbol identifier. | [optional] 
**TimeExchange** | **System.DateTime** | The time of trade reported by the exchange. | [optional] 
**TimeCoinapi** | **System.DateTime** | The time when the trade was received by CoinAPI. | [optional] 
**Uuid** | **String** | The unique identifier for the trade. | [optional] 
**Price** | **Double** | The price of the transaction. | [optional] 
**Size** | **Double** | The base asset amount traded in the transaction. | [optional] 
**TakerSide** | **String** | The aggressor side of the transaction (BUY/SELL/BUY_ESTIMATED/SELL_ESTIMATED/UNKNOWN). | [optional] 
**IdTrade** | **String** | The trade identifier. | [optional] 
**IdOrderMaker** | **String** | The order maker identifier. | [optional] 
**IdOrderTaker** | **String** | The order taker identifier. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1Trade = Initialize-PSOpenAPIToolsV1Trade  -SymbolId null `
 -TimeExchange null `
 -TimeCoinapi null `
 -Uuid null `
 -Price null `
 -Size null `
 -TakerSide null `
 -IdTrade null `
 -IdOrderMaker null `
 -IdOrderTaker null
```

- Convert the resource to JSON
```powershell
$V1Trade | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

