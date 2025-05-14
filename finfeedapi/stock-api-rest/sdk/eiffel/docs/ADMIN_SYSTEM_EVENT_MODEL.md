# ADMIN_SYSTEM_EVENT_MODEL

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**timestamp_nanos** | **INTEGER_64** | Original timestamp in nanoseconds since epoch | [optional] [default to null]
**timestamp** | [**DATE_TIME**](DATE_TIME.md) | Time when the system event was recorded as DateTime | [optional] [default to null]
**system_event** | **INTEGER_32** | System event as byte value | [optional] [default to null]
**system_event_code** | [**STRING_32**](STRING_32.md) | System event as string | [optional] [default to null]
**system_event_text** | [**STRING_32**](STRING_32.md) | Human-readable description of the system event | [optional] [default to null]
**is_system_event_start_of_messages** | **BOOLEAN** | Indicates if the system event is &#39;Start of Messages&#39; (O).  Outside of heartbeat messages on the lower level protocol,   the start of day message is the first message sent in any trading session. | [optional] [default to null]
**is_system_event_start_of_system_hours** | **BOOLEAN** | Indicates if the system event is &#39;Start of System Hours&#39; (S).  This message indicates that IEX is open and ready to start accepting orders. | [optional] [default to null]
**is_system_event_start_of_regular_market_hours** | **BOOLEAN** | Indicates if the system event is &#39;Start of Regular Market Hours&#39; (R).  This message indicates that DAY and GTX orders, as well as market orders and pegged orders,   are available for execution on IEX. | [optional] [default to null]
**is_system_event_end_of_regular_market_hours** | **BOOLEAN** | Indicates if the system event is &#39;End of Regular Market Hours&#39; (M).  This message indicates that DAY orders, market orders, and pegged orders   are no longer accepted by IEX. | [optional] [default to null]
**is_system_event_end_of_system_hours** | **BOOLEAN** | Indicates if the system event is &#39;End of System Hours&#39; (E).  This message indicates that IEX is now closed and will not accept   any new orders during this trading session. It is still possible   to receive messages after the end of day. | [optional] [default to null]
**is_system_event_end_of_messages** | **BOOLEAN** | Indicates if the system event is &#39;End of Messages&#39; (C).  This is always the last message sent in any trading session. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


