# Level3ModifyOrderModel

Represents the response DTO for order modify information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **str** | The stock symbol | [optional] 
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **datetime** | Time when the order was modified as DateTime (UTC) | [optional] 
**order_id_reference** | **int** | Order identifier reference | [optional] 
**is_priority_reset** | **bool** | Indicates if priority is reseted | [optional] 
**size** | **int** | New total quoted size in number of shares | [optional] 
**price** | **float** | Price as decimal | [optional] 

## Example

```python
from api_bricks_stock_api_rest.models.level3_modify_order_model import Level3ModifyOrderModel

# TODO update the JSON string below
json = "{}"
# create an instance of Level3ModifyOrderModel from a JSON string
level3_modify_order_model_instance = Level3ModifyOrderModel.from_json(json)
# print the JSON string representation of the object
print(Level3ModifyOrderModel.to_json())

# convert the object into a dict
level3_modify_order_model_dict = level3_modify_order_model_instance.to_dict()
# create an instance of Level3ModifyOrderModel from a dict
level3_modify_order_model_from_dict = Level3ModifyOrderModel.from_dict(level3_modify_order_model_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


