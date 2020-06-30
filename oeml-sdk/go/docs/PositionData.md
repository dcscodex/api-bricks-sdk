# PositionData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique position ID | [optional] 
**SymbolExchange** | **string** | The contract for this position. | [optional] 
**SymbolCoinapi** | **string** | The coinapi contract for this position. | [optional] 
**AvgEntryPrice** | **float32** |  | [optional] 
**Quantity** | **float32** | The current position amount in contracts. | [optional] 
**IsBuy** | **bool** |  | [optional] 
**UnrealisedPnL** | **float32** | Unrealised PNL is all the unrealised profit or loss coming from your portfolio&#39;s open positions. | [optional] 
**Leverage** | **float32** | 1 / initMarginReq. | [optional] 
**CrossMargin** | **bool** | True/false depending on whether you set cross margin on this position. | [optional] 
**LiquidationPrice** | **float32** | Once markPrice reaches this price, this position will be liquidated. | [optional] 
**RawData** | **string** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


