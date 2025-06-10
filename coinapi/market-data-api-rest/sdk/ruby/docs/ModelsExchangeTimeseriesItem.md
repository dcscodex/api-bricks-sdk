# OpenapiClient::ModelsExchangeTimeseriesItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time_period_start** | **Time** | The start time of the time period. | [optional] |
| **time_period_end** | **Time** | The end time of the time period. | [optional] |
| **time_open** | **Time** | The time when the price opened. | [optional] |
| **time_close** | **Time** | The time when the price closed. | [optional] |
| **price_open** | **Float** | The opening price. | [optional] |
| **price_high** | **Float** | The highest price during the time period. | [optional] |
| **price_low** | **Float** | The lowest price during the time period. | [optional] |
| **price_close** | **Float** | The closing price. | [optional] |
| **volume_traded** | **Float** | The total volume traded during the time period. | [optional] |
| **trades_count** | **Integer** | The number of trades executed during the time period. | [optional] |
| **symbol_id_exchange** | **String** |  | [optional] |
| **symbol_id_coinapi** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelsExchangeTimeseriesItem.new(
  time_period_start: null,
  time_period_end: null,
  time_open: null,
  time_close: null,
  price_open: null,
  price_high: null,
  price_low: null,
  price_close: null,
  volume_traded: null,
  trades_count: null,
  symbol_id_exchange: null,
  symbol_id_coinapi: null
)
```

