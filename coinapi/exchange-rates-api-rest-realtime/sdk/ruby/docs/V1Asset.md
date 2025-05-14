# OpenapiClient::V1Asset

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | Gets or sets the asset ID. | [optional] |
| **name** | **String** | Gets or sets the name of the asset. | [optional] |
| **type_is_crypto** | **Integer** | Gets or sets a value indicating whether the asset is a cryptocurrency. | [optional] |
| **data_quote_start** | **Time** | Gets or sets the start date of quote data. | [optional] |
| **data_quote_end** | **Time** | Gets or sets the end date of quote data. | [optional] |
| **data_orderbook_start** | **Time** | Gets or sets the start date of order book data. | [optional] |
| **data_orderbook_end** | **Time** | Gets or sets the end date of order book data. | [optional] |
| **data_trade_start** | **Time** | Gets or sets the start date of trade data. | [optional] |
| **data_trade_end** | **Time** | Gets or sets the end date of trade data. | [optional] |
| **data_symbols_count** | **Integer** | Gets or sets the number of symbols. | [optional] |
| **volume_1hrs_usd** | **Float** | Gets or sets the USD volume in the last 1 hour. | [optional] |
| **volume_1day_usd** | **Float** | Gets or sets the USD volume in the last 1 day. | [optional] |
| **volume_1mth_usd** | **Float** | Gets or sets the USD volume in the last 1 month. | [optional] |
| **price_usd** | **Float** | Gets or sets the USD price of the asset. | [optional] |
| **id_icon** | **String** | Gets or sets the ID of the icon for the asset. | [optional] |
| **supply_current** | **Float** | Gets or sets the current supply of the asset. | [optional] |
| **supply_total** | **Float** | Gets or sets the total supply of the asset. | [optional] |
| **supply_max** | **Float** | Gets or sets the maximum supply of the asset. | [optional] |
| **chain_addresses** | [**Array&lt;V1ChainNetworkAddress&gt;**](V1ChainNetworkAddress.md) |  | [optional] |
| **data_start** | **String** |  | [optional][readonly] |
| **data_end** | **String** |  | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::V1Asset.new(
  asset_id: null,
  name: null,
  type_is_crypto: null,
  data_quote_start: null,
  data_quote_end: null,
  data_orderbook_start: null,
  data_orderbook_end: null,
  data_trade_start: null,
  data_trade_end: null,
  data_symbols_count: null,
  volume_1hrs_usd: null,
  volume_1day_usd: null,
  volume_1mth_usd: null,
  price_usd: null,
  id_icon: null,
  supply_current: null,
  supply_total: null,
  supply_max: null,
  chain_addresses: null,
  data_start: null,
  data_end: null
)
```

