# admin_trading_status_model_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **char \*** | The stock symbol | [optional] 
**timestamp_nanos** | **long** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **char \*** | Time when the trading status was recorded as DateTime | [optional] 
**is_trading_live** | **int** | Gets whether the security is currently trading on IEX | [optional] 
**is_trading_halted** | **int** | Gets whether the security is halted across all US equity markets | [optional] 
**is_trading_in_order_acceptance_period** | **int** | Gets whether the security is in Order Acceptance Period on IEX | [optional] 
**is_trading_paused** | **int** | Gets whether the security is paused and in Order Acceptance Period on IEX | [optional] 
**is_reason_halt_news_pending** | **int** | Gets whether the halt reason is News Pending | [optional] 
**is_reason_ipo_not_yet_trading** | **int** | Gets whether the halt reason is IPO Not Yet Trading | [optional] 
**is_reason_ipo_deferred** | **int** | Gets whether the halt reason is IPO Deferred | [optional] 
**is_reason_halt_news_dissemination** | **int** | Gets whether the order acceptance period reason is Halt News Dissemination | [optional] 
**is_reason_ipo_order_acceptance_period** | **int** | Gets whether the order acceptance period reason is IPO Order Acceptance Period | [optional] 
**is_reason_ipo_pre_launch_period** | **int** | Gets whether the order acceptance period reason is IPO Pre-Launch Period | [optional] 
**is_reason_market_wide_circuit_breaker_level1** | **int** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached | [optional] 
**is_reason_market_wide_circuit_breaker_level2** | **int** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached | [optional] 
**is_reason_market_wide_circuit_breaker_level3** | **int** | Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached | [optional] 
**is_reason_not_applicable** | **int** | Gets whether the reason is Not Applicable | [optional] 
**is_reason_not_available** | **int** | Gets whether the halt reason is Not Available | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


