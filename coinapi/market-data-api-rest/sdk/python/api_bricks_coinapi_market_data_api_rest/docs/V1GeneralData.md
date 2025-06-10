# V1GeneralData

Class representation of general metric data. This class is an XML type with name 'general_data' and inherits from the BaseCsvModel class.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **datetime** | Gets or sets the entry time for the data point. | [optional] 
**recv_time** | **datetime** | Gets or sets the received time for the data point. | [optional] 
**exchange_id** | **str** | Gets or sets the identifier for the exchange. | [optional] 
**asset_id** | **str** | Gets or sets the identifier for the asset. | [optional] 
**symbol_id** | **str** | Gets or sets the identifier for the symbol. | [optional] 
**metric_id** | **str** | Gets or sets the identifier for the metric. | [optional] 
**value_decimal** | **float** | Gets or sets the decimal value for the metric. | [optional] 
**value_text** | **str** | Gets or sets the textual representation of the value for the metric. | [optional] 
**value_time** | **datetime** | Gets or sets the timestamp value for the metric. | [optional] 

## Example

```python
from api_bricks_coinapi_market_data_api_rest.models.v1_general_data import V1GeneralData

# TODO update the JSON string below
json = "{}"
# create an instance of V1GeneralData from a JSON string
v1_general_data_instance = V1GeneralData.from_json(json)
# print the JSON string representation of the object
print(V1GeneralData.to_json())

# convert the object into a dict
v1_general_data_dict = v1_general_data_instance.to_dict()
# create an instance of V1GeneralData from a dict
v1_general_data_from_dict = V1GeneralData.from_dict(v1_general_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


