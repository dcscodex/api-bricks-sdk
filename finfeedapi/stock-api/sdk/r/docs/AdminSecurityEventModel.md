# openapi::AdminSecurityEventModel

Represents the response DTO for security event information

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **character** | The stock symbol | [optional] 
**timestamp_nanos** | **integer** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **character** | Time when the security event was recorded as DateTime | [optional] 
**security_event** | **integer** | Security event as byte value | [optional] 
**security_event_code** | **character** | Security event as character string (&#39;O&#39; or &#39;C&#39;) | [optional] 
**security_event_text** | **character** | Human-readable description of the security event | [optional] 
**is_opening_process_complete** | **character** | Indicates if the security event is &#39;Opening Process Complete&#39; (&#39;O&#39;/0x4f). | [optional] 
**is_closing_process_complete** | **character** | Indicates if the security event is &#39;Closing Process Complete&#39; (&#39;C&#39;/0x43). | [optional] 


