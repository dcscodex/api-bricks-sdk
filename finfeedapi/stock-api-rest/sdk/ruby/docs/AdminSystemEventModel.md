# OpenapiClient::AdminSystemEventModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp_nanos** | **Integer** | Original timestamp in nanoseconds since epoch | [optional] |
| **timestamp** | **Time** | Time when the system event was recorded as DateTime | [optional] |
| **system_event** | **Integer** | System event as byte value | [optional] |
| **system_event_code** | **String** | System event as string | [optional] |
| **system_event_text** | **String** | Human-readable description of the system event | [optional] |
| **is_system_event_start_of_messages** | **Boolean** | Indicates if the system event is &#39;Start of Messages&#39; (O). Outside of heartbeat messages on the lower level protocol,  the start of day message is the first message sent in any trading session. | [optional] |
| **is_system_event_start_of_system_hours** | **Boolean** | Indicates if the system event is &#39;Start of System Hours&#39; (S). This message indicates that IEX is open and ready to start accepting orders. | [optional] |
| **is_system_event_start_of_regular_market_hours** | **Boolean** | Indicates if the system event is &#39;Start of Regular Market Hours&#39; (R). This message indicates that DAY and GTX orders, as well as market orders and pegged orders,  are available for execution on IEX. | [optional] |
| **is_system_event_end_of_regular_market_hours** | **Boolean** | Indicates if the system event is &#39;End of Regular Market Hours&#39; (M). This message indicates that DAY orders, market orders, and pegged orders  are no longer accepted by IEX. | [optional] |
| **is_system_event_end_of_system_hours** | **Boolean** | Indicates if the system event is &#39;End of System Hours&#39; (E). This message indicates that IEX is now closed and will not accept  any new orders during this trading session. It is still possible  to receive messages after the end of day. | [optional] |
| **is_system_event_end_of_messages** | **Boolean** | Indicates if the system event is &#39;End of Messages&#39; (C). This is always the last message sent in any trading session. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AdminSystemEventModel.new(
  timestamp_nanos: null,
  timestamp: null,
  system_event: null,
  system_event_code: null,
  system_event_text: null,
  is_system_event_start_of_messages: null,
  is_system_event_start_of_system_hours: null,
  is_system_event_start_of_regular_market_hours: null,
  is_system_event_end_of_regular_market_hours: null,
  is_system_event_end_of_system_hours: null,
  is_system_event_end_of_messages: null
)
```

