# # Level3ExecutedOrderModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **string** | The stock symbol | [optional]
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional]
**timestamp** | **\DateTime** | Time when the order was executed as DateTime | [optional]
**order_id_reference** | **int** | Order identifier reference | [optional]
**sale_condition_flags** | **int** | Sale condition flags for the execution as byte value | [optional]
**is_intermarket_sweep** | **bool** | Bit 7 (Mask 0x80): Intermarket Sweep Flag True: Intermarket Sweep Order (\&quot;ISO\&quot;) False: Non-Intermarket Sweep Order | [optional]
**is_extended_hours_trade** | **bool** | Bit 6 (Mask 0x40): Extended Hours Flag True: Extended Hours Trade (i.e., Form T sale condition) False: Regular Market Session Trade | [optional]
**is_odd_lot_trade** | **bool** | Bit 5 (Mask 0x20): Odd Lot Flag True: Odd Lot Trade False: Round or Mixed Lot Trade | [optional]
**is_trade_through_exempt** | **bool** | Bit 4 (Mask 0x10): Trade Through Exempt Flag True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS | [optional]
**is_single_price_cross_trade** | **bool** | Bit 3 (Mask 0x08): Single-price Cross Trade Flag True: Trade resulting from a single-price cross False: Execution during continuous trading | [optional]
**size** | **int** | Trade volume in number of shares | [optional]
**price** | **float** | Execution price as decimal | [optional]
**trade_id** | **int** | IEX trade identifier | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
