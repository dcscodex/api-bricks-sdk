# FinFeedApiStockRestApi.AdminSecurityEventModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | The stock symbol | [optional] 
**timestampNanos** | **Number** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **Date** | Time when the security event was recorded as DateTime | [optional] 
**securityEvent** | **Number** | Security event as byte value | [optional] 
**securityEventCode** | **String** | Security event as character string (&#39;O&#39; or &#39;C&#39;) | [optional] 
**securityEventText** | **String** | Human-readable description of the security event | [optional] 
**isOpeningProcessComplete** | **Boolean** | Indicates if the security event is &#39;Opening Process Complete&#39; (&#39;O&#39;/0x4f). | [optional] 
**isClosingProcessComplete** | **Boolean** | Indicates if the security event is &#39;Closing Process Complete&#39; (&#39;C&#39;/0x43). | [optional] 


