# openapi.model.OrderLive

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Result type name | [optional] [default to null]
**exchangeId** | **String** | Exchange name | [optional] [default to null]
**id** | **String** | Client unique identifier for the trade. | [optional] [default to null]
**clientOrderIdFormatExchange** | **String** | Hash client id | [optional] [default to null]
**exchangeOrderId** | **String** | Exchange order id | [optional] [default to null]
**amountOpen** | **num** | Amount open | [optional] [default to null]
**amountFilled** | **num** | Amount filled | [optional] [default to null]
**status** | [**OrderStatus**](OrderStatus.md) |  | [optional] [default to null]
**timeOrder** | [**List&lt;List&lt;String&gt;&gt;**](List.md) | History of order status changes | [optional] [default to []]
**errorMessage** | **String** | Error message | [optional] [default to null]
**clientOrderId** | **String** | Client unique identifier for the trade. | [optional] [default to null]
**symbolExchange** | **String** | The symbol of the order. | [optional] [default to null]
**symbolCoinapi** | **String** | The CoinAPI symbol of the order. | [optional] [default to null]
**amountOrder** | **num** | Quoted decimal amount to purchase. | [optional] [default to null]
**price** | **num** | Quoted decimal amount to spend per unit. | [optional] [default to null]
**side** | **String** | Buy or Sell | [optional] [default to null]
**orderType** | **String** | The order type. | [optional] [default to null]
**timeInForce** | [**TimeInForce**](TimeInForce.md) |  | [optional] [default to null]
**expireTime** | [**DateTime**](DateTime.md) | Required for orders with time_in_force &#x3D; GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS | [optional] [default to null]
**execInst** | **List&lt;String&gt;** | TODO: description exec inst  | Parameter | Description | |-----------|--------| | &#x60;MAKER_OR_CANCEL&#x60; | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | --- | --- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X |  | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


