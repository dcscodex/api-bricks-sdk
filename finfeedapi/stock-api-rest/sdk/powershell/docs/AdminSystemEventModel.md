# AdminSystemEventModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TimestampNanos** | **Int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **System.DateTime** | Time when the system event was recorded as DateTime | [optional] 
**SystemEvent** | **Int32** | System event as byte value | [optional] 
**SystemEventCode** | **String** | System event as string | [optional] 
**SystemEventText** | **String** | Human-readable description of the system event | [optional] 
**IsSystemEventStartOfMessages** | **Boolean** | Indicates if the system event is &#39;Start of Messages&#39; (O). Outside of heartbeat messages on the lower level protocol,  the start of day message is the first message sent in any trading session. | [optional] 
**IsSystemEventStartOfSystemHours** | **Boolean** | Indicates if the system event is &#39;Start of System Hours&#39; (S). This message indicates that IEX is open and ready to start accepting orders. | [optional] 
**IsSystemEventStartOfRegularMarketHours** | **Boolean** | Indicates if the system event is &#39;Start of Regular Market Hours&#39; (R). This message indicates that DAY and GTX orders, as well as market orders and pegged orders,  are available for execution on IEX. | [optional] 
**IsSystemEventEndOfRegularMarketHours** | **Boolean** | Indicates if the system event is &#39;End of Regular Market Hours&#39; (M). This message indicates that DAY orders, market orders, and pegged orders  are no longer accepted by IEX. | [optional] 
**IsSystemEventEndOfSystemHours** | **Boolean** | Indicates if the system event is &#39;End of System Hours&#39; (E). This message indicates that IEX is now closed and will not accept  any new orders during this trading session. It is still possible  to receive messages after the end of day. | [optional] 
**IsSystemEventEndOfMessages** | **Boolean** | Indicates if the system event is &#39;End of Messages&#39; (C). This is always the last message sent in any trading session. | [optional] 

## Examples

- Prepare the resource
```powershell
$AdminSystemEventModel = Initialize-PSOpenAPIToolsAdminSystemEventModel  -TimestampNanos null `
 -Timestamp null `
 -SystemEvent null `
 -SystemEventCode null `
 -SystemEventText null `
 -IsSystemEventStartOfMessages null `
 -IsSystemEventStartOfSystemHours null `
 -IsSystemEventStartOfRegularMarketHours null `
 -IsSystemEventEndOfRegularMarketHours null `
 -IsSystemEventEndOfSystemHours null `
 -IsSystemEventEndOfMessages null
```

- Convert the resource to JSON
```powershell
$AdminSystemEventModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

