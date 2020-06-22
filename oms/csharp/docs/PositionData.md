
# CoinAPI.OMS.API.SDK234567.Model.PositionData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique position ID | [optional] 
**SymbolExchange** | **string** | The contract for this position. | [optional] 
**SymbolCoinapi** | **string** | The coinapi contract for this position. | [optional] 
**AvgEntryPrice** | **decimal** |  | [optional] 
**Quantity** | **decimal** | The current position amount in contracts. | [optional] 
**IsBuy** | **bool** |  | [optional] 
**UnrealisedPnL** | **decimal** | Unrealised PNL is all the unrealised profit or loss coming from your portfolio&#39;s open positions. | [optional] 
**Leverage** | **decimal** | 1 / initMarginReq. | [optional] 
**CrossMargin** | **bool** | True/false depending on whether you set cross margin on this position. | [optional] 
**LiquidationPrice** | **decimal** | Once markPrice reaches this price, this position will be liquidated. | [optional] 
**RawData** | **string** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to README]](../README.md)

