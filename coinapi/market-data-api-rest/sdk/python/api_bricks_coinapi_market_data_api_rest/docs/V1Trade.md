# V1Trade

Represents a trade executed on the exchange.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol_id** | **str** | The symbol identifier. | [optional] 
**time_exchange** | **datetime** | The time of trade reported by the exchange. | [optional] 
**time_coinapi** | **datetime** | The time when the trade was received by CoinAPI. | [optional] 
**uuid** | **str** | The unique identifier for the trade. | [optional] 
**price** | **float** | The price of the transaction. | [optional] 
**size** | **float** | The base asset amount traded in the transaction. | [optional] 
**taker_side** | **str** | The aggressor side of the transaction (BUY/SELL/BUY_ESTIMATED/SELL_ESTIMATED/UNKNOWN). | [optional] 
**id_trade** | **str** | The trade identifier. | [optional] 
**id_order_maker** | **str** | The order maker identifier. | [optional] 
**id_order_taker** | **str** | The order taker identifier. | [optional] 

## Example

```python
from api_bricks_coinapi_market_data_api_rest.models.v1_trade import V1Trade

# TODO update the JSON string below
json = "{}"
# create an instance of V1Trade from a JSON string
v1_trade_instance = V1Trade.from_json(json)
# print the JSON string representation of the object
print(V1Trade.to_json())

# convert the object into a dict
v1_trade_dict = v1_trade_instance.to_dict()
# create an instance of V1Trade from a dict
v1_trade_from_dict = V1Trade.from_dict(v1_trade_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


