# OpenapiClient::V1Symbol

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol_id** | **String** | The symbol identifier. | [optional] |
| **exchange_id** | **String** | The exchange identifier. | [optional] |
| **symbol_type** | **String** | The symbol type. | [optional] |
| **asset_id_base** | **String** | The base asset identifier. | [optional] |
| **asset_id_quote** | **String** | The quote asset identifier. | [optional] |
| **asset_id_unit** | **String** | The unit asset identifier. | [optional] |
| **future_contract_unit** | **Float** | The contract unit for futures. | [optional] |
| **future_contract_unit_asset** | **String** | The asset used as the unit for futures contract. | [optional] |
| **future_delivery_time** | **Time** | The future delivery time for futures contract. | [optional] |
| **option_type_is_call** | **Boolean** | Indicates whether the option type is a call. | [optional] |
| **option_strike_price** | **Float** | The strike price for options. | [optional] |
| **option_contract_unit** | **Float** | The contract unit for options. | [optional] |
| **option_exercise_style** | **String** | The exercise style for options. | [optional] |
| **option_expiration_time** | **Time** | The expiration time for options. | [optional] |
| **contract_delivery_time** | **Time** | The delivery time for contracts. | [optional] |
| **contract_unit** | **Float** | The contract unit for contracts. | [optional] |
| **contract_unit_asset** | **String** | The asset used as the unit for contracts. | [optional] |
| **contract_id** | **String** | The contract identifier. | [optional] |
| **contract_display_name** | **String** | The display name of the contract. | [optional] |
| **contract_display_description** | **String** | The display description of the contract. | [optional] |
| **data_start** | **String** |  | [optional][readonly] |
| **data_end** | **String** |  | [optional][readonly] |
| **data_quote_start** | **Time** | The start date of quote data. | [optional] |
| **data_quote_end** | **Time** | The end date of quote data. | [optional] |
| **data_orderbook_start** | **Time** | The start date of order book data. | [optional] |
| **data_orderbook_end** | **Time** | The end date of order book data. | [optional] |
| **data_trade_start** | **Time** | The start date of trade data. | [optional] |
| **data_trade_end** | **Time** | The end date of trade data. | [optional] |
| **index_id** | **String** | The index identifier. | [optional] |
| **index_display_name** | **String** | The display name of the index. | [optional] |
| **index_display_description** | **String** | The display description of the index. | [optional] |
| **volume_1hrs** | **Float** | The volume in the last 1 hour. | [optional] |
| **volume_1hrs_usd** | **Float** | The volume in USD in the last 1 hour. | [optional] |
| **volume_1day** | **Float** | The volume in the last 1 day. | [optional] |
| **volume_1day_usd** | **Float** | The volume in USD in the last 1 day. | [optional] |
| **volume_1mth** | **Float** | The volume in the last 1 month. | [optional] |
| **volume_1mth_usd** | **Float** | The volume in USD in the last 1 month. | [optional] |
| **price** | **Float** | The price. | [optional] |
| **symbol_id_exchange** | **String** | The symbol identifier in the exchange. | [optional] |
| **asset_id_base_exchange** | **String** | The base asset identifier in the exchange. | [optional] |
| **asset_id_quote_exchange** | **String** | The quote asset identifier in the exchange. | [optional] |
| **price_precision** | **Float** | The price precision. | [optional] |
| **size_precision** | **Float** | The size precision. | [optional] |
| **raw_kvp** | **Hash&lt;String, String&gt;** | Not normalized raw kvp data. | [optional] |
| **volume_to_usd** | **Float** | Volume unit in USD. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::V1Symbol.new(
  symbol_id: null,
  exchange_id: null,
  symbol_type: null,
  asset_id_base: null,
  asset_id_quote: null,
  asset_id_unit: null,
  future_contract_unit: null,
  future_contract_unit_asset: null,
  future_delivery_time: null,
  option_type_is_call: null,
  option_strike_price: null,
  option_contract_unit: null,
  option_exercise_style: null,
  option_expiration_time: null,
  contract_delivery_time: null,
  contract_unit: null,
  contract_unit_asset: null,
  contract_id: null,
  contract_display_name: null,
  contract_display_description: null,
  data_start: null,
  data_end: null,
  data_quote_start: null,
  data_quote_end: null,
  data_orderbook_start: null,
  data_orderbook_end: null,
  data_trade_start: null,
  data_trade_end: null,
  index_id: null,
  index_display_name: null,
  index_display_description: null,
  volume_1hrs: null,
  volume_1hrs_usd: null,
  volume_1day: null,
  volume_1day_usd: null,
  volume_1mth: null,
  volume_1mth_usd: null,
  price: null,
  symbol_id_exchange: null,
  asset_id_base_exchange: null,
  asset_id_quote_exchange: null,
  price_precision: null,
  size_precision: null,
  raw_kvp: null,
  volume_to_usd: null
)
```

