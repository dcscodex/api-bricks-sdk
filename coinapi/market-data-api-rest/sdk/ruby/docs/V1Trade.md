# OpenapiClient::V1Trade

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol_id** | **String** | The symbol identifier. | [optional] |
| **time_exchange** | **Time** | The time of trade reported by the exchange. | [optional] |
| **time_coinapi** | **Time** | The time when the trade was received by CoinAPI. | [optional] |
| **uuid** | **String** | The unique identifier for the trade. | [optional] |
| **price** | **Float** | The price of the transaction. | [optional] |
| **size** | **Float** | The base asset amount traded in the transaction. | [optional] |
| **taker_side** | **String** | The aggressor side of the transaction (BUY/SELL/BUY_ESTIMATED/SELL_ESTIMATED/UNKNOWN). | [optional] |
| **id_trade** | **String** | The trade identifier. | [optional] |
| **id_order_maker** | **String** | The order maker identifier. | [optional] |
| **id_order_taker** | **String** | The order taker identifier. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::V1Trade.new(
  symbol_id: null,
  time_exchange: null,
  time_coinapi: null,
  uuid: null,
  price: null,
  size: null,
  taker_side: null,
  id_trade: null,
  id_order_maker: null,
  id_order_taker: null
)
```

