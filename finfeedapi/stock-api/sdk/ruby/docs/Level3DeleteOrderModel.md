# OpenapiClient::Level3DeleteOrderModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The stock symbol | [optional] |
| **timestamp_nanos** | **Integer** | Original timestamp in nanoseconds since epoch | [optional] |
| **timestamp** | **Time** | Time when the order was deleted as DateTime | [optional] |
| **order_id_reference** | **Integer** | Order identifier reference | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Level3DeleteOrderModel.new(
  symbol: null,
  timestamp_nanos: null,
  timestamp: null,
  order_id_reference: null
)
```

