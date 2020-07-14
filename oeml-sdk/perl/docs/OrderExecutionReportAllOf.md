# WWW::OpenAPIClient::Object::OrderExecutionReportAllOf

## Load the model package
```perl
use WWW::OpenAPIClient::Object::OrderExecutionReportAllOf;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_order_id_format_exchange** | **string** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**exchange_order_id** | **string** | Unique identifier of the order assigned by the exchange or executing system. | [optional] 
**amount_open** | **double** | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | 
**amount_filled** | **double** | Total quantity filled. | 
**status** | [**OrdStatus**](OrdStatus.md) |  | 
**time_order** | **ARRAY[ARRAY[string]]** | Timestamped history of order status changes. | 
**error_message** | **string** | Error message | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


