# openapi::OrderExecutionReportAllOf

The order execution report message.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_order_id_format_exchange** | **character** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**exchange_order_id** | **character** | Unique identifier of the order assigned by the exchange or executing system. | [optional] 
**amount_open** | **numeric** | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | 
**amount_filled** | **numeric** | Total quantity filled. | 
**status** | [**OrdStatus**](OrdStatus.md) |  | 
**time_order** | [**array[array[character]]**](array.md) | Timestamped history of order status changes. | 
**error_message** | **character** | Error message | [optional] 


