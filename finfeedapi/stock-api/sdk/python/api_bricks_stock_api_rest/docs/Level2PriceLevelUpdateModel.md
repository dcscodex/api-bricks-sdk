# Level2PriceLevelUpdateModel

Represents the response DTO for price level update information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **str** | The stock symbol | [optional] 
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **datetime** | Time when the price level update was recorded as DateTime | [optional] 
**is_side_buy** | **bool** | Indicates if this is a price level update for the Buy Side. | [optional] 
**is_event_processing_complete** | **bool** | Indicates if event processing is complete. | [optional] 
**size** | **int** | Aggregate quoted size at the price level | [optional] 
**price** | **float** | Price level as decimal | [optional] 

## Example

```python
from api_bricks_stock_api_rest.models.level2_price_level_update_model import Level2PriceLevelUpdateModel

# TODO update the JSON string below
json = "{}"
# create an instance of Level2PriceLevelUpdateModel from a JSON string
level2_price_level_update_model_instance = Level2PriceLevelUpdateModel.from_json(json)
# print the JSON string representation of the object
print(Level2PriceLevelUpdateModel.to_json())

# convert the object into a dict
level2_price_level_update_model_dict = level2_price_level_update_model_instance.to_dict()
# create an instance of Level2PriceLevelUpdateModel from a dict
level2_price_level_update_model_from_dict = Level2PriceLevelUpdateModel.from_dict(level2_price_level_update_model_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


