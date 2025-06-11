
# AdminSystemEventModel

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **timestampNanos** | **kotlin.Long** | Original timestamp in nanoseconds since epoch |  [optional] |
| **timestamp** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Time when the system event was recorded as DateTime |  [optional] |
| **systemEvent** | **kotlin.Int** | System event as byte value |  [optional] |
| **systemEventCode** | **kotlin.String** | System event as string |  [optional] |
| **systemEventText** | **kotlin.String** | Human-readable description of the system event |  [optional] |
| **isSystemEventStartOfMessages** | **kotlin.Boolean** | Indicates if the system event is &#39;Start of Messages&#39; (O). Outside of heartbeat messages on the lower level protocol,  the start of day message is the first message sent in any trading session. |  [optional] |
| **isSystemEventStartOfSystemHours** | **kotlin.Boolean** | Indicates if the system event is &#39;Start of System Hours&#39; (S). This message indicates that IEX is open and ready to start accepting orders. |  [optional] |
| **isSystemEventStartOfRegularMarketHours** | **kotlin.Boolean** | Indicates if the system event is &#39;Start of Regular Market Hours&#39; (R). This message indicates that DAY and GTX orders, as well as market orders and pegged orders,  are available for execution on IEX. |  [optional] |
| **isSystemEventEndOfRegularMarketHours** | **kotlin.Boolean** | Indicates if the system event is &#39;End of Regular Market Hours&#39; (M). This message indicates that DAY orders, market orders, and pegged orders  are no longer accepted by IEX. |  [optional] |
| **isSystemEventEndOfSystemHours** | **kotlin.Boolean** | Indicates if the system event is &#39;End of System Hours&#39; (E). This message indicates that IEX is now closed and will not accept  any new orders during this trading session. It is still possible  to receive messages after the end of day. |  [optional] |
| **isSystemEventEndOfMessages** | **kotlin.Boolean** | Indicates if the system event is &#39;End of Messages&#39; (C). This is always the last message sent in any trading session. |  [optional] |



