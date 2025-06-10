# OpenapiClient::V1GeneralData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** | Gets or sets the entry time for the data point. | [optional] |
| **recv_time** | **Time** | Gets or sets the received time for the data point. | [optional] |
| **exchange_id** | **String** | Gets or sets the identifier for the exchange. | [optional] |
| **asset_id** | **String** | Gets or sets the identifier for the asset. | [optional] |
| **symbol_id** | **String** | Gets or sets the identifier for the symbol. | [optional] |
| **metric_id** | **String** | Gets or sets the identifier for the metric. | [optional] |
| **value_decimal** | **Float** | Gets or sets the decimal value for the metric. | [optional] |
| **value_text** | **String** | Gets or sets the textual representation of the value for the metric. | [optional] |
| **value_time** | **Time** | Gets or sets the timestamp value for the metric. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::V1GeneralData.new(
  entry_time: null,
  recv_time: null,
  exchange_id: null,
  asset_id: null,
  symbol_id: null,
  metric_id: null,
  value_decimal: null,
  value_text: null,
  value_time: null
)
```

