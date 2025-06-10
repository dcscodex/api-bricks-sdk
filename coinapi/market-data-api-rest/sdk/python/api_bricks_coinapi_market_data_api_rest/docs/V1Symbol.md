# V1Symbol

Represents a symbol data model.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol_id** | **str** | The symbol identifier. | [optional] 
**exchange_id** | **str** | The exchange identifier. | [optional] 
**symbol_type** | **str** | The symbol type. | [optional] 
**asset_id_base** | **str** | The base asset identifier. | [optional] 
**asset_id_quote** | **str** | The quote asset identifier. | [optional] 
**asset_id_unit** | **str** | The unit asset identifier. | [optional] 
**future_contract_unit** | **float** | The contract unit for futures. | [optional] 
**future_contract_unit_asset** | **str** | The asset used as the unit for futures contract. | [optional] 
**future_delivery_time** | **datetime** | The future delivery time for futures contract. | [optional] 
**option_type_is_call** | **bool** | Indicates whether the option type is a call. | [optional] 
**option_strike_price** | **float** | The strike price for options. | [optional] 
**option_contract_unit** | **float** | The contract unit for options. | [optional] 
**option_exercise_style** | **str** | The exercise style for options. | [optional] 
**option_expiration_time** | **datetime** | The expiration time for options. | [optional] 
**contract_delivery_time** | **datetime** | The delivery time for contracts. | [optional] 
**contract_unit** | **float** | The contract unit for contracts. | [optional] 
**contract_unit_asset** | **str** | The asset used as the unit for contracts. | [optional] 
**contract_id** | **str** | The contract identifier. | [optional] 
**contract_display_name** | **str** | The display name of the contract. | [optional] 
**contract_display_description** | **str** | The display description of the contract. | [optional] 
**data_start** | **str** |  | [optional] [readonly] 
**data_end** | **str** |  | [optional] [readonly] 
**data_quote_start** | **datetime** | The start date of quote data. | [optional] 
**data_quote_end** | **datetime** | The end date of quote data. | [optional] 
**data_orderbook_start** | **datetime** | The start date of order book data. | [optional] 
**data_orderbook_end** | **datetime** | The end date of order book data. | [optional] 
**data_trade_start** | **datetime** | The start date of trade data. | [optional] 
**data_trade_end** | **datetime** | The end date of trade data. | [optional] 
**index_id** | **str** | The index identifier. | [optional] 
**index_display_name** | **str** | The display name of the index. | [optional] 
**index_display_description** | **str** | The display description of the index. | [optional] 
**volume_1hrs** | **float** | The volume in the last 1 hour. | [optional] 
**volume_1hrs_usd** | **float** | The volume in USD in the last 1 hour. | [optional] 
**volume_1day** | **float** | The volume in the last 1 day. | [optional] 
**volume_1day_usd** | **float** | The volume in USD in the last 1 day. | [optional] 
**volume_1mth** | **float** | The volume in the last 1 month. | [optional] 
**volume_1mth_usd** | **float** | The volume in USD in the last 1 month. | [optional] 
**price** | **float** | The price. | [optional] 
**symbol_id_exchange** | **str** | The symbol identifier in the exchange. | [optional] 
**asset_id_base_exchange** | **str** | The base asset identifier in the exchange. | [optional] 
**asset_id_quote_exchange** | **str** | The quote asset identifier in the exchange. | [optional] 
**price_precision** | **float** | The price precision. | [optional] 
**size_precision** | **float** | The size precision. | [optional] 
**raw_kvp** | **Dict[str, str]** | Not normalized raw kvp data. | [optional] 
**volume_to_usd** | **float** | Volume unit in USD. | [optional] 

## Example

```python
from api_bricks_coinapi_market_data_api_rest.models.v1_symbol import V1Symbol

# TODO update the JSON string below
json = "{}"
# create an instance of V1Symbol from a JSON string
v1_symbol_instance = V1Symbol.from_json(json)
# print the JSON string representation of the object
print(V1Symbol.to_json())

# convert the object into a dict
v1_symbol_dict = v1_symbol_instance.to_dict()
# create an instance of V1Symbol from a dict
v1_symbol_from_dict = V1Symbol.from_dict(v1_symbol_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


