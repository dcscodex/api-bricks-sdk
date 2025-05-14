# AdminAuctionInformationModel

Represents the response DTO for auction information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **str** | The stock symbol | [optional] 
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **datetime** | Time when the auction data was recorded as DateTime | [optional] 
**auction_type** | **int** | Type of auction as byte value | [optional] 
**auction_type_code** | **str** | Type of auction as character string | [optional] 
**auction_type_text** | **str** | Human-readable description of the auction type | [optional] 
**is_auction_type_opening** | **bool** | Indicates if the auction type is &#39;Opening Auction&#39; (&#39;O&#39;/0x4f). | [optional] 
**is_auction_type_closing** | **bool** | Indicates if the auction type is &#39;Closing Auction&#39; (&#39;C&#39;/0x43). | [optional] 
**is_auction_type_ipo** | **bool** | Indicates if the auction type is &#39;IPO Auction&#39; (&#39;I&#39;/0x49). | [optional] 
**is_auction_type_halt** | **bool** | Indicates if the auction type is &#39;Halt Auction&#39; (&#39;H&#39;/0x48). | [optional] 
**is_auction_type_volatility** | **bool** | Indicates if the auction type is &#39;Volatility Auction&#39; (&#39;V&#39;/0x56). | [optional] 
**paired_shares** | **int** | Number of shares paired at the Reference Price | [optional] 
**reference_price** | **float** | Reference price as decimal | [optional] 
**indicative_clearing_price** | **float** | Indicative clearing price as decimal | [optional] 
**imbalance_shares** | **int** | Number of unpaired shares at the Reference Price | [optional] 
**imbalance_side** | **int** | Side of the imbalance as byte value | [optional] 
**imbalance_side_code** | **str** | Side of the imbalance as character string | [optional] 
**imbalance_side_text** | **str** | Human-readable description of the imbalance side | [optional] 
**is_imbalance_side_buy** | **bool** | Indicates if there is a buy-side imbalance (&#39;B&#39;/0x42). | [optional] 
**is_imbalance_side_sell** | **bool** | Indicates if there is a sell-side imbalance (&#39;S&#39;/0x53). | [optional] 
**is_imbalance_side_none** | **bool** | Indicates if there is no imbalance (&#39;N&#39;/0x4e). | [optional] 
**extension_number** | **int** | Number of extensions to the auction | [optional] 
**scheduled_auction_time_seconds** | **int** | Scheduled auction time in seconds since epoch | [optional] 
**scheduled_auction_time** | **datetime** | Scheduled time for the auction as DateTime | [optional] 
**auction_book_clearing_price** | **float** | Auction book clearing price as decimal | [optional] 
**collar_reference_price** | **float** | Collar reference price as decimal | [optional] 
**lower_auction_collar** | **float** | Lower auction collar as decimal | [optional] 
**upper_auction_collar** | **float** | Upper auction collar as decimal | [optional] 

## Example

```python
from api_bricks_stock_api_rest.models.admin_auction_information_model import AdminAuctionInformationModel

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAuctionInformationModel from a JSON string
admin_auction_information_model_instance = AdminAuctionInformationModel.from_json(json)
# print the JSON string representation of the object
print(AdminAuctionInformationModel.to_json())

# convert the object into a dict
admin_auction_information_model_dict = admin_auction_information_model_instance.to_dict()
# create an instance of AdminAuctionInformationModel from a dict
admin_auction_information_model_from_dict = AdminAuctionInformationModel.from_dict(admin_auction_information_model_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


