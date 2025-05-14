# AdminAdminMessageModel

Represents the response DTO for IEX admin information, combining all symbol-based admin message types

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**trading_status** | [**AdminTradingStatusModel**](AdminTradingStatusModel.md) |  | [optional] 
**official_price** | [**AdminOfficialPriceModel**](AdminOfficialPriceModel.md) |  | [optional] 
**security_event** | [**AdminSecurityEventModel**](AdminSecurityEventModel.md) |  | [optional] 
**auction_information** | [**AdminAuctionInformationModel**](AdminAuctionInformationModel.md) |  | [optional] 
**short_sale_price_test** | [**AdminShortSalePriceTestStatusModel**](AdminShortSalePriceTestStatusModel.md) |  | [optional] 
**operational_halt_status** | [**AdminOperationalHaltStatusModel**](AdminOperationalHaltStatusModel.md) |  | [optional] 
**retail_liquidity_indicator** | [**AdminRetailLiquidityIndicatorModel**](AdminRetailLiquidityIndicatorModel.md) |  | [optional] 
**system_event** | [**AdminSystemEventModel**](AdminSystemEventModel.md) |  | [optional] 
**security_directory** | [**AdminSecurityDirectoryModel**](AdminSecurityDirectoryModel.md) |  | [optional] 

## Example

```python
from api_bricks_stock_api_rest.models.admin_admin_message_model import AdminAdminMessageModel

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAdminMessageModel from a JSON string
admin_admin_message_model_instance = AdminAdminMessageModel.from_json(json)
# print the JSON string representation of the object
print(AdminAdminMessageModel.to_json())

# convert the object into a dict
admin_admin_message_model_dict = admin_admin_message_model_instance.to_dict()
# create an instance of AdminAdminMessageModel from a dict
admin_admin_message_model_from_dict = AdminAdminMessageModel.from_dict(admin_admin_message_model_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


