
# OrderLive

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **kotlin.String** | Result type name |  [optional]
**exchangeId** | **kotlin.String** | Exchange name |  [optional]
**id** | **kotlin.String** | Client unique identifier for the trade. |  [optional]
**clientOrderIdFormatExchange** | **kotlin.String** | Hash client id |  [optional]
**exchangeOrderId** | **kotlin.String** | Exchange order id |  [optional]
**amountOpen** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Amount open |  [optional]
**amountFilled** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Amount filled |  [optional]
**status** | [**OrderStatus**](OrderStatus.md) |  |  [optional]
**timeOrder** | **kotlin.Array&lt;kotlin.Array&lt;kotlin.String&gt;&gt;** | History of order status changes |  [optional]
**errorMessage** | **kotlin.String** | Error message |  [optional]
**clientOrderId** | **kotlin.String** | Client unique identifier for the trade. |  [optional]
**symbolExchange** | **kotlin.String** | The symbol of the order. |  [optional]
**symbolCoinapi** | **kotlin.String** | The CoinAPI symbol of the order. |  [optional]
**amountOrder** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Quoted decimal amount to purchase. |  [optional]
**price** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Quoted decimal amount to spend per unit. |  [optional]
**side** | [**inline**](#SideEnum) | Buy or Sell |  [optional]
**orderType** | [**inline**](#OrderTypeEnum) | The order type. |  [optional]
**timeInForce** | [**TimeInForce**](TimeInForce.md) |  |  [optional]
**expireTime** | [**java.time.LocalDate**](java.time.LocalDate.md) | Required for orders with time_in_force &#x3D; GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS |  [optional]
**execInst** | [**inline**](#kotlin.Array&lt;ExecInstEnum&gt;) | TODO: description exec inst  | Parameter | Description | |-----------|--------| | &#x60;MAKER_OR_CANCEL&#x60; | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | --- | --- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X |  |  [optional]


<a name="SideEnum"></a>
## Enum: side
Name | Value
---- | -----
side | BUY, SELL


<a name="OrderTypeEnum"></a>
## Enum: order_type
Name | Value
---- | -----
orderType | LIMIT


<a name="kotlin.Array<ExecInstEnum>"></a>
## Enum: exec_inst
Name | Value
---- | -----
execInst | MAKER_OR_CANCEL



