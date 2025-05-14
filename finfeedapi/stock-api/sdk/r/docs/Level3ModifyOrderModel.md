# openapi::Level3ModifyOrderModel

Represents the response DTO for order modify information

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **character** | The stock symbol | [optional] 
**timestamp_nanos** | **integer** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **character** | Time when the order was modified as DateTime (UTC) | [optional] 
**order_id_reference** | **integer** | Order identifier reference | [optional] 
**is_priority_reset** | **character** | Indicates if priority is reseted | [optional] 
**size** | **integer** | New total quoted size in number of shares | [optional] 
**price** | **numeric** | Price as decimal | [optional] 


