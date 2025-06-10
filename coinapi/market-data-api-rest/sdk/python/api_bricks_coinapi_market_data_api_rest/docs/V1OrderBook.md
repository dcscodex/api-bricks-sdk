# V1OrderBook

Represents an order book with additional information and functionality.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol_id** | **str** | The symbol identifier. | [optional] 
**time_exchange** | **datetime** | The exchange time of the order book. | [optional] 
**time_coinapi** | **datetime** | The CoinAPI time when the order book was received. | [optional] 
**asks** | **object** | The asks made by market makers. | [optional] 
**bids** | **object** | The bids made by market makers. | [optional] 

## Example

```python
from api_bricks_coinapi_market_data_api_rest.models.v1_order_book import V1OrderBook

# TODO update the JSON string below
json = "{}"
# create an instance of V1OrderBook from a JSON string
v1_order_book_instance = V1OrderBook.from_json(json)
# print the JSON string representation of the object
print(V1OrderBook.to_json())

# convert the object into a dict
v1_order_book_dict = v1_order_book_instance.to_dict()
# create an instance of V1OrderBook from a dict
v1_order_book_from_dict = V1OrderBook.from_dict(v1_order_book_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


