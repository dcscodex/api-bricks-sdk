# V1OrderBook
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SymbolId** | **String** | The symbol identifier. | [optional] 
**TimeExchange** | **System.DateTime** | The exchange time of the order book. | [optional] 
**TimeCoinapi** | **System.DateTime** | The CoinAPI time when the order book was received. | [optional] 
**Asks** | [**AnyType**](.md) | The asks made by market makers. | [optional] 
**Bids** | [**AnyType**](.md) | The bids made by market makers. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1OrderBook = Initialize-PSOpenAPIToolsV1OrderBook  -SymbolId null `
 -TimeExchange null `
 -TimeCoinapi null `
 -Asks null `
 -Bids null
```

- Convert the resource to JSON
```powershell
$V1OrderBook | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

