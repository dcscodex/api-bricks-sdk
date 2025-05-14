# WWW::OpenAPIClient::Object::AdminTradingStatusModel

## Load the model package
```perl
use WWW::OpenAPIClient::Object::AdminTradingStatusModel;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **string** | The stock symbol | [optional] 
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **DATE_TIME** | Time when the trading status was recorded as DateTime | [optional] 
**is_trading_live** | **boolean** | Gets whether the security is currently trading on IEX | [optional] 
**is_trading_halted** | **boolean** | Gets whether the security is halted across all US equity markets | [optional] 
**is_trading_in_order_acceptance_period** | **boolean** | Gets whether the security is in Order Acceptance Period on IEX | [optional] 
**is_trading_paused** | **boolean** | Gets whether the security is paused and in Order Acceptance Period on IEX | [optional] 
**is_reason_halt_news_pending** | **boolean** | Gets whether the halt reason is News Pending | [optional] 
**is_reason_ipo_not_yet_trading** | **boolean** | Gets whether the halt reason is IPO Not Yet Trading | [optional] 
**is_reason_ipo_deferred** | **boolean** | Gets whether the halt reason is IPO Deferred | [optional] 
**is_reason_halt_news_dissemination** | **boolean** | Gets whether the order acceptance period reason is Halt News Dissemination | [optional] 
**is_reason_ipo_order_acceptance_period** | **boolean** | Gets whether the order acceptance period reason is IPO Order Acceptance Period | [optional] 
**is_reason_ipo_pre_launch_period** | **boolean** | Gets whether the order acceptance period reason is IPO Pre-Launch Period | [optional] 
**is_reason_market_wide_circuit_breaker_level1** | **boolean** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached | [optional] 
**is_reason_market_wide_circuit_breaker_level2** | **boolean** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached | [optional] 
**is_reason_market_wide_circuit_breaker_level3** | **boolean** | Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached | [optional] 
**is_reason_not_applicable** | **boolean** | Gets whether the reason is Not Applicable | [optional] 
**is_reason_not_available** | **boolean** | Gets whether the halt reason is Not Available | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


