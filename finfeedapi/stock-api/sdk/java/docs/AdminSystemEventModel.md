

# AdminSystemEventModel

Represents the response DTO for system event information

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**timestampNanos** | **Long** | Original timestamp in nanoseconds since epoch |  [optional] |
|**timestamp** | **OffsetDateTime** | Time when the system event was recorded as DateTime |  [optional] |
|**systemEvent** | **Integer** | System event as byte value |  [optional] |
|**systemEventCode** | **String** | System event as string |  [optional] |
|**systemEventText** | **String** | Human-readable description of the system event |  [optional] |
|**isSystemEventStartOfMessages** | **Boolean** | Indicates if the system event is &#39;Start of Messages&#39; (O).  Outside of heartbeat messages on the lower level protocol,   the start of day message is the first message sent in any trading session. |  [optional] |
|**isSystemEventStartOfSystemHours** | **Boolean** | Indicates if the system event is &#39;Start of System Hours&#39; (S).  This message indicates that IEX is open and ready to start accepting orders. |  [optional] |
|**isSystemEventStartOfRegularMarketHours** | **Boolean** | Indicates if the system event is &#39;Start of Regular Market Hours&#39; (R).  This message indicates that DAY and GTX orders, as well as market orders and pegged orders,   are available for execution on IEX. |  [optional] |
|**isSystemEventEndOfRegularMarketHours** | **Boolean** | Indicates if the system event is &#39;End of Regular Market Hours&#39; (M).  This message indicates that DAY orders, market orders, and pegged orders   are no longer accepted by IEX. |  [optional] |
|**isSystemEventEndOfSystemHours** | **Boolean** | Indicates if the system event is &#39;End of System Hours&#39; (E).  This message indicates that IEX is now closed and will not accept   any new orders during this trading session. It is still possible   to receive messages after the end of day. |  [optional] |
|**isSystemEventEndOfMessages** | **Boolean** | Indicates if the system event is &#39;End of Messages&#39; (C).  This is always the last message sent in any trading session. |  [optional] |



