# V1ExchangeRates

Represents exchange rates for a specific base asset.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asset_id_base** | **str** | Gets or sets the base asset ID. | [optional] 
**rates** | [**List[V1ExchangeRatesRate]**](V1ExchangeRatesRate.md) | Gets or sets the list of exchange rates. | [optional] 

## Example

```python
from api_bricks_currencies_api_rest_realtime.models.v1_exchange_rates import V1ExchangeRates

# TODO update the JSON string below
json = "{}"
# create an instance of V1ExchangeRates from a JSON string
v1_exchange_rates_instance = V1ExchangeRates.from_json(json)
# print the JSON string representation of the object
print(V1ExchangeRates.to_json())

# convert the object into a dict
v1_exchange_rates_dict = v1_exchange_rates_instance.to_dict()
# create an instance of V1ExchangeRates from a dict
v1_exchange_rates_from_dict = V1ExchangeRates.from_dict(v1_exchange_rates_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


