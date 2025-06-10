# OpenapiClient::V1OrderBookBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol_id** | **String** | The symbol identifier. | [optional] |
| **time_exchange** | **Time** | The exchange time of the order book. | [optional] |
| **time_coinapi** | **Time** | The CoinAPI time when the order book was received. | [optional] |
| **asks** | **Object** | The asks made by market makers. | [optional] |
| **bids** | **Object** | The bids made by market makers. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::V1OrderBookBase.new(
  symbol_id: null,
  time_exchange: null,
  time_coinapi: null,
  asks: null,
  bids: null
)
```

