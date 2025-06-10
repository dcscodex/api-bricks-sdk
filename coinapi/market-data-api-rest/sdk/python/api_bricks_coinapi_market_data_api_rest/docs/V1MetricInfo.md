# V1MetricInfo

Represents a metric information.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metric_id** | **str** | Gets or sets the metric identifier. | [optional] 
**description** | **str** | Gets or sets the description of the metric. | [optional] 
**source_id** | **str** | Gets or sets the source identifier of the metric. | [optional] 

## Example

```python
from api_bricks_coinapi_market_data_api_rest.models.v1_metric_info import V1MetricInfo

# TODO update the JSON string below
json = "{}"
# create an instance of V1MetricInfo from a JSON string
v1_metric_info_instance = V1MetricInfo.from_json(json)
# print the JSON string representation of the object
print(V1MetricInfo.to_json())

# convert the object into a dict
v1_metric_info_dict = v1_metric_info_instance.to_dict()
# create an instance of V1MetricInfo from a dict
v1_metric_info_from_dict = V1MetricInfo.from_dict(v1_metric_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


