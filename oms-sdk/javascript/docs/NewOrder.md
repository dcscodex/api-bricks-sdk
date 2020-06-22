# OmsRestApi.NewOrder

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchangeId** | **String** | Exchange name | [optional] 
**clientOrderId** | **String** | Client unique identifier for the trade. | [optional] 
**symbolExchange** | **String** | The symbol of the order. | [optional] 
**symbolCoinapi** | **String** | The CoinAPI symbol of the order. | [optional] 
**amountOrder** | **Number** | Quoted decimal amount to purchase. | [optional] 
**price** | **Number** | Quoted decimal amount to spend per unit. | [optional] 
**side** | **String** | Buy or Sell | [optional] 
**orderType** | **String** | The order type. | [optional] 
**timeInForce** | [**TimeInForce**](TimeInForce.md) |  | [optional] 
**expireTime** | **Date** | Required for orders with time_in_force &#x3D; GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS | [optional] 
**execInst** | **[String]** | TODO: description exec inst  | Parameter | Description | |-----------|--------| | &#x60;MAKER_OR_CANCEL&#x60; | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | --- | --- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X |  | [optional] 



## Enum: SideEnum


* `BUY` (value: `"BUY"`)

* `SELL` (value: `"SELL"`)





## Enum: OrderTypeEnum


* `LIMIT` (value: `"LIMIT"`)





## Enum: [ExecInstEnum]


* `MAKER_OR_CANCEL` (value: `"MAKER_OR_CANCEL"`)




