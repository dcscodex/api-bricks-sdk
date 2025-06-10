# OpenapiClient::V1LastTrade

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time_exchange** | **Time** | The exchange time of the last trade. | [optional] |
| **time_coinapi** | **Time** | The CoinAPI time when the last trade was received. | [optional] |
| **uuid** | **String** | The UUID of the last trade. | [optional] |
| **price** | **Float** | The price of the last trade. | [optional] |
| **size** | **Float** | The size of the last trade. | [optional] |
| **taker_side** | **String** | The taker side of the last trade. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::V1LastTrade.new(
  time_exchange: null,
  time_coinapi: null,
  uuid: null,
  price: null,
  size: null,
  taker_side: null
)
```

