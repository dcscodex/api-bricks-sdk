# V1ChainNetworkAddress

Contains information about assets' chain network addresses

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain_id** | **str** | Gets or sets chain id | [optional] 
**network_id** | **str** | Gets or sets network id | [optional] 
**address** | **str** | Gets or sets chain address | [optional] 

## Example

```python
from api_bricks_coinapi_exchange_rates_api_rest_realtime.models.v1_chain_network_address import V1ChainNetworkAddress

# TODO update the JSON string below
json = "{}"
# create an instance of V1ChainNetworkAddress from a JSON string
v1_chain_network_address_instance = V1ChainNetworkAddress.from_json(json)
# print the JSON string representation of the object
print(V1ChainNetworkAddress.to_json())

# convert the object into a dict
v1_chain_network_address_dict = v1_chain_network_address_instance.to_dict()
# create an instance of V1ChainNetworkAddress from a dict
v1_chain_network_address_from_dict = V1ChainNetworkAddress.from_dict(v1_chain_network_address_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


