# OpenapiClient::Level3ModifyOrderModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The stock symbol | [optional] |
| **timestamp_nanos** | **Integer** | Original timestamp in nanoseconds since epoch | [optional] |
| **timestamp** | **Time** | Time when the order was modified as DateTime (UTC) | [optional] |
| **order_id_reference** | **Integer** | Order identifier reference | [optional] |
| **is_priority_reset** | **Boolean** | Indicates if priority is reseted | [optional] |
| **size** | **Integer** | New total quoted size in number of shares | [optional] |
| **price** | **Float** | Price as decimal | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Level3ModifyOrderModel.new(
  symbol: null,
  timestamp_nanos: null,
  timestamp: null,
  order_id_reference: null,
  is_priority_reset: null,
  size: null,
  price: null
)
```

