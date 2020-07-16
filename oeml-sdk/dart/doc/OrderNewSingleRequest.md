# openapi.model.OrderNewSingleRequest

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchangeId** | **String** | Exchange identifier used to identify the routing destination. | [default to null]
**clientOrderId** | **String** | The unique identifier of the order assigned by the client. | [default to null]
**symbolIdExchange** | **String** | Exchange symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] [default to null]
**symbolIdCoinapi** | **String** | CoinAPI symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] [default to null]
**amountOrder** | **num** | Order quantity. | [default to null]
**price** | **num** | Order price. | [default to null]
**side** | [**OrdSide**](OrdSide.md) |  | [default to null]
**orderType** | [**OrdType**](OrdType.md) |  | [default to null]
**timeInForce** | [**TimeInForce**](TimeInForce.md) |  | [default to null]
**expireTime** | [**DateTime**](DateTime.md) | Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;. | [optional] [default to null]
**execInst** | **List&lt;String&gt;** | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt;  | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


