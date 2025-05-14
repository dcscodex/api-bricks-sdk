# openapi::AdminOperationalHaltStatusModel

Represents the response DTO for operational halt status information

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **character** | The stock symbol | [optional] 
**timestamp_nanos** | **integer** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **character** | Time when the operational halt status was recorded as DateTime | [optional] 
**operational_halt_status** | **integer** | Operational halt status as byte value | [optional] 
**operational_halt_status_code** | **character** | Operational halt status as character string | [optional] 
**operational_halt_status_text** | **character** | Human-readable description of the operational halt status | [optional] 
**is_operationally_halted** | **character** | Indicates if the status is &#39;IEX specific operational trading halt&#39; (&#39;O&#39;/0x4f). | [optional] 
**is_not_operationally_halted** | **character** | Indicates if the status is &#39;Not operationally halted on IEX&#39; (&#39;N&#39;/0x4e). | [optional] 


