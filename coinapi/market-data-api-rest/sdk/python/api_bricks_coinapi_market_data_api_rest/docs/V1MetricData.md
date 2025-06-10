# V1MetricData

Represents a data model for metric data.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol_id** | **str** | Gets or sets the symbol id. | [optional] 
**time** | **datetime** | Gets or sets the time at which the value is recorded. | [optional] 
**value** | **float** | Gets or sets the value of the metric. | [optional] 

## Example

```python
from api_bricks_coinapi_market_data_api_rest.models.v1_metric_data import V1MetricData

# TODO update the JSON string below
json = "{}"
# create an instance of V1MetricData from a JSON string
v1_metric_data_instance = V1MetricData.from_json(json)
# print the JSON string representation of the object
print(V1MetricData.to_json())

# convert the object into a dict
v1_metric_data_dict = v1_metric_data_instance.to_dict()
# create an instance of V1MetricData from a dict
v1_metric_data_from_dict = V1MetricData.from_dict(v1_metric_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


