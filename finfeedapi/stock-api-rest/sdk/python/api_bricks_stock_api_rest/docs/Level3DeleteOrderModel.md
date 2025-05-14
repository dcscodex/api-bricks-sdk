# Level3DeleteOrderModel

Represents the response DTO for order delete information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **str** | The stock symbol | [optional] 
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **datetime** | Time when the order was deleted as DateTime | [optional] 
**order_id_reference** | **int** | Order identifier reference | [optional] 

## Example

```python
from api_bricks_stock_api_rest.models.level3_delete_order_model import Level3DeleteOrderModel

# TODO update the JSON string below
json = "{}"
# create an instance of Level3DeleteOrderModel from a JSON string
level3_delete_order_model_instance = Level3DeleteOrderModel.from_json(json)
# print the JSON string representation of the object
print(Level3DeleteOrderModel.to_json())

# convert the object into a dict
level3_delete_order_model_dict = level3_delete_order_model_instance.to_dict()
# create an instance of Level3DeleteOrderModel from a dict
level3_delete_order_model_from_dict = Level3DeleteOrderModel.from_dict(level3_delete_order_model_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


