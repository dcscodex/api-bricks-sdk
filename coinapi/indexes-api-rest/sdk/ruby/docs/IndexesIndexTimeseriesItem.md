# OpenapiClient::IndexesIndexTimeseriesItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time_period_start** | **Time** | Gets or sets the start time of the time period. | [optional] |
| **time_period_end** | **Time** | Gets or sets the end time of the time period. | [optional] |
| **time_open** | **Time** | Gets or sets the time when the value opened. | [optional] |
| **time_close** | **Time** | Gets or sets the time when the value closed. | [optional] |
| **value_open** | **Float** | Gets or sets the opening value. | [optional] |
| **value_high** | **Float** | Gets or sets the highest value during the time period. | [optional] |
| **value_low** | **Float** | Gets or sets the lowest value during the time period. | [optional] |
| **value_close** | **Float** | Gets or sets the closing value. | [optional] |
| **value_count** | **Integer** | Gets or sets the number of values during the time period. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IndexesIndexTimeseriesItem.new(
  time_period_start: null,
  time_period_end: null,
  time_open: null,
  time_close: null,
  value_open: null,
  value_high: null,
  value_low: null,
  value_close: null,
  value_count: null
)
```

