# ModelsExchangeTimeseriesItem

Represents a timeseries item with price and volume information.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**time_period_start** | **datetime** | The start time of the time period. | [optional] 
**time_period_end** | **datetime** | The end time of the time period. | [optional] 
**time_open** | **datetime** | The time when the price opened. | [optional] 
**time_close** | **datetime** | The time when the price closed. | [optional] 
**price_open** | **float** | The opening price. | [optional] 
**price_high** | **float** | The highest price during the time period. | [optional] 
**price_low** | **float** | The lowest price during the time period. | [optional] 
**price_close** | **float** | The closing price. | [optional] 
**volume_traded** | **float** | The total volume traded during the time period. | [optional] 
**trades_count** | **int** | The number of trades executed during the time period. | [optional] 
**symbol_id_exchange** | **str** |  | [optional] 
**symbol_id_coinapi** | **str** |  | [optional] 

## Example

```python
from api_bricks_coinapi_market_data_api_rest.models.models_exchange_timeseries_item import ModelsExchangeTimeseriesItem

# TODO update the JSON string below
json = "{}"
# create an instance of ModelsExchangeTimeseriesItem from a JSON string
models_exchange_timeseries_item_instance = ModelsExchangeTimeseriesItem.from_json(json)
# print the JSON string representation of the object
print(ModelsExchangeTimeseriesItem.to_json())

# convert the object into a dict
models_exchange_timeseries_item_dict = models_exchange_timeseries_item_instance.to_dict()
# create an instance of ModelsExchangeTimeseriesItem from a dict
models_exchange_timeseries_item_from_dict = ModelsExchangeTimeseriesItem.from_dict(models_exchange_timeseries_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


