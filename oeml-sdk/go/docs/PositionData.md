# PositionData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SymbolIdExchange** | **string** | Exchange symbol. | [optional] 
**SymbolIdCoinapi** | **string** | CoinAPI symbol. | [optional] 
**AvgEntryPrice** | **float32** | Calculated average price of all fills on this position. | [optional] 
**Quantity** | **float32** | The current position quantity. | [optional] 
**Side** | [**OrdSide**](OrdSide.md) |  | [optional] 
**UnrealizedPnl** | **float32** | Unrealised profit or loss (PNL) of this position. | [optional] 
**Leverage** | **float32** | Leverage for this position reported by the exchange. | [optional] 
**CrossMargin** | **bool** | Is cross margin mode enable for this position? | [optional] 
**LiquidationPrice** | **float32** | Liquidation price. If mark price will reach this value, the position will be liquidated. | [optional] 
**RawData** | [**map[string]interface{}**](.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


