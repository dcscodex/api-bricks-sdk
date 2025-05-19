# OpenapiClient::V1TimeseriesPeriod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **period_id** | **String** | The period ID. | [optional] |
| **length_seconds** | **Integer** | The length of the period in seconds. | [optional] |
| **length_months** | **Integer** | The length of the period in months. | [optional] |
| **unit_count** | **Integer** | The unit count. | [optional] |
| **unit_name** | **String** | The unit name. | [optional] |
| **display_name** | **String** | The display name of the timeseries period. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::V1TimeseriesPeriod.new(
  period_id: null,
  length_seconds: null,
  length_months: null,
  unit_count: null,
  unit_name: null,
  display_name: null
)
```

