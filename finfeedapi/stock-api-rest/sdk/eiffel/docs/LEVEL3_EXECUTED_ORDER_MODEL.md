# LEVEL3_EXECUTED_ORDER_MODEL

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | [**STRING_32**](STRING_32.md) | The stock symbol | [optional] [default to null]
**timestamp_nanos** | **INTEGER_64** | Original timestamp in nanoseconds since epoch | [optional] [default to null]
**timestamp** | [**DATE_TIME**](DATE_TIME.md) | Time when the order was executed as DateTime | [optional] [default to null]
**order_id_reference** | **INTEGER_64** | Order identifier reference | [optional] [default to null]
**sale_condition_flags** | **INTEGER_32** | Sale condition flags for the execution as byte value | [optional] [default to null]
**is_intermarket_sweep** | **BOOLEAN** | Bit 7 (Mask 0x80): Intermarket Sweep Flag True: Intermarket Sweep Order (\&quot;ISO\&quot;) False: Non-Intermarket Sweep Order | [optional] [default to null]
**is_extended_hours_trade** | **BOOLEAN** | Bit 6 (Mask 0x40): Extended Hours Flag True: Extended Hours Trade (i.e., Form T sale condition) False: Regular Market Session Trade | [optional] [default to null]
**is_odd_lot_trade** | **BOOLEAN** | Bit 5 (Mask 0x20): Odd Lot Flag True: Odd Lot Trade False: Round or Mixed Lot Trade | [optional] [default to null]
**is_trade_through_exempt** | **BOOLEAN** | Bit 4 (Mask 0x10): Trade Through Exempt Flag True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS | [optional] [default to null]
**is_single_price_cross_trade** | **BOOLEAN** | Bit 3 (Mask 0x08): Single-price Cross Trade Flag True: Trade resulting from a single-price cross False: Execution during continuous trading | [optional] [default to null]
**size** | **INTEGER_32** | Trade volume in number of shares | [optional] [default to null]
**price** | **REAL_64** | Execution price as decimal | [optional] [default to null]
**trade_id** | **INTEGER_64** | IEX trade identifier | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


