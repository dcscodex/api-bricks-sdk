# OpenapiClient::Level3AddOrderModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The stock symbol | [optional] |
| **timestamp_nanos** | **Integer** | Original timestamp in nanoseconds since epoch | [optional] |
| **timestamp** | **Time** | Time when the order was added as DateTime (UTC) | [optional] |
| **is_side_buy** | **Boolean** | Indicates if this is a Buy order (&#39;8&#39;/0x38). | [optional] |
| **size** | **Integer** | Quoted size in number of shares | [optional] |
| **price** | **Float** | Price as decimal | [optional] |
| **order_id** | **Integer** | Order identifier | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Level3AddOrderModel.new(
  symbol: null,
  timestamp_nanos: null,
  timestamp: null,
  is_side_buy: null,
  size: null,
  price: null,
  order_id: null
)
```

