# AdminSystemEventModel

Represents the response DTO for system event information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **datetime** | Time when the system event was recorded as DateTime | [optional] 
**system_event** | **int** | System event as byte value | [optional] 
**system_event_code** | **str** | System event as string | [optional] 
**system_event_text** | **str** | Human-readable description of the system event | [optional] 
**is_system_event_start_of_messages** | **bool** | Indicates if the system event is &#39;Start of Messages&#39; (O). Outside of heartbeat messages on the lower level protocol,  the start of day message is the first message sent in any trading session. | [optional] 
**is_system_event_start_of_system_hours** | **bool** | Indicates if the system event is &#39;Start of System Hours&#39; (S). This message indicates that IEX is open and ready to start accepting orders. | [optional] 
**is_system_event_start_of_regular_market_hours** | **bool** | Indicates if the system event is &#39;Start of Regular Market Hours&#39; (R). This message indicates that DAY and GTX orders, as well as market orders and pegged orders,  are available for execution on IEX. | [optional] 
**is_system_event_end_of_regular_market_hours** | **bool** | Indicates if the system event is &#39;End of Regular Market Hours&#39; (M). This message indicates that DAY orders, market orders, and pegged orders  are no longer accepted by IEX. | [optional] 
**is_system_event_end_of_system_hours** | **bool** | Indicates if the system event is &#39;End of System Hours&#39; (E). This message indicates that IEX is now closed and will not accept  any new orders during this trading session. It is still possible  to receive messages after the end of day. | [optional] 
**is_system_event_end_of_messages** | **bool** | Indicates if the system event is &#39;End of Messages&#39; (C). This is always the last message sent in any trading session. | [optional] 

## Example

```python
from api_bricks_stock_api_rest.models.admin_system_event_model import AdminSystemEventModel

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSystemEventModel from a JSON string
admin_system_event_model_instance = AdminSystemEventModel.from_json(json)
# print the JSON string representation of the object
print(AdminSystemEventModel.to_json())

# convert the object into a dict
admin_system_event_model_dict = admin_system_event_model_instance.to_dict()
# create an instance of AdminSystemEventModel from a dict
admin_system_event_model_from_dict = AdminSystemEventModel.from_dict(admin_system_event_model_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


