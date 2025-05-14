# # AdminSecurityEventModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **string** | The stock symbol | [optional]
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional]
**timestamp** | **\DateTime** | Time when the security event was recorded as DateTime | [optional]
**security_event** | **int** | Security event as byte value | [optional]
**security_event_code** | **string** | Security event as character string (&#39;O&#39; or &#39;C&#39;) | [optional]
**security_event_text** | **string** | Human-readable description of the security event | [optional]
**is_opening_process_complete** | **bool** | Indicates if the security event is &#39;Opening Process Complete&#39; (&#39;O&#39;/0x4f). | [optional]
**is_closing_process_complete** | **bool** | Indicates if the security event is &#39;Closing Process Complete&#39; (&#39;C&#39;/0x43). | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
