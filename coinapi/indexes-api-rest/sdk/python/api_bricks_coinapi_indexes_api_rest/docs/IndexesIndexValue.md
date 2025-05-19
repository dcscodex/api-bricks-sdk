# IndexesIndexValue


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**timestamp** | **datetime** |  | [optional] 
**value** | **float** |  | [optional] 
**composition** | [**List[IndexesIndexValueComponent]**](IndexesIndexValueComponent.md) |  | [optional] 

## Example

```python
from api_bricks_coinapi_indexes_api_rest.models.indexes_index_value import IndexesIndexValue

# TODO update the JSON string below
json = "{}"
# create an instance of IndexesIndexValue from a JSON string
indexes_index_value_instance = IndexesIndexValue.from_json(json)
# print the JSON string representation of the object
print(IndexesIndexValue.to_json())

# convert the object into a dict
indexes_index_value_dict = indexes_index_value_instance.to_dict()
# create an instance of IndexesIndexValue from a dict
indexes_index_value_from_dict = IndexesIndexValue.from_dict(indexes_index_value_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


