# V1SymbolMapping

Represents symbol mapping information for exchange symbols.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol_id** | **str** | The symbol ID. | [optional] 
**symbol_id_exchange** | **str** | The exchange-specific symbol ID. | [optional] 
**coinapi_datainfo_id** | **int** | The CoinAPI DataInfo ID. | [optional] 
**asset_id_base_exchange** | **str** | The exchange-specific base asset ID. | [optional] 
**asset_id_quote_exchange** | **str** | The exchange-specific quote asset ID. | [optional] 
**asset_id_base** | **str** | The base asset ID. | [optional] 
**asset_id_quote** | **str** | The quote asset ID. | [optional] 
**price_precision** | **float** | The price precision. | [optional] 
**size_precision** | **float** | The size precision. | [optional] 

## Example

```python
from api_bricks_coinapi_market_data_api_rest.models.v1_symbol_mapping import V1SymbolMapping

# TODO update the JSON string below
json = "{}"
# create an instance of V1SymbolMapping from a JSON string
v1_symbol_mapping_instance = V1SymbolMapping.from_json(json)
# print the JSON string representation of the object
print(V1SymbolMapping.to_json())

# convert the object into a dict
v1_symbol_mapping_dict = v1_symbol_mapping_instance.to_dict()
# create an instance of V1SymbolMapping from a dict
v1_symbol_mapping_from_dict = V1SymbolMapping.from_dict(v1_symbol_mapping_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


