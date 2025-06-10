# OpenapiClient::OptionsStrike

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **strike_price** | **Float** | The strike price. | [optional] |
| **call** | [**V1QuoteTrade**](V1QuoteTrade.md) |  | [optional] |
| **put** | [**V1QuoteTrade**](V1QuoteTrade.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OptionsStrike.new(
  strike_price: null,
  call: null,
  put: null
)
```

