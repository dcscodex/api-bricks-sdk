# V1Icon

Represents an icon.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_id** | **str** | Gets or sets the exchange ID associated with the icon. | [optional] 
**asset_id** | **str** | Gets or sets the asset ID associated with the icon. | [optional] 
**url** | **str** | Gets or sets the URL of the icon. | [optional] 

## Example

```python
from api_bricks_coinapi_exchange_rates_api_rest_realtime.models.v1_icon import V1Icon

# TODO update the JSON string below
json = "{}"
# create an instance of V1Icon from a JSON string
v1_icon_instance = V1Icon.from_json(json)
# print the JSON string representation of the object
print(V1Icon.to_json())

# convert the object into a dict
v1_icon_dict = v1_icon_instance.to_dict()
# create an instance of V1Icon from a dict
v1_icon_from_dict = V1Icon.from_dict(v1_icon_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


