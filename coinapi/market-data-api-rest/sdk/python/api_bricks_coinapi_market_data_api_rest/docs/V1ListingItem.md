# V1ListingItem

Represents a listing item.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metric_id** | **str** | Gets or sets the metric ID. | [optional] 
**symbol_id** | **str** | Gets or sets the symbol ID. | [optional] 
**symbol_id_external** | **str** | Gets or sets the symbol ID from the exchange. | [optional] 
**exchange_id** | **str** | Gets or sets the exchange ID. | [optional] 
**asset_id** | **str** | Gets or sets the asset ID. | [optional] 
**asset_id_external** | **str** | Gets or sets the asset ID from the exchange. | [optional] 
**chain_id** | **str** | Gets or sets the chain id. | [optional] 
**network_id** | **str** | Gets or sets the network id. | [optional] 

## Example

```python
from api_bricks_coinapi_market_data_api_rest.models.v1_listing_item import V1ListingItem

# TODO update the JSON string below
json = "{}"
# create an instance of V1ListingItem from a JSON string
v1_listing_item_instance = V1ListingItem.from_json(json)
# print the JSON string representation of the object
print(V1ListingItem.to_json())

# convert the object into a dict
v1_listing_item_dict = v1_listing_item_instance.to_dict()
# create an instance of V1ListingItem from a dict
v1_listing_item_from_dict = V1ListingItem.from_dict(v1_listing_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


