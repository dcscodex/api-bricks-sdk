# V1_TRADE

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol_id** | [**STRING_32**](STRING_32.md) | The symbol identifier. | [optional] [default to null]
**time_exchange** | [**DATE_TIME**](DATE_TIME.md) | The time of trade reported by the exchange. | [optional] [default to null]
**time_coinapi** | [**DATE_TIME**](DATE_TIME.md) | The time when the trade was received by CoinAPI. | [optional] [default to null]
**uuid** | [**UUID**](UUID.md) | The unique identifier for the trade. | [optional] [default to null]
**price** | **REAL_64** | The price of the transaction. | [optional] [default to null]
**size** | **REAL_64** | The base asset amount traded in the transaction. | [optional] [default to null]
**taker_side** | [**STRING_32**](STRING_32.md) | The aggressor side of the transaction (BUY/SELL/BUY_ESTIMATED/SELL_ESTIMATED/UNKNOWN). | [optional] [default to null]
**id_trade** | [**STRING_32**](STRING_32.md) | The trade identifier. | [optional] [default to null]
**id_order_maker** | [**STRING_32**](STRING_32.md) | The order maker identifier. | [optional] [default to null]
**id_order_taker** | [**STRING_32**](STRING_32.md) | The order taker identifier. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


