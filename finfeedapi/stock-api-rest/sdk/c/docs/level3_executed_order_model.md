# level3_executed_order_model_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **char \*** | The stock symbol | [optional] 
**timestamp_nanos** | **long** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **char \*** | Time when the order was executed as DateTime | [optional] 
**order_id_reference** | **long** | Order identifier reference | [optional] 
**sale_condition_flags** | **int** | Sale condition flags for the execution as byte value | [optional] 
**is_intermarket_sweep** | **int** | Bit 7 (Mask 0x80): Intermarket Sweep Flag True: Intermarket Sweep Order (\&quot;ISO\&quot;) False: Non-Intermarket Sweep Order | [optional] 
**is_extended_hours_trade** | **int** | Bit 6 (Mask 0x40): Extended Hours Flag True: Extended Hours Trade (i.e., Form T sale condition) False: Regular Market Session Trade | [optional] 
**is_odd_lot_trade** | **int** | Bit 5 (Mask 0x20): Odd Lot Flag True: Odd Lot Trade False: Round or Mixed Lot Trade | [optional] 
**is_trade_through_exempt** | **int** | Bit 4 (Mask 0x10): Trade Through Exempt Flag True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS | [optional] 
**is_single_price_cross_trade** | **int** | Bit 3 (Mask 0x08): Single-price Cross Trade Flag True: Trade resulting from a single-price cross False: Execution during continuous trading | [optional] 
**size** | **int** | Trade volume in number of shares | [optional] 
**price** | **double** | Execution price as decimal | [optional] 
**trade_id** | **long** | IEX trade identifier | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


