# OpenapiClient::OrderLive

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Result type name | [optional] 
**exchange_id** | **String** | Exchange name | [optional] 
**id** | **String** | Client unique identifier for the trade. | [optional] 
**client_order_id_format_exchange** | **String** | Hash client id | [optional] 
**exchange_order_id** | **String** | Exchange order id | [optional] 
**amount_open** | **Float** | Amount open | [optional] 
**amount_filled** | **Float** | Amount filled | [optional] 
**status** | [**OrderStatus**](OrderStatus.md) |  | [optional] 
**time_order** | **Array&lt;Array&lt;String&gt;&gt;** | History of order status changes | [optional] 
**error_message** | **String** | Error message | [optional] 
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

instance = OpenapiClient::OrderLive.new(type: updateOrder,
                                 exchange_id: KRAKEN,
                                 id: KPP-222389382-AQ,
                                 client_order_id_format_exchange: f81211e2-27c4-b86a-8143-01088ba9222c,
                                 exchange_order_id: 90832ASASAS89789-1112,
                                 amount_open: 0.22,
                                 amount_filled: 0.0,
                                 status: null,
                                 time_order: null,
                                 error_message: {&quot;result&quot;:&quot;error&quot;,&quot;reason&quot;:&quot;InsufficientFunds&quot;,&quot;message&quot;:&quot;Failed to place buy order on symbol &#39;BTCUSD&#39; for price $7,000.00 and quantity 0.22 BTC due to insufficient funds&quot;},
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


