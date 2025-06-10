# APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model.V1Trade
Represents a trade executed on the exchange.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SymbolId** | **string** | The symbol identifier. | [optional] 
**TimeExchange** | **DateTime** | The time of trade reported by the exchange. | [optional] 
**TimeCoinapi** | **DateTime** | The time when the trade was received by CoinAPI. | [optional] 
**Uuid** | **Guid** | The unique identifier for the trade. | [optional] 
**Price** | **double** | The price of the transaction. | [optional] 
**Size** | **double** | The base asset amount traded in the transaction. | [optional] 
**TakerSide** | **string** | The aggressor side of the transaction (BUY/SELL/BUY_ESTIMATED/SELL_ESTIMATED/UNKNOWN). | [optional] 
**IdTrade** | **string** | The trade identifier. | [optional] 
**IdOrderMaker** | **string** | The order maker identifier. | [optional] 
**IdOrderTaker** | **string** | The order taker identifier. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

