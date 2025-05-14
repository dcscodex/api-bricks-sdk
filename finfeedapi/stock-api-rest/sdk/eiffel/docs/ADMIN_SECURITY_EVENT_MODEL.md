# ADMIN_SECURITY_EVENT_MODEL

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | [**STRING_32**](STRING_32.md) | The stock symbol | [optional] [default to null]
**timestamp_nanos** | **INTEGER_64** | Original timestamp in nanoseconds since epoch | [optional] [default to null]
**timestamp** | [**DATE_TIME**](DATE_TIME.md) | Time when the security event was recorded as DateTime | [optional] [default to null]
**security_event** | **INTEGER_32** | Security event as byte value | [optional] [default to null]
**security_event_code** | [**STRING_32**](STRING_32.md) | Security event as character string (&#39;O&#39; or &#39;C&#39;) | [optional] [default to null]
**security_event_text** | [**STRING_32**](STRING_32.md) | Human-readable description of the security event | [optional] [default to null]
**is_opening_process_complete** | **BOOLEAN** | Indicates if the security event is &#39;Opening Process Complete&#39; (&#39;O&#39;/0x4f). | [optional] [default to null]
**is_closing_process_complete** | **BOOLEAN** | Indicates if the security event is &#39;Closing Process Complete&#39; (&#39;C&#39;/0x43). | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


