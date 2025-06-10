# OpenapiClient::V1Quote

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol_id** | **String** | The symbol identifier. | [optional] |
| **time_exchange** | **Time** | The exchange time of the quote. | [optional] |
| **time_coinapi** | **Time** | The CoinAPI time when the quote was received. | [optional] |
| **ask_price** | **Float** | The best asking price. | [optional] |
| **ask_size** | **Float** | The volume resting on the best ask. If the value is equal to zero, then the size is unknown. | [optional] |
| **bid_price** | **Float** | The best bidding price. | [optional] |
| **bid_size** | **Float** | The volume resting on the best bid. If the value is equal to zero, then the size is unknown. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::V1Quote.new(
  symbol_id: null,
  time_exchange: null,
  time_coinapi: null,
  ask_price: null,
  ask_size: null,
  bid_price: null,
  bid_size: null
)
```

