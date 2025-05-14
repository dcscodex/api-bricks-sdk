# AdminOfficialPriceModel

Represents the response DTO for official price information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **str** | The stock symbol | [optional] 
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **datetime** | Time when the official price was recorded as DateTime | [optional] 
**price_type** | **int** | Type of price as byte value | [optional] 
**price_type_code** | **str** | Type of price as character string | [optional] 
**price_type_text** | **str** | Human-readable description of the price type | [optional] 
**is_price_type_opening** | **bool** | Indicates if the price type is &#39;IEX Official Opening Price&#39; (&#39;Q&#39;/0x51). | [optional] 
**is_price_type_closing** | **bool** | Indicates if the price type is &#39;IEX Official Closing Price&#39; (&#39;M&#39;/0x4d). | [optional] 
**official_price** | **float** | Official price as decimal | [optional] 

## Example

```python
from api_bricks_stock_api_rest.models.admin_official_price_model import AdminOfficialPriceModel

# TODO update the JSON string below
json = "{}"
# create an instance of AdminOfficialPriceModel from a JSON string
admin_official_price_model_instance = AdminOfficialPriceModel.from_json(json)
# print the JSON string representation of the object
print(AdminOfficialPriceModel.to_json())

# convert the object into a dict
admin_official_price_model_dict = admin_official_price_model_instance.to_dict()
# create an instance of AdminOfficialPriceModel from a dict
admin_official_price_model_from_dict = AdminOfficialPriceModel.from_dict(admin_official_price_model_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


