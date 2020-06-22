# OpenapiClient::NewOrder

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_id** | **String** | Exchange name | [optional] 
**client_order_id** | **String** | Client unique identifier for the trade. | [optional] 
**symbol_exchange** | **String** | The symbol of the order. | [optional] 
**symbol_coinapi** | **String** | The CoinAPI symbol of the order. | [optional] 
**amount_order** | **Float** | Quoted decimal amount to purchase. | [optional] 
**price** | **Float** | Quoted decimal amount to spend per unit. | [optional] 
**side** | **String** | Buy or Sell | [optional] 
**order_type** | **String** | The order type. | [optional] 
**time_in_force** | [**TimeInForce**](TimeInForce.md) |  | [optional] 
**expire_time** | **Date** | Required for orders with time_in_force &#x3D; GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS | [optional] 
**exec_inst** | **Array&lt;String&gt;** | TODO: description exec inst  | Parameter | Description | |-----------|--------| | &#x60;MAKER_OR_CANCEL&#x60; | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | --- | --- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::NewOrder.new(exchange_id: KRAKEN,
                                 client_order_id: KPP-222389382-AQ,
                                 symbol_exchange: BTCUSD,
                                 symbol_coinapi: KRAKEN_SPOT_BTC_USD,
                                 amount_order: 0.045,
                                 price: 0.0783,
                                 side: BUY,
                                 order_type: LIMIT,
                                 time_in_force: null,
                                 expire_time: null,
                                 exec_inst: null)
```


