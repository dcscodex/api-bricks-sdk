# APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model.AdminSystemEventModel
Represents the response DTO for system event information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TimestampNanos** | **long** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **DateTime** | Time when the system event was recorded as DateTime | [optional] 
**SystemEvent** | **int** | System event as byte value | [optional] 
**SystemEventCode** | **string** | System event as string | [optional] 
**SystemEventText** | **string** | Human-readable description of the system event | [optional] 
**IsSystemEventStartOfMessages** | **bool** | Indicates if the system event is &#39;Start of Messages&#39; (O).  Outside of heartbeat messages on the lower level protocol,   the start of day message is the first message sent in any trading session. | [optional] 
**IsSystemEventStartOfSystemHours** | **bool** | Indicates if the system event is &#39;Start of System Hours&#39; (S).  This message indicates that IEX is open and ready to start accepting orders. | [optional] 
**IsSystemEventStartOfRegularMarketHours** | **bool** | Indicates if the system event is &#39;Start of Regular Market Hours&#39; (R).  This message indicates that DAY and GTX orders, as well as market orders and pegged orders,   are available for execution on IEX. | [optional] 
**IsSystemEventEndOfRegularMarketHours** | **bool** | Indicates if the system event is &#39;End of Regular Market Hours&#39; (M).  This message indicates that DAY orders, market orders, and pegged orders   are no longer accepted by IEX. | [optional] 
**IsSystemEventEndOfSystemHours** | **bool** | Indicates if the system event is &#39;End of System Hours&#39; (E).  This message indicates that IEX is now closed and will not accept   any new orders during this trading session. It is still possible   to receive messages after the end of day. | [optional] 
**IsSystemEventEndOfMessages** | **bool** | Indicates if the system event is &#39;End of Messages&#39; (C).  This is always the last message sent in any trading session. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

