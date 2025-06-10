# V1Chain

Represents a blockchain chain.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain_id** | **str** | Gets or sets the chain identifier. | [optional] 
**name** | **str** | Gets or sets the name of the chain. | [optional] 

## Example

```python
from api_bricks_coinapi_market_data_api_rest.models.v1_chain import V1Chain

# TODO update the JSON string below
json = "{}"
# create an instance of V1Chain from a JSON string
v1_chain_instance = V1Chain.from_json(json)
# print the JSON string representation of the object
print(V1Chain.to_json())

# convert the object into a dict
v1_chain_dict = v1_chain_instance.to_dict()
# create an instance of V1Chain from a dict
v1_chain_from_dict = V1Chain.from_dict(v1_chain_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


