# OptionsStrike

Represents a strike within the option exchange group.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**strike_price** | **float** | The strike price. | [optional] 
**call** | [**V1QuoteTrade**](V1QuoteTrade.md) |  | [optional] 
**put** | [**V1QuoteTrade**](V1QuoteTrade.md) |  | [optional] 

## Example

```python
from api_bricks_coinapi_market_data_api_rest.models.options_strike import OptionsStrike

# TODO update the JSON string below
json = "{}"
# create an instance of OptionsStrike from a JSON string
options_strike_instance = OptionsStrike.from_json(json)
# print the JSON string representation of the object
print(OptionsStrike.to_json())

# convert the object into a dict
options_strike_dict = options_strike_instance.to_dict()
# create an instance of OptionsStrike from a dict
options_strike_from_dict = OptionsStrike.from_dict(options_strike_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


