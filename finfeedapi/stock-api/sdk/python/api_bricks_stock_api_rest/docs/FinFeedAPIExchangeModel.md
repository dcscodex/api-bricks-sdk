# FinFeedAPIExchangeModel


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_id** | **str** |  | [optional] 
**last_datapoint_date** | **str** |  | [optional] 
**mic** | **str** |  | [optional] 
**operating_mic** | **str** |  | [optional] 
**oprt_sgmt** | **str** |  | [optional] 
**market_name_institution_description** | **str** |  | [optional] 
**legal_entity_name** | **str** |  | [optional] 
**lei** | **str** |  | [optional] 
**market_category_code** | **str** |  | [optional] 
**acronym** | **str** |  | [optional] 
**iso_country_code** | **str** |  | [optional] 
**city** | **str** |  | [optional] 
**website** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**creation_date** | **datetime** |  | [optional] 
**last_update_date** | **datetime** |  | [optional] 
**last_validation_date** | **datetime** |  | [optional] 
**expiry_date** | **datetime** |  | [optional] 
**comments** | **str** |  | [optional] 

## Example

```python
from api_bricks_stock_api_rest.models.fin_feed_api_exchange_model import FinFeedAPIExchangeModel

# TODO update the JSON string below
json = "{}"
# create an instance of FinFeedAPIExchangeModel from a JSON string
fin_feed_api_exchange_model_instance = FinFeedAPIExchangeModel.from_json(json)
# print the JSON string representation of the object
print(FinFeedAPIExchangeModel.to_json())

# convert the object into a dict
fin_feed_api_exchange_model_dict = fin_feed_api_exchange_model_instance.to_dict()
# create an instance of FinFeedAPIExchangeModel from a dict
fin_feed_api_exchange_model_from_dict = FinFeedAPIExchangeModel.from_dict(fin_feed_api_exchange_model_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


