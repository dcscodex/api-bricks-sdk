# Level3OrderBookModel

Represents the response DTO for Level-3 order book information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**add_order** | [**Level3AddOrderModel**](Level3AddOrderModel.md) |  | [optional] 
**delete_order** | [**Level3DeleteOrderModel**](Level3DeleteOrderModel.md) |  | [optional] 
**modify_order** | [**Level3ModifyOrderModel**](Level3ModifyOrderModel.md) |  | [optional] 
**executed_order** | [**Level3ExecutedOrderModel**](Level3ExecutedOrderModel.md) |  | [optional] 
**clear_book** | [**Level3ClearBookModel**](Level3ClearBookModel.md) |  | [optional] 

## Example

```python
from api_bricks_stock_api_rest.models.level3_order_book_model import Level3OrderBookModel

# TODO update the JSON string below
json = "{}"
# create an instance of Level3OrderBookModel from a JSON string
level3_order_book_model_instance = Level3OrderBookModel.from_json(json)
# print the JSON string representation of the object
print(Level3OrderBookModel.to_json())

# convert the object into a dict
level3_order_book_model_dict = level3_order_book_model_instance.to_dict()
# create an instance of Level3OrderBookModel from a dict
level3_order_book_model_from_dict = Level3OrderBookModel.from_dict(level3_order_book_model_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


