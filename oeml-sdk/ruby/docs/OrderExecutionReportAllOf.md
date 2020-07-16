# OpenapiClient::OrderExecutionReportAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_order_id_format_exchange** | **String** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**exchange_order_id** | **String** | Unique identifier of the order assigned by the exchange or executing system. | [optional] 
**amount_open** | **Float** | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | 
**amount_filled** | **Float** | Total quantity filled. | 
**status** | [**OrdStatus**](OrdStatus.md) |  | 
**time_order** | **Array&lt;Array&lt;String&gt;&gt;** | Timestamped history of order status changes. | 
**error_message** | **String** | Error message | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::OrderExecutionReportAllOf.new(client_order_id_format_exchange: f81211e2-27c4-b86a-8143-01088ba9222c,
                                 exchange_order_id: 3456456754,
                                 amount_open: 0.22,
                                 amount_filled: 0.0,
                                 status: null,
                                 time_order: null,
                                 error_message: {&quot;result&quot;:&quot;error&quot;,&quot;reason&quot;:&quot;InsufficientFunds&quot;,&quot;message&quot;:&quot;Failed to place buy order on symbol &#39;BTCUSD&#39; for price $7,000.00 and quantity 0.22 BTC due to insufficient funds&quot;})
```


