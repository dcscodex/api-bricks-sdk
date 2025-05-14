# APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model.AdminSecurityEventModel
Represents the response DTO for security event information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **string** | The stock symbol | [optional] 
**TimestampNanos** | **long** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **DateTime** | Time when the security event was recorded as DateTime | [optional] 
**SecurityEvent** | **int** | Security event as byte value | [optional] 
**SecurityEventCode** | **string** | Security event as character string (&#39;O&#39; or &#39;C&#39;) | [optional] 
**SecurityEventText** | **string** | Human-readable description of the security event | [optional] 
**IsOpeningProcessComplete** | **bool** | Indicates if the security event is &#39;Opening Process Complete&#39; (&#39;O&#39;/0x4f). | [optional] 
**IsClosingProcessComplete** | **bool** | Indicates if the security event is &#39;Closing Process Complete&#39; (&#39;C&#39;/0x43). | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

