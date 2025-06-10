# V1Metric

Represents a metric.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metric_id** | **str** | Gets or sets the metric ID. | [optional] 
**description** | **str** | Gets or sets the metric description. | [optional] 

## Example

```python
from api_bricks_coinapi_market_data_api_rest.models.v1_metric import V1Metric

# TODO update the JSON string below
json = "{}"
# create an instance of V1Metric from a JSON string
v1_metric_instance = V1Metric.from_json(json)
# print the JSON string representation of the object
print(V1Metric.to_json())

# convert the object into a dict
v1_metric_dict = v1_metric_instance.to_dict()
# create an instance of V1Metric from a dict
v1_metric_from_dict = V1Metric.from_dict(v1_metric_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


