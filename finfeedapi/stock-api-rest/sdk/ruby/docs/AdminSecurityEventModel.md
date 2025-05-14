# OpenapiClient::AdminSecurityEventModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The stock symbol | [optional] |
| **timestamp_nanos** | **Integer** | Original timestamp in nanoseconds since epoch | [optional] |
| **timestamp** | **Time** | Time when the security event was recorded as DateTime | [optional] |
| **security_event** | **Integer** | Security event as byte value | [optional] |
| **security_event_code** | **String** | Security event as character string (&#39;O&#39; or &#39;C&#39;) | [optional] |
| **security_event_text** | **String** | Human-readable description of the security event | [optional] |
| **is_opening_process_complete** | **Boolean** | Indicates if the security event is &#39;Opening Process Complete&#39; (&#39;O&#39;/0x4f). | [optional] |
| **is_closing_process_complete** | **Boolean** | Indicates if the security event is &#39;Closing Process Complete&#39; (&#39;C&#39;/0x43). | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AdminSecurityEventModel.new(
  symbol: null,
  timestamp_nanos: null,
  timestamp: null,
  security_event: null,
  security_event_code: null,
  security_event_text: null,
  is_opening_process_complete: null,
  is_closing_process_complete: null
)
```

