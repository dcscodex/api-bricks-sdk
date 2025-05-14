# ADMIN_TRADING_STATUS_MODEL

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | [**STRING_32**](STRING_32.md) | The stock symbol | [optional] [default to null]
**timestamp_nanos** | **INTEGER_64** | Original timestamp in nanoseconds since epoch | [optional] [default to null]
**timestamp** | [**DATE_TIME**](DATE_TIME.md) | Time when the trading status was recorded as DateTime | [optional] [default to null]
**is_trading_live** | **BOOLEAN** | Gets whether the security is currently trading on IEX | [optional] [default to null]
**is_trading_halted** | **BOOLEAN** | Gets whether the security is halted across all US equity markets | [optional] [default to null]
**is_trading_in_order_acceptance_period** | **BOOLEAN** | Gets whether the security is in Order Acceptance Period on IEX | [optional] [default to null]
**is_trading_paused** | **BOOLEAN** | Gets whether the security is paused and in Order Acceptance Period on IEX | [optional] [default to null]
**is_reason_halt_news_pending** | **BOOLEAN** | Gets whether the halt reason is News Pending | [optional] [default to null]
**is_reason_ipo_not_yet_trading** | **BOOLEAN** | Gets whether the halt reason is IPO Not Yet Trading | [optional] [default to null]
**is_reason_ipo_deferred** | **BOOLEAN** | Gets whether the halt reason is IPO Deferred | [optional] [default to null]
**is_reason_halt_news_dissemination** | **BOOLEAN** | Gets whether the order acceptance period reason is Halt News Dissemination | [optional] [default to null]
**is_reason_ipo_order_acceptance_period** | **BOOLEAN** | Gets whether the order acceptance period reason is IPO Order Acceptance Period | [optional] [default to null]
**is_reason_ipo_pre_launch_period** | **BOOLEAN** | Gets whether the order acceptance period reason is IPO Pre-Launch Period | [optional] [default to null]
**is_reason_market_wide_circuit_breaker_level1** | **BOOLEAN** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached | [optional] [default to null]
**is_reason_market_wide_circuit_breaker_level2** | **BOOLEAN** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached | [optional] [default to null]
**is_reason_market_wide_circuit_breaker_level3** | **BOOLEAN** | Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached | [optional] [default to null]
**is_reason_not_applicable** | **BOOLEAN** | Gets whether the reason is Not Applicable | [optional] [default to null]
**is_reason_not_available** | **BOOLEAN** | Gets whether the halt reason is Not Available | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


