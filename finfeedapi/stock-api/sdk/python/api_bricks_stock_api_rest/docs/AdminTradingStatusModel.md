# AdminTradingStatusModel

Represents the response DTO for trading status information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **str** | The stock symbol | [optional] 
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **datetime** | Time when the trading status was recorded as DateTime | [optional] 
**is_trading_live** | **bool** | Gets whether the security is currently trading on IEX | [optional] 
**is_trading_halted** | **bool** | Gets whether the security is halted across all US equity markets | [optional] 
**is_trading_in_order_acceptance_period** | **bool** | Gets whether the security is in Order Acceptance Period on IEX | [optional] 
**is_trading_paused** | **bool** | Gets whether the security is paused and in Order Acceptance Period on IEX | [optional] 
**is_reason_halt_news_pending** | **bool** | Gets whether the halt reason is News Pending | [optional] 
**is_reason_ipo_not_yet_trading** | **bool** | Gets whether the halt reason is IPO Not Yet Trading | [optional] 
**is_reason_ipo_deferred** | **bool** | Gets whether the halt reason is IPO Deferred | [optional] 
**is_reason_halt_news_dissemination** | **bool** | Gets whether the order acceptance period reason is Halt News Dissemination | [optional] 
**is_reason_ipo_order_acceptance_period** | **bool** | Gets whether the order acceptance period reason is IPO Order Acceptance Period | [optional] 
**is_reason_ipo_pre_launch_period** | **bool** | Gets whether the order acceptance period reason is IPO Pre-Launch Period | [optional] 
**is_reason_market_wide_circuit_breaker_level1** | **bool** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached | [optional] 
**is_reason_market_wide_circuit_breaker_level2** | **bool** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached | [optional] 
**is_reason_market_wide_circuit_breaker_level3** | **bool** | Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached | [optional] 
**is_reason_not_applicable** | **bool** | Gets whether the reason is Not Applicable | [optional] 
**is_reason_not_available** | **bool** | Gets whether the halt reason is Not Available | [optional] 

## Example

```python
from api_bricks_stock_api_rest.models.admin_trading_status_model import AdminTradingStatusModel

# TODO update the JSON string below
json = "{}"
# create an instance of AdminTradingStatusModel from a JSON string
admin_trading_status_model_instance = AdminTradingStatusModel.from_json(json)
# print the JSON string representation of the object
print(AdminTradingStatusModel.to_json())

# convert the object into a dict
admin_trading_status_model_dict = admin_trading_status_model_instance.to_dict()
# create an instance of AdminTradingStatusModel from a dict
admin_trading_status_model_from_dict = AdminTradingStatusModel.from_dict(admin_trading_status_model_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


