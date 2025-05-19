# V1ExchangeRate

Represents an exchange rate.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**time** | **datetime** | Gets or sets the time of the exchange rate. | [optional] 
**asset_id_base** | **str** | Gets or sets the base asset ID of the exchange rate. | [optional] 
**asset_id_quote** | **str** | Gets or sets the quote asset ID of the exchange rate. | [optional] 
**rate** | **float** | Gets or sets the exchange rate value. | [optional] 

## Example

```python
from api_bricks_coinapi_exchange_rates_api_rest_realtime.models.v1_exchange_rate import V1ExchangeRate

# TODO update the JSON string below
json = "{}"
# create an instance of V1ExchangeRate from a JSON string
v1_exchange_rate_instance = V1ExchangeRate.from_json(json)
# print the JSON string representation of the object
print(V1ExchangeRate.to_json())

# convert the object into a dict
v1_exchange_rate_dict = v1_exchange_rate_instance.to_dict()
# create an instance of V1ExchangeRate from a dict
v1_exchange_rate_from_dict = V1ExchangeRate.from_dict(v1_exchange_rate_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


