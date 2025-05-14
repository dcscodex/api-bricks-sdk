# OpenapiClient::V1ExchangeRatesRate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time** | **Time** | Gets or sets the time of the exchange rate. | [optional] |
| **asset_id_quote** | **String** | Gets or sets the quote asset ID of the exchange rate. | [optional] |
| **rate** | **Float** | Gets or sets the exchange rate value. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::V1ExchangeRatesRate.new(
  time: null,
  asset_id_quote: null,
  rate: null
)
```

