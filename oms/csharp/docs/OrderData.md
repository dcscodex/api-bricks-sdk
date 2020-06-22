
# CoinAPI.OMS.API.SDK23.Model.OrderData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | **string** | Exchange name | [optional] 
**Id** | **string** | Client unique identifier for the trade. | [optional] 
**ClientOrderIdFormatExchange** | **string** | Hash client id | [optional] 
**ExchangeOrderId** | **string** | Exchange order id | [optional] 
**AmountOpen** | **decimal** | Amount open | [optional] 
**AmountFilled** | **decimal** | Amount filled | [optional] 
**Status** | [**OrderStatus**](OrderStatus.md) |  | [optional] 
**TimeOrder** | **List&lt;List&lt;string&gt;&gt;** | History of order status changes | [optional] 
**ErrorMessage** | **string** | Error message | [optional] 
**ClientOrderId** | **string** | Client unique identifier for the trade. | [optional] 
**SymbolExchange** | **string** | The symbol of the order. | [optional] 
**SymbolCoinapi** | **string** | The CoinAPI symbol of the order. | [optional] 
**AmountOrder** | **decimal** | Quoted decimal amount to purchase. | [optional] 
**Price** | **decimal** | Quoted decimal amount to spend per unit. | [optional] 
**Side** | **string** | Buy or Sell | [optional] 
**OrderType** | **string** | The order type. | [optional] 
**TimeInForce** | [**TimeInForce**](TimeInForce.md) |  | [optional] 
**ExpireTime** | **DateTime** | Required for orders with time_in_force &#x3D; GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS | [optional] 
**ExecInst** | **List&lt;string&gt;** | TODO: description exec inst  | Parameter | Description | |- -- -- -- -- --|- -- -- -- -| | &#x60;MAKER_OR_CANCEL&#x60; | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | - -- | - -- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to README]](../README.md)

