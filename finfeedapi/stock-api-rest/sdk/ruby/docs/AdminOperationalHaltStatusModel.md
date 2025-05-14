# OpenapiClient::AdminOperationalHaltStatusModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The stock symbol | [optional] |
| **timestamp_nanos** | **Integer** | Original timestamp in nanoseconds since epoch | [optional] |
| **timestamp** | **Time** | Time when the operational halt status was recorded as DateTime | [optional] |
| **operational_halt_status** | **Integer** | Operational halt status as byte value | [optional] |
| **operational_halt_status_code** | **String** | Operational halt status as character string | [optional] |
| **operational_halt_status_text** | **String** | Human-readable description of the operational halt status | [optional] |
| **is_operationally_halted** | **Boolean** | Indicates if the status is &#39;IEX specific operational trading halt&#39; (&#39;O&#39;/0x4f). | [optional] |
| **is_not_operationally_halted** | **Boolean** | Indicates if the status is &#39;Not operationally halted on IEX&#39; (&#39;N&#39;/0x4e). | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AdminOperationalHaltStatusModel.new(
  symbol: null,
  timestamp_nanos: null,
  timestamp: null,
  operational_halt_status: null,
  operational_halt_status_code: null,
  operational_halt_status_text: null,
  is_operationally_halted: null,
  is_not_operationally_halted: null
)
```

