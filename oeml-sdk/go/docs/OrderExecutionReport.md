# OrderExecutionReport

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | **string** | Exchange identifier used to identify the routing destination. | 
**ClientOrderId** | **string** | The unique identifier of the order assigned by the client. | 
**SymbolIdExchange** | **string** | Exchange symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] 
**SymbolIdCoinapi** | **string** | CoinAPI symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] 
**AmountOrder** | **float32** | Order quantity. | 
**Price** | **float32** | Order price. | 
**Side** | [**OrdSide**](OrdSide.md) |  | 
**OrderType** | [**OrdType**](OrdType.md) |  | 
**TimeInForce** | [**TimeInForce**](TimeInForce.md) |  | 
**ExpireTime** | **string** | Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;. | [optional] 
**ExecInst** | **[]string** | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt;  | [optional] 
**ClientOrderIdFormatExchange** | **string** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**ExchangeOrderId** | **string** | Unique identifier of the order assigned by the exchange or executing system. | [optional] 
**AmountOpen** | **float32** | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | 
**AmountFilled** | **float32** | Total quantity filled. | 
**AvgPx** | **float32** | Calculated average price of all fills on this order. | [optional] 
**Status** | [**OrdStatus**](OrdStatus.md) |  | 
**StatusHistory** | [**[][]string**](array.md) | Timestamped history of order status changes. | [optional] 
**ErrorMessage** | **string** | Error message. | [optional] 
**Fills** | [**[]Fills**](Fills.md) | Relay fill information on working orders. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


