# OpenapiClient::Locations

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location_id** | **String** | CoinAPI location identifier | [optional] |
| **region_name** | **String** | Identifier of the region by the location provider | [optional] |
| **provider_name** | **String** | Identifier of the location provider | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Locations.new(
  location_id: aws-us-east-1,
  region_name: us-east-1,
  provider_name: aws
)
```

