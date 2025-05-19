# IndexesIndexTimeseriesItem

Represents a timeseries item with value information.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**time_period_start** | **datetime** | Gets or sets the start time of the time period. | [optional] 
**time_period_end** | **datetime** | Gets or sets the end time of the time period. | [optional] 
**time_open** | **datetime** | Gets or sets the time when the value opened. | [optional] 
**time_close** | **datetime** | Gets or sets the time when the value closed. | [optional] 
**value_open** | **float** | Gets or sets the opening value. | [optional] 
**value_high** | **float** | Gets or sets the highest value during the time period. | [optional] 
**value_low** | **float** | Gets or sets the lowest value during the time period. | [optional] 
**value_close** | **float** | Gets or sets the closing value. | [optional] 
**value_count** | **int** | Gets or sets the number of values during the time period. | [optional] 

## Example

```python
from api_bricks_coinapi_indexes_api_rest.models.indexes_index_timeseries_item import IndexesIndexTimeseriesItem

# TODO update the JSON string below
json = "{}"
# create an instance of IndexesIndexTimeseriesItem from a JSON string
indexes_index_timeseries_item_instance = IndexesIndexTimeseriesItem.from_json(json)
# print the JSON string representation of the object
print(IndexesIndexTimeseriesItem.to_json())

# convert the object into a dict
indexes_index_timeseries_item_dict = indexes_index_timeseries_item_instance.to_dict()
# create an instance of IndexesIndexTimeseriesItem from a dict
indexes_index_timeseries_item_from_dict = IndexesIndexTimeseriesItem.from_dict(indexes_index_timeseries_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


