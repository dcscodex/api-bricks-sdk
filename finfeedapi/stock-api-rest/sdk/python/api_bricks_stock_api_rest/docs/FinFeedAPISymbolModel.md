# FinFeedAPISymbolModel


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol_id** | **str** |  | [optional] 
**exchange_id** | **str** |  | [optional] 
**security_category** | **str** |  | [optional] [readonly] 
**name** | **str** |  | [optional] 
**var_date** | **str** |  | [optional] 
**asset_class** | **str** |  | [optional] 

## Example

```python
from api_bricks_stock_api_rest.models.fin_feed_api_symbol_model import FinFeedAPISymbolModel

# TODO update the JSON string below
json = "{}"
# create an instance of FinFeedAPISymbolModel from a JSON string
fin_feed_api_symbol_model_instance = FinFeedAPISymbolModel.from_json(json)
# print the JSON string representation of the object
print(FinFeedAPISymbolModel.to_json())

# convert the object into a dict
fin_feed_api_symbol_model_dict = fin_feed_api_symbol_model_instance.to_dict()
# create an instance of FinFeedAPISymbolModel from a dict
fin_feed_api_symbol_model_from_dict = FinFeedAPISymbolModel.from_dict(fin_feed_api_symbol_model_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


