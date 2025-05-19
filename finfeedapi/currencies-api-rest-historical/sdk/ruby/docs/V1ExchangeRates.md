# OpenapiClient::V1ExchangeRates

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id_base** | **String** | Gets or sets the base asset ID. | [optional] |
| **rates** | [**Array&lt;V1ExchangeRatesRate&gt;**](V1ExchangeRatesRate.md) | Gets or sets the list of exchange rates. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::V1ExchangeRates.new(
  asset_id_base: null,
  rates: null
)
```

