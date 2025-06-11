# OpenapiClient::Level3ExecutedOrderModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The stock symbol | [optional] |
| **timestamp_nanos** | **Integer** | Original timestamp in nanoseconds since epoch | [optional] |
| **timestamp** | **Time** | Time when the order was executed as DateTime | [optional] |
| **order_id_reference** | **Integer** | Order identifier reference | [optional] |
| **sale_condition_flags** | **Integer** | Sale condition flags for the execution as byte value | [optional] |
| **is_intermarket_sweep** | **Boolean** | Bit 7 (Mask 0x80): Intermarket Sweep Flag True: Intermarket Sweep Order (\&quot;ISO\&quot;) False: Non-Intermarket Sweep Order | [optional] |
| **is_extended_hours_trade** | **Boolean** | Bit 6 (Mask 0x40): Extended Hours Flag True: Extended Hours Trade (i.e., Form T sale condition) False: Regular Market Session Trade | [optional] |
| **is_odd_lot_trade** | **Boolean** | Bit 5 (Mask 0x20): Odd Lot Flag True: Odd Lot Trade False: Round or Mixed Lot Trade | [optional] |
| **is_trade_through_exempt** | **Boolean** | Bit 4 (Mask 0x10): Trade Through Exempt Flag True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS | [optional] |
| **is_single_price_cross_trade** | **Boolean** | Bit 3 (Mask 0x08): Single-price Cross Trade Flag True: Trade resulting from a single-price cross False: Execution during continuous trading | [optional] |
| **size** | **Integer** | Trade volume in number of shares | [optional] |
| **price** | **Float** | Execution price as decimal | [optional] |
| **trade_id** | **Integer** | IEX trade identifier | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Level3ExecutedOrderModel.new(
  symbol: null,
  timestamp_nanos: null,
  timestamp: null,
  order_id_reference: null,
  sale_condition_flags: null,
  is_intermarket_sweep: null,
  is_extended_hours_trade: null,
  is_odd_lot_trade: null,
  is_trade_through_exempt: null,
  is_single_price_cross_trade: null,
  size: null,
  price: null,
  trade_id: null
)
```

