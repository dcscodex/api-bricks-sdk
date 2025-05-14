# openapi::Level3AddOrderModel

Represents the response DTO for add order information

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **character** | The stock symbol | [optional] 
**timestamp_nanos** | **integer** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **character** | Time when the order was added as DateTime (UTC) | [optional] 
**is_side_buy** | **character** | Indicates if this is a Buy order (&#39;8&#39;/0x38). | [optional] 
**size** | **integer** | Quoted size in number of shares | [optional] 
**price** | **numeric** | Price as decimal | [optional] 
**order_id** | **integer** | Order identifier | [optional] 


