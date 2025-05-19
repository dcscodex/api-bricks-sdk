# V1TimeseriesPeriod

Represents a timeseries period used in exchange rate data.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**period_id** | **str** | The period ID. | [optional] 
**length_seconds** | **int** | The length of the period in seconds. | [optional] 
**length_months** | **int** | The length of the period in months. | [optional] 
**unit_count** | **int** | The unit count. | [optional] 
**unit_name** | **str** | The unit name. | [optional] 
**display_name** | **str** | The display name of the timeseries period. | [optional] 

## Example

```python
from api_bricks_coinapi_exchange_rates_api_rest_historical.models.v1_timeseries_period import V1TimeseriesPeriod

# TODO update the JSON string below
json = "{}"
# create an instance of V1TimeseriesPeriod from a JSON string
v1_timeseries_period_instance = V1TimeseriesPeriod.from_json(json)
# print the JSON string representation of the object
print(V1TimeseriesPeriod.to_json())

# convert the object into a dict
v1_timeseries_period_dict = v1_timeseries_period_instance.to_dict()
# create an instance of V1TimeseriesPeriod from a dict
v1_timeseries_period_from_dict = V1TimeseriesPeriod.from_dict(v1_timeseries_period_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


