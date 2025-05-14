# Level3AddOrderModel

Represents the response DTO for add order information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **str** | The stock symbol | [optional] 
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **datetime** | Time when the order was added as DateTime (UTC) | [optional] 
**is_side_buy** | **bool** | Indicates if this is a Buy order (&#39;8&#39;/0x38). | [optional] 
**size** | **int** | Quoted size in number of shares | [optional] 
**price** | **float** | Price as decimal | [optional] 
**order_id** | **int** | Order identifier | [optional] 

## Example

```python
from api_bricks_stock_api_rest.models.level3_add_order_model import Level3AddOrderModel

# TODO update the JSON string below
json = "{}"
# create an instance of Level3AddOrderModel from a JSON string
level3_add_order_model_instance = Level3AddOrderModel.from_json(json)
# print the JSON string representation of the object
print(Level3AddOrderModel.to_json())

# convert the object into a dict
level3_add_order_model_dict = level3_add_order_model_instance.to_dict()
# create an instance of Level3AddOrderModel from a dict
level3_add_order_model_from_dict = Level3AddOrderModel.from_dict(level3_add_order_model_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


