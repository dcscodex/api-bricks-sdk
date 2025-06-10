# OptionsOptionExchangeGroup

Represents an option exchange group data model.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asset_id_base** | **str** | The base asset identifier. | [optional] 
**asset_id_quote** | **str** | The quote asset identifier. | [optional] 
**underlying_price** | **float** | The underlying price of the option. | [optional] 
**time_expiration** | **datetime** | The expiration time of the option. | [optional] 
**strikes** | [**List[OptionsStrike]**](OptionsStrike.md) | The list of strikes available. | [optional] 

## Example

```python
from api_bricks_coinapi_market_data_api_rest.models.options_option_exchange_group import OptionsOptionExchangeGroup

# TODO update the JSON string below
json = "{}"
# create an instance of OptionsOptionExchangeGroup from a JSON string
options_option_exchange_group_instance = OptionsOptionExchangeGroup.from_json(json)
# print the JSON string representation of the object
print(OptionsOptionExchangeGroup.to_json())

# convert the object into a dict
options_option_exchange_group_dict = options_option_exchange_group_instance.to_dict()
# create an instance of OptionsOptionExchangeGroup from a dict
options_option_exchange_group_from_dict = OptionsOptionExchangeGroup.from_dict(options_option_exchange_group_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


