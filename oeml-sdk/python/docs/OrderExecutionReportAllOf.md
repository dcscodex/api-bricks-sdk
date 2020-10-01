# OrderExecutionReportAllOf

The order execution report message.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_order_id_format_exchange** | **str** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**exchange_order_id** | **str** | Unique identifier of the order assigned by the exchange or executing system. | [optional] 
**amount_open** | **float** | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | 
**amount_filled** | **float** | Total quantity filled. | 
**avg_px** | **float** | Calculated average price of all fills on this order. | [optional] 
**status** | [**OrdStatus**](OrdStatus.md) |  | 
**status_history** | **list[list[str]]** | Timestamped history of order status changes. | [optional] 
**error_message** | **str** | Error message. | [optional] 
**fills** | [**list[Fills]**](Fills.md) | Relay fill information on working orders. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


