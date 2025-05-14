# V1ExchangeRatesTimeseriesItem

Represents an item in the exchange rate timeseries.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**time_period_start** | **datetime** | Gets or sets the start time of the period. | [optional] 
**time_period_end** | **datetime** | Gets or sets the end time of the period. | [optional] 
**time_open** | **datetime** | Gets or sets the opening time of the period. | [optional] 
**time_close** | **datetime** | Gets or sets the closing time of the period. | [optional] 
**rate_open** | **float** | Gets or sets the opening rate for the period. | [optional] 
**rate_high** | **float** | Gets or sets the highest rate for the period. | [optional] 
**rate_low** | **float** | Gets or sets the lowest rate for the period. | [optional] 
**rate_close** | **float** | Gets or sets the closing rate for the period. | [optional] 

## Example

```python
from api_bricks_coinapi_exchange_rates_api_rest_historical.models.v1_exchange_rates_timeseries_item import V1ExchangeRatesTimeseriesItem

# TODO update the JSON string below
json = "{}"
# create an instance of V1ExchangeRatesTimeseriesItem from a JSON string
v1_exchange_rates_timeseries_item_instance = V1ExchangeRatesTimeseriesItem.from_json(json)
# print the JSON string representation of the object
print(V1ExchangeRatesTimeseriesItem.to_json())

# convert the object into a dict
v1_exchange_rates_timeseries_item_dict = v1_exchange_rates_timeseries_item_instance.to_dict()
# create an instance of V1ExchangeRatesTimeseriesItem from a dict
v1_exchange_rates_timeseries_item_from_dict = V1ExchangeRatesTimeseriesItem.from_dict(v1_exchange_rates_timeseries_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


