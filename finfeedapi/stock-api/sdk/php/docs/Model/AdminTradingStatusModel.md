# # AdminTradingStatusModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **string** | The stock symbol | [optional]
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional]
**timestamp** | **\DateTime** | Time when the trading status was recorded as DateTime | [optional]
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

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
