# openapi::V1Trade

Represents a trade executed on the exchange.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol_id** | **character** | The symbol identifier. | [optional] 
**time_exchange** | **character** | The time of trade reported by the exchange. | [optional] 
**time_coinapi** | **character** | The time when the trade was received by CoinAPI. | [optional] 
**uuid** | **character** | The unique identifier for the trade. | [optional] 
**price** | **numeric** | The price of the transaction. | [optional] 
**size** | **numeric** | The base asset amount traded in the transaction. | [optional] 
**taker_side** | **character** | The aggressor side of the transaction (BUY/SELL/BUY_ESTIMATED/SELL_ESTIMATED/UNKNOWN). | [optional] 
**id_trade** | **character** | The trade identifier. | [optional] 
**id_order_maker** | **character** | The order maker identifier. | [optional] 
**id_order_taker** | **character** | The order taker identifier. | [optional] 


