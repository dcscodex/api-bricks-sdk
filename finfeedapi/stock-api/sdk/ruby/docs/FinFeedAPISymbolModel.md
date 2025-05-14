# OpenapiClient::FinFeedAPISymbolModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol_id** | **String** |  | [optional] |
| **exchange_id** | **String** |  | [optional] |
| **security_category** | **String** |  | [optional][readonly] |
| **name** | **String** |  | [optional] |
| **date** | **String** |  | [optional] |
| **asset_class** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::FinFeedAPISymbolModel.new(
  symbol_id: null,
  exchange_id: null,
  security_category: null,
  name: null,
  date: null,
  asset_class: null
)
```

