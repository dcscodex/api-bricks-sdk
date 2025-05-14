# OpenapiClient::Level3ClearBookModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The stock symbol | [optional] |
| **timestamp_nanos** | **Integer** | Original timestamp in nanoseconds since epoch | [optional] |
| **timestamp** | **Time** | Time when the book was cleared as DateTime | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Level3ClearBookModel.new(
  symbol: null,
  timestamp_nanos: null,
  timestamp: null
)
```

