# OpenapiClient::Level2PriceLevelUpdateModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The stock symbol | [optional] |
| **timestamp_nanos** | **Integer** | Original timestamp in nanoseconds since epoch | [optional] |
| **timestamp** | **Time** | Time when the price level update was recorded as DateTime | [optional] |
| **is_side_buy** | **Boolean** | Indicates if this is a price level update for the Buy Side. | [optional] |
| **is_event_processing_complete** | **Boolean** | Indicates if event processing is complete. | [optional] |
| **size** | **Integer** | Aggregate quoted size at the price level | [optional] |
| **price** | **Float** | Price level as decimal | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Level2PriceLevelUpdateModel.new(
  symbol: null,
  timestamp_nanos: null,
  timestamp: null,
  is_side_buy: null,
  is_event_processing_complete: null,
  size: null,
  price: null
)
```

