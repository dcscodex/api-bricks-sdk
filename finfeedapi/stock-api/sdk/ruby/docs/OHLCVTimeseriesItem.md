# OpenapiClient::OHLCVTimeseriesItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time_period_start** | **Time** | Gets or sets the start time of the time period. | [optional] |
| **time_period_end** | **Time** | Gets or sets the end time of the time period. | [optional] |
| **time_open** | **Time** | Gets or sets the time when the price opened. | [optional] |
| **time_close** | **Time** | Gets or sets the time when the price closed. | [optional] |
| **price_open** | **Float** | Gets or sets the opening price. | [optional] |
| **price_high** | **Float** | Gets or sets the highest price during the time period. | [optional] |
| **price_low** | **Float** | Gets or sets the lowest price during the time period. | [optional] |
| **price_close** | **Float** | Gets or sets the closing price. | [optional] |
| **volume_traded** | **Float** | Gets or sets the total volume traded during the time period. | [optional] |
| **trades_count** | **Integer** | Gets or sets the number of trades executed during the time period. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OHLCVTimeseriesItem.new(
  time_period_start: null,
  time_period_end: null,
  time_open: null,
  time_close: null,
  price_open: null,
  price_high: null,
  price_low: null,
  price_close: null,
  volume_traded: null,
  trades_count: null
)
```

