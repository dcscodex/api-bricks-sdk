# V1OrderBookDepth

Represents the depth of an order book.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol_id** | **str** | The symbol identifier. | [optional] 
**time_exchange** | **datetime** | The exchange time of the order book. | [optional] 
**time_coinapi** | **datetime** | The CoinAPI time when the order book was received. | [optional] 
**ask_levels** | **int** | The number of ask levels in the order book. | [optional] 
**bid_levels** | **int** | The number of bid levels in the order book. | [optional] 
**ask_depth** | **float** | The depth of the ask side of the order book. | [optional] 
**bid_depth** | **float** | The depth of the bid side of the order book. | [optional] 

## Example

```python
from api_bricks_coinapi_market_data_api_rest.models.v1_order_book_depth import V1OrderBookDepth

# TODO update the JSON string below
json = "{}"
# create an instance of V1OrderBookDepth from a JSON string
v1_order_book_depth_instance = V1OrderBookDepth.from_json(json)
# print the JSON string representation of the object
print(V1OrderBookDepth.to_json())

# convert the object into a dict
v1_order_book_depth_dict = v1_order_book_depth_instance.to_dict()
# create an instance of V1OrderBookDepth from a dict
v1_order_book_depth_from_dict = V1OrderBookDepth.from_dict(v1_order_book_depth_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


