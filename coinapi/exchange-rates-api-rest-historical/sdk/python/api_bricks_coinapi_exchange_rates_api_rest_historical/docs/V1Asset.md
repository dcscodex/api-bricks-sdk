# V1Asset

Represents an asset.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asset_id** | **str** | Gets or sets the asset ID. | [optional] 
**name** | **str** | Gets or sets the name of the asset. | [optional] 
**type_is_crypto** | **int** | Gets or sets a value indicating whether the asset is a cryptocurrency. | [optional] 
**data_quote_start** | **datetime** | Gets or sets the start date of quote data. | [optional] 
**data_quote_end** | **datetime** | Gets or sets the end date of quote data. | [optional] 
**data_orderbook_start** | **datetime** | Gets or sets the start date of order book data. | [optional] 
**data_orderbook_end** | **datetime** | Gets or sets the end date of order book data. | [optional] 
**data_trade_start** | **datetime** | Gets or sets the start date of trade data. | [optional] 
**data_trade_end** | **datetime** | Gets or sets the end date of trade data. | [optional] 
**data_symbols_count** | **int** | Gets or sets the number of symbols. | [optional] 
**volume_1hrs_usd** | **float** | Gets or sets the USD volume in the last 1 hour. | [optional] 
**volume_1day_usd** | **float** | Gets or sets the USD volume in the last 1 day. | [optional] 
**volume_1mth_usd** | **float** | Gets or sets the USD volume in the last 1 month. | [optional] 
**price_usd** | **float** | Gets or sets the USD price of the asset. | [optional] 
**id_icon** | **str** | Gets or sets the ID of the icon for the asset. | [optional] 
**supply_current** | **float** | Gets or sets the current supply of the asset. | [optional] 
**supply_total** | **float** | Gets or sets the total supply of the asset. | [optional] 
**supply_max** | **float** | Gets or sets the maximum supply of the asset. | [optional] 
**chain_addresses** | [**List[V1ChainNetworkAddress]**](V1ChainNetworkAddress.md) |  | [optional] 
**data_start** | **str** |  | [optional] [readonly] 
**data_end** | **str** |  | [optional] [readonly] 

## Example

```python
from api_bricks_coinapi_exchange_rates_api_rest_historical.models.v1_asset import V1Asset

# TODO update the JSON string below
json = "{}"
# create an instance of V1Asset from a JSON string
v1_asset_instance = V1Asset.from_json(json)
# print the JSON string representation of the object
print(V1Asset.to_json())

# convert the object into a dict
v1_asset_dict = v1_asset_instance.to_dict()
# create an instance of V1Asset from a dict
v1_asset_from_dict = V1Asset.from_dict(v1_asset_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


