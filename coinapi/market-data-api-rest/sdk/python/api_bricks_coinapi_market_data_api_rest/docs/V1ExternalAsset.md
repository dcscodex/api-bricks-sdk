# V1ExternalAsset

Represents an external asset with description.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asset_id** | **str** | Gets or sets the asset identifier. | [optional] 
**description** | **str** | Gets or sets the description of the asset. | [optional] 
**asset_type** | **str** | Gets or sets the type/category of the asset. | [optional] 

## Example

```python
from api_bricks_coinapi_market_data_api_rest.models.v1_external_asset import V1ExternalAsset

# TODO update the JSON string below
json = "{}"
# create an instance of V1ExternalAsset from a JSON string
v1_external_asset_instance = V1ExternalAsset.from_json(json)
# print the JSON string representation of the object
print(V1ExternalAsset.to_json())

# convert the object into a dict
v1_external_asset_dict = v1_external_asset_instance.to_dict()
# create an instance of V1ExternalAsset from a dict
v1_external_asset_from_dict = V1ExternalAsset.from_dict(v1_external_asset_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


