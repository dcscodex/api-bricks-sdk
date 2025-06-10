# OpenapiClient::V1SymbolMapping

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol_id** | **String** | The symbol ID. | [optional] |
| **symbol_id_exchange** | **String** | The exchange-specific symbol ID. | [optional] |
| **coinapi_datainfo_id** | **Integer** | The CoinAPI DataInfo ID. | [optional] |
| **asset_id_base_exchange** | **String** | The exchange-specific base asset ID. | [optional] |
| **asset_id_quote_exchange** | **String** | The exchange-specific quote asset ID. | [optional] |
| **asset_id_base** | **String** | The base asset ID. | [optional] |
| **asset_id_quote** | **String** | The quote asset ID. | [optional] |
| **price_precision** | **Float** | The price precision. | [optional] |
| **size_precision** | **Float** | The size precision. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::V1SymbolMapping.new(
  symbol_id: null,
  symbol_id_exchange: null,
  coinapi_datainfo_id: null,
  asset_id_base_exchange: null,
  asset_id_quote_exchange: null,
  asset_id_base: null,
  asset_id_quote: null,
  price_precision: null,
  size_precision: null
)
```

