# OpenapiClient::OptionsOptionExchangeGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id_base** | **String** | The base asset identifier. | [optional] |
| **asset_id_quote** | **String** | The quote asset identifier. | [optional] |
| **underlying_price** | **Float** | The underlying price of the option. | [optional] |
| **time_expiration** | **Time** | The expiration time of the option. | [optional] |
| **strikes** | [**Array&lt;OptionsStrike&gt;**](OptionsStrike.md) | The list of strikes available. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OptionsOptionExchangeGroup.new(
  asset_id_base: null,
  asset_id_quote: null,
  underlying_price: null,
  time_expiration: null,
  strikes: null
)
```

