
# AdminSecurityEventModel

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **symbol** | **kotlin.String** | The stock symbol |  [optional] |
| **timestampNanos** | **kotlin.Long** | Original timestamp in nanoseconds since epoch |  [optional] |
| **timestamp** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Time when the security event was recorded as DateTime |  [optional] |
| **securityEvent** | **kotlin.Int** | Security event as byte value |  [optional] |
| **securityEventCode** | **kotlin.String** | Security event as character string (&#39;O&#39; or &#39;C&#39;) |  [optional] |
| **securityEventText** | **kotlin.String** | Human-readable description of the security event |  [optional] |
| **isOpeningProcessComplete** | **kotlin.Boolean** | Indicates if the security event is &#39;Opening Process Complete&#39; (&#39;O&#39;/0x4f). |  [optional] |
| **isClosingProcessComplete** | **kotlin.Boolean** | Indicates if the security event is &#39;Closing Process Complete&#39; (&#39;C&#39;/0x43). |  [optional] |



