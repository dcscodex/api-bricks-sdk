# OpenapiClient::Level1QuoteUpdateModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The stock symbol | [optional] |
| **timestamp_nanos** | **Integer** | Original timestamp in nanoseconds since epoch | [optional] |
| **timestamp** | **Time** | Time when the quote update was recorded as DateTime | [optional] |
| **is_symbol_available** | **Boolean** | Gets whether the symbol is available for trading True if active, False if halted, paused, or otherwise not available | [optional] |
| **is_pre_post_market_session** | **Boolean** | Gets whether the market session is regular or pre/post-market True if pre/post-market session, False if regular market session | [optional] |
| **ask_size** | **Integer** | Ask size in number of shares | [optional] |
| **ask_price** | **Float** | Ask price as decimal | [optional] |
| **bid_price** | **Float** | Bid price as decimal | [optional] |
| **bid_size** | **Integer** | Bid size in number of shares | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Level1QuoteUpdateModel.new(
  symbol: null,
  timestamp_nanos: null,
  timestamp: null,
  is_symbol_available: null,
  is_pre_post_market_session: null,
  ask_size: null,
  ask_price: null,
  bid_price: null,
  bid_size: null
)
```

