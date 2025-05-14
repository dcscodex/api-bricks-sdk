# AdminOperationalHaltStatusModel

Represents the response DTO for operational halt status information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **str** | The stock symbol | [optional] 
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **datetime** | Time when the operational halt status was recorded as DateTime | [optional] 
**operational_halt_status** | **int** | Operational halt status as byte value | [optional] 
**operational_halt_status_code** | **str** | Operational halt status as character string | [optional] 
**operational_halt_status_text** | **str** | Human-readable description of the operational halt status | [optional] 
**is_operationally_halted** | **bool** | Indicates if the status is &#39;IEX specific operational trading halt&#39; (&#39;O&#39;/0x4f). | [optional] 
**is_not_operationally_halted** | **bool** | Indicates if the status is &#39;Not operationally halted on IEX&#39; (&#39;N&#39;/0x4e). | [optional] 

## Example

```python
from api_bricks_stock_api_rest.models.admin_operational_halt_status_model import AdminOperationalHaltStatusModel

# TODO update the JSON string below
json = "{}"
# create an instance of AdminOperationalHaltStatusModel from a JSON string
admin_operational_halt_status_model_instance = AdminOperationalHaltStatusModel.from_json(json)
# print the JSON string representation of the object
print(AdminOperationalHaltStatusModel.to_json())

# convert the object into a dict
admin_operational_halt_status_model_dict = admin_operational_halt_status_model_instance.to_dict()
# create an instance of AdminOperationalHaltStatusModel from a dict
admin_operational_halt_status_model_from_dict = AdminOperationalHaltStatusModel.from_dict(admin_operational_halt_status_model_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


