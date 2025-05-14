# IndexesIndexDefinitionSnapshotEntry


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**index_id** | **str** |  | [optional] 
**timestamp** | **datetime** |  | [optional] 
**value** | **float** |  | [optional] 

## Example

```python
from api_bricks_coinapi_indexes_api_rest.models.indexes_index_definition_snapshot_entry import IndexesIndexDefinitionSnapshotEntry

# TODO update the JSON string below
json = "{}"
# create an instance of IndexesIndexDefinitionSnapshotEntry from a JSON string
indexes_index_definition_snapshot_entry_instance = IndexesIndexDefinitionSnapshotEntry.from_json(json)
# print the JSON string representation of the object
print(IndexesIndexDefinitionSnapshotEntry.to_json())

# convert the object into a dict
indexes_index_definition_snapshot_entry_dict = indexes_index_definition_snapshot_entry_instance.to_dict()
# create an instance of IndexesIndexDefinitionSnapshotEntry from a dict
indexes_index_definition_snapshot_entry_from_dict = IndexesIndexDefinitionSnapshotEntry.from_dict(indexes_index_definition_snapshot_entry_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


