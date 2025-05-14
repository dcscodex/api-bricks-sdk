# AdminSecurityEventModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **String** | The stock symbol | [optional] 
**TimestampNanos** | **Int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **System.DateTime** | Time when the security event was recorded as DateTime | [optional] 
**SecurityEvent** | **Int32** | Security event as byte value | [optional] 
**SecurityEventCode** | **String** | Security event as character string (&#39;O&#39; or &#39;C&#39;) | [optional] 
**SecurityEventText** | **String** | Human-readable description of the security event | [optional] 
**IsOpeningProcessComplete** | **Boolean** | Indicates if the security event is &#39;Opening Process Complete&#39; (&#39;O&#39;/0x4f). | [optional] 
**IsClosingProcessComplete** | **Boolean** | Indicates if the security event is &#39;Closing Process Complete&#39; (&#39;C&#39;/0x43). | [optional] 

## Examples

- Prepare the resource
```powershell
$AdminSecurityEventModel = Initialize-PSOpenAPIToolsAdminSecurityEventModel  -Symbol null `
 -TimestampNanos null `
 -Timestamp null `
 -SecurityEvent null `
 -SecurityEventCode null `
 -SecurityEventText null `
 -IsOpeningProcessComplete null `
 -IsClosingProcessComplete null
```

- Convert the resource to JSON
```powershell
$AdminSecurityEventModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

