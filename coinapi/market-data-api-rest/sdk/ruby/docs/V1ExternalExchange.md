# OpenapiClient::V1ExternalExchange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_id** | **String** | Gets or sets the internal exchange identifier. | [optional] |
| **external_name** | **String** | Gets or sets the external protocol name/slug. | [optional] |
| **description** | **String** | Gets or sets the description of the exchange. | [optional] |
| **source_id** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::V1ExternalExchange.new(
  exchange_id: null,
  external_name: null,
  description: null,
  source_id: null
)
```

