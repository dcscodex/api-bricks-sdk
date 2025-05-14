# openapi::AdminTradingStatusModel

Represents the response DTO for trading status information

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **character** | The stock symbol | [optional] 
**timestamp_nanos** | **integer** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **character** | Time when the trading status was recorded as DateTime | [optional] 
**is_trading_live** | **character** | Gets whether the security is currently trading on IEX | [optional] 
**is_trading_halted** | **character** | Gets whether the security is halted across all US equity markets | [optional] 
**is_trading_in_order_acceptance_period** | **character** | Gets whether the security is in Order Acceptance Period on IEX | [optional] 
**is_trading_paused** | **character** | Gets whether the security is paused and in Order Acceptance Period on IEX | [optional] 
**is_reason_halt_news_pending** | **character** | Gets whether the halt reason is News Pending | [optional] 
**is_reason_ipo_not_yet_trading** | **character** | Gets whether the halt reason is IPO Not Yet Trading | [optional] 
**is_reason_ipo_deferred** | **character** | Gets whether the halt reason is IPO Deferred | [optional] 
**is_reason_halt_news_dissemination** | **character** | Gets whether the order acceptance period reason is Halt News Dissemination | [optional] 
**is_reason_ipo_order_acceptance_period** | **character** | Gets whether the order acceptance period reason is IPO Order Acceptance Period | [optional] 
**is_reason_ipo_pre_launch_period** | **character** | Gets whether the order acceptance period reason is IPO Pre-Launch Period | [optional] 
**is_reason_market_wide_circuit_breaker_level1** | **character** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached | [optional] 
**is_reason_market_wide_circuit_breaker_level2** | **character** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached | [optional] 
**is_reason_market_wide_circuit_breaker_level3** | **character** | Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached | [optional] 
**is_reason_not_applicable** | **character** | Gets whether the reason is Not Applicable | [optional] 
**is_reason_not_available** | **character** | Gets whether the halt reason is Not Available | [optional] 


