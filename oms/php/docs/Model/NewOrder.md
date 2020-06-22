# # NewOrder

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_id** | **string** | Exchange name | [optional] 
**client_order_id** | **string** | Client unique identifier for the trade. | [optional] 
**symbol_exchange** | **string** | The symbol of the order. | [optional] 
**symbol_coinapi** | **string** | The CoinAPI symbol of the order. | [optional] 
**amount_order** | **float** | Quoted decimal amount to purchase. | [optional] 
**price** | **float** | Quoted decimal amount to spend per unit. | [optional] 
**side** | **string** | Buy or Sell | [optional] 
**order_type** | **string** | The order type. | [optional] 
**time_in_force** | [**\OpenAPI\Client\Model\TimeInForce**](TimeInForce.md) |  | [optional] 
**expire_time** | [**\DateTime**](\DateTime.md) | Required for orders with time_in_force &#x3D; GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS | [optional] 
**exec_inst** | **string[]** | TODO: description exec inst  | Parameter | Description | |-----------|--------| | &#x60;MAKER_OR_CANCEL&#x60; | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | --- | --- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X | | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)


