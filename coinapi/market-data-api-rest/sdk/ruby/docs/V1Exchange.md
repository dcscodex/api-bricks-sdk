# OpenapiClient::V1Exchange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_id** | **String** | Gets or sets the exchange ID. | [optional] |
| **website** | **String** | Gets or sets the website URL of the exchange. | [optional] |
| **name** | **String** | Gets or sets the name of the exchange. | [optional] |
| **data_start** | **String** |  | [optional][readonly] |
| **data_end** | **String** |  | [optional][readonly] |
| **data_quote_start** | **Time** | Gets or sets the start date of quote data. | [optional] |
| **data_quote_end** | **Time** | Gets or sets the end date of quote data. | [optional] |
| **data_orderbook_start** | **Time** | Gets or sets the start date of order book data. | [optional] |
| **data_orderbook_end** | **Time** | Gets or sets the end date of order book data. | [optional] |
| **data_trade_start** | **Time** | Gets or sets the start date of trade data. | [optional] |
| **data_trade_end** | **Time** | Gets or sets the end date of trade data. | [optional] |
| **data_trade_count** | **Integer** | Gets or sets the number of trades. | [optional] |
| **data_symbols_count** | **Integer** | Gets or sets the number of symbols. | [optional] |
| **volume_1hrs_usd** | **Float** | Gets or sets the USD volume in the last 1 hour. | [optional] |
| **volume_1day_usd** | **Float** | Gets or sets the USD volume in the last 1 day. | [optional] |
| **volume_1mth_usd** | **Float** | Gets or sets the USD volume in the last 1 month. | [optional] |
| **metric_id** | **Array&lt;String&gt;** | Gets or sets the list of metric IDs. | [optional] |
| **icons** | [**Array&lt;V1Icon&gt;**](V1Icon.md) | Gets or sets the list of icons for the exchange. | [optional][readonly] |
| **rank** | **Float** | Rank of the exchange. | [optional] |
| **integration_status** | **String** | Status of the integration | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::V1Exchange.new(
  exchange_id: null,
  website: null,
  name: null,
  data_start: null,
  data_end: null,
  data_quote_start: null,
  data_quote_end: null,
  data_orderbook_start: null,
  data_orderbook_end: null,
  data_trade_start: null,
  data_trade_end: null,
  data_trade_count: null,
  data_symbols_count: null,
  volume_1hrs_usd: null,
  volume_1day_usd: null,
  volume_1mth_usd: null,
  metric_id: null,
  icons: null,
  rank: null,
  integration_status: null
)
```

