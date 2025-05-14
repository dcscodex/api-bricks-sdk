# IndexesIndexDefinitionInputData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_id** | **str** |  | [optional] 
**exchange_symbol_id** | **str** |  | [optional] 
**base_asset_id** | **str** |  | [optional] 
**quote_asset_id** | **str** |  | [optional] 
**begin_date** | **datetime** |  | [optional] 
**end_date** | **datetime** |  | [optional] 
**status** | **str** |  | [optional] 
**status_info** | **str** |  | [optional] 
**last_modification_time** | **datetime** |  | [optional] 

## Example

```python
from api_bricks_coinapi_indexes_api_rest.models.indexes_index_definition_input_data import IndexesIndexDefinitionInputData

# TODO update the JSON string below
json = "{}"
# create an instance of IndexesIndexDefinitionInputData from a JSON string
indexes_index_definition_input_data_instance = IndexesIndexDefinitionInputData.from_json(json)
# print the JSON string representation of the object
print(IndexesIndexDefinitionInputData.to_json())

# convert the object into a dict
indexes_index_definition_input_data_dict = indexes_index_definition_input_data_instance.to_dict()
# create an instance of IndexesIndexDefinitionInputData from a dict
indexes_index_definition_input_data_from_dict = IndexesIndexDefinitionInputData.from_dict(indexes_index_definition_input_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


