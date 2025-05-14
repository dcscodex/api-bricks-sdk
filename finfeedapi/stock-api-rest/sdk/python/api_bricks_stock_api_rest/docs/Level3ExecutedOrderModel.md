# Level3ExecutedOrderModel

Represents the response DTO for order executed information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **str** | The stock symbol | [optional] 
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **datetime** | Time when the order was executed as DateTime | [optional] 
**order_id_reference** | **int** | Order identifier reference | [optional] 
**sale_condition_flags** | **int** | Sale condition flags for the execution as byte value | [optional] 
**is_intermarket_sweep** | **bool** | Bit 7 (Mask 0x80): Intermarket Sweep Flag  True: Intermarket Sweep Order (\&quot;ISO\&quot;)  False: Non-Intermarket Sweep Order | [optional] 
**is_extended_hours_trade** | **bool** | Bit 6 (Mask 0x40): Extended Hours Flag  True: Extended Hours Trade (i.e., Form T sale condition)  False: Regular Market Session Trade | [optional] 
**is_odd_lot_trade** | **bool** | Bit 5 (Mask 0x20): Odd Lot Flag  True: Odd Lot Trade  False: Round or Mixed Lot Trade | [optional] 
**is_trade_through_exempt** | **bool** | Bit 4 (Mask 0x10): Trade Through Exempt Flag  True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS  False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS | [optional] 
**is_single_price_cross_trade** | **bool** | Bit 3 (Mask 0x08): Single-price Cross Trade Flag  True: Trade resulting from a single-price cross  False: Execution during continuous trading | [optional] 
**size** | **int** | Trade volume in number of shares | [optional] 
**price** | **float** | Execution price as decimal | [optional] 
**trade_id** | **int** | IEX trade identifier | [optional] 

## Example

```python
from api_bricks_stock_api_rest.models.level3_executed_order_model import Level3ExecutedOrderModel

# TODO update the JSON string below
json = "{}"
# create an instance of Level3ExecutedOrderModel from a JSON string
level3_executed_order_model_instance = Level3ExecutedOrderModel.from_json(json)
# print the JSON string representation of the object
print(Level3ExecutedOrderModel.to_json())

# convert the object into a dict
level3_executed_order_model_dict = level3_executed_order_model_instance.to_dict()
# create an instance of Level3ExecutedOrderModel from a dict
level3_executed_order_model_from_dict = Level3ExecutedOrderModel.from_dict(level3_executed_order_model_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


