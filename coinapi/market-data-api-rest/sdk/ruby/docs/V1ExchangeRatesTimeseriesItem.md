# OpenapiClient::V1ExchangeRatesTimeseriesItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time_period_start** | **Time** | Gets or sets the start time of the period. | [optional] |
| **time_period_end** | **Time** | Gets or sets the end time of the period. | [optional] |
| **time_open** | **Time** | Gets or sets the opening time of the period. | [optional] |
| **time_close** | **Time** | Gets or sets the closing time of the period. | [optional] |
| **rate_open** | **Float** | Gets or sets the opening rate for the period. | [optional] |
| **rate_high** | **Float** | Gets or sets the highest rate for the period. | [optional] |
| **rate_low** | **Float** | Gets or sets the lowest rate for the period. | [optional] |
| **rate_close** | **Float** | Gets or sets the closing rate for the period. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::V1ExchangeRatesTimeseriesItem.new(
  time_period_start: null,
  time_period_end: null,
  time_open: null,
  time_close: null,
  rate_open: null,
  rate_high: null,
  rate_low: null,
  rate_close: null
)
```

