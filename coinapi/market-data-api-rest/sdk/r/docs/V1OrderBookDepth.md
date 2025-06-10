# openapi::V1OrderBookDepth

Represents the depth of an order book.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol_id** | **character** | The symbol identifier. | [optional] 
**time_exchange** | **character** | The exchange time of the order book. | [optional] 
**time_coinapi** | **character** | The CoinAPI time when the order book was received. | [optional] 
**ask_levels** | **integer** | The number of ask levels in the order book. | [optional] 
**bid_levels** | **integer** | The number of bid levels in the order book. | [optional] 
**ask_depth** | **numeric** | The depth of the ask side of the order book. | [optional] 
**bid_depth** | **numeric** | The depth of the bid side of the order book. | [optional] 


