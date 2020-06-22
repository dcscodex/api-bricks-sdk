# OrderData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_id** | **str** | Exchange name | [optional] 
**id** | **str** | Client unique identifier for the trade. | [optional] 
**client_order_id_format_exchange** | **str** | Hash client id | [optional] 
**exchange_order_id** | **str** | Exchange order id | [optional] 
**amount_open** | **float** | Amount open | [optional] 
**amount_filled** | **float** | Amount filled | [optional] 
**status** | [**OrderStatus**](OrderStatus.md) |  | [optional] 
**time_order** | **list[list[str]]** | History of order status changes | [optional] 
**error_message** | **str** | Error message | [optional] 
**client_order_id** | **str** | Client unique identifier for the trade. | [optional] 
**symbol_exchange** | **str** | The symbol of the order. | [optional] 
**symbol_coinapi** | **str** | The CoinAPI symbol of the order. | [optional] 
**amount_order** | **float** | Quoted decimal amount to purchase. | [optional] 
**price** | **float** | Quoted decimal amount to spend per unit. | [optional] 
**side** | **str** | Buy or Sell | [optional] 
**order_type** | **str** | The order type. | [optional] 
**time_in_force** | [**TimeInForce**](TimeInForce.md) |  | [optional] 
**expire_time** | **date** | Required for orders with time_in_force &#x3D; GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS | [optional] 
**exec_inst** | **list[str]** | TODO: description exec inst  | Parameter | Description | |-----------|--------| | &#x60;MAKER_OR_CANCEL&#x60; | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | --- | --- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


