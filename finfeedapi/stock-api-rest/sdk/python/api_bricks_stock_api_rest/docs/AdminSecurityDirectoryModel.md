# AdminSecurityDirectoryModel

Represents the response DTO for security directory information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **str** | The stock symbol | [optional] 
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **datetime** | Time when the security directory information was recorded as DateTime | [optional] 
**flags** | **int** | Flags for the security | [optional] 
**round_lot_size** | **int** | Number of shares that represent a round lot | [optional] 
**adjusted_poc_price** | **float** | Adjusted previous official closing price as decimal | [optional] 
**luld_tier** | **int** | LULD tier as byte value | [optional] 
**luld_tier_code** | **str** | LULD tier as numeric string | [optional] 
**luld_tier_text** | **str** | Human-readable description of the LULD tier | [optional] 
**is_luld_tier_not_applicable** | **bool** | Indicates if LULD Tier is &#39;Not applicable&#39; (0x0). | [optional] 
**is_luld_tier1** | **bool** | Indicates if LULD Tier is &#39;Tier 1 NMS Stock&#39; (0x1). | [optional] 
**is_luld_tier2** | **bool** | Indicates if LULD Tier is &#39;Tier 2 NMS Stock&#39; (0x2). | [optional] 

## Example

```python
from api_bricks_stock_api_rest.models.admin_security_directory_model import AdminSecurityDirectoryModel

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSecurityDirectoryModel from a JSON string
admin_security_directory_model_instance = AdminSecurityDirectoryModel.from_json(json)
# print the JSON string representation of the object
print(AdminSecurityDirectoryModel.to_json())

# convert the object into a dict
admin_security_directory_model_dict = admin_security_directory_model_instance.to_dict()
# create an instance of AdminSecurityDirectoryModel from a dict
admin_security_directory_model_from_dict = AdminSecurityDirectoryModel.from_dict(admin_security_directory_model_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


