# OpenapiClient::MetadataTimeseriesPeriod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **period_id** | **String** | Gets or sets the period ID. | [optional] |
| **length_seconds** | **Integer** | Gets or sets the length of the period in seconds. | [optional] |
| **length_months** | **Integer** | Gets or sets the length of the period in months. | [optional] |
| **unit_count** | **Integer** | Gets or sets the unit count. | [optional] |
| **unit_name** | **String** | Gets or sets the unit name. | [optional] |
| **display_name** | **String** | Gets or sets the display name of the timeseries period. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MetadataTimeseriesPeriod.new(
  period_id: null,
  length_seconds: null,
  length_months: null,
  unit_count: null,
  unit_name: null,
  display_name: null
)
```

