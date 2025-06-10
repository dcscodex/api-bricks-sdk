# V1ExternalExchange

Represents an exchange with external mapping for metrics.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_id** | **str** | Gets or sets the internal exchange identifier. | [optional] 
**external_name** | **str** | Gets or sets the external protocol name/slug. | [optional] 
**description** | **str** | Gets or sets the description of the exchange. | [optional] 
**source_id** | **str** |  | [optional] 

## Example

```python
from api_bricks_coinapi_market_data_api_rest.models.v1_external_exchange import V1ExternalExchange

# TODO update the JSON string below
json = "{}"
# create an instance of V1ExternalExchange from a JSON string
v1_external_exchange_instance = V1ExternalExchange.from_json(json)
# print the JSON string representation of the object
print(V1ExternalExchange.to_json())

# convert the object into a dict
v1_external_exchange_dict = v1_external_exchange_instance.to_dict()
# create an instance of V1ExternalExchange from a dict
v1_external_exchange_from_dict = V1ExternalExchange.from_dict(v1_external_exchange_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


