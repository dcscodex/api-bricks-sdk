# OpenapiClient::AdminTradingStatusModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The stock symbol | [optional] |
| **timestamp_nanos** | **Integer** | Original timestamp in nanoseconds since epoch | [optional] |
| **timestamp** | **Time** | Time when the trading status was recorded as DateTime | [optional] |
| **is_trading_live** | **Boolean** | Gets whether the security is currently trading on IEX | [optional] |
| **is_trading_halted** | **Boolean** | Gets whether the security is halted across all US equity markets | [optional] |
| **is_trading_in_order_acceptance_period** | **Boolean** | Gets whether the security is in Order Acceptance Period on IEX | [optional] |
| **is_trading_paused** | **Boolean** | Gets whether the security is paused and in Order Acceptance Period on IEX | [optional] |
| **is_reason_halt_news_pending** | **Boolean** | Gets whether the halt reason is News Pending | [optional] |
| **is_reason_ipo_not_yet_trading** | **Boolean** | Gets whether the halt reason is IPO Not Yet Trading | [optional] |
| **is_reason_ipo_deferred** | **Boolean** | Gets whether the halt reason is IPO Deferred | [optional] |
| **is_reason_halt_news_dissemination** | **Boolean** | Gets whether the order acceptance period reason is Halt News Dissemination | [optional] |
| **is_reason_ipo_order_acceptance_period** | **Boolean** | Gets whether the order acceptance period reason is IPO Order Acceptance Period | [optional] |
| **is_reason_ipo_pre_launch_period** | **Boolean** | Gets whether the order acceptance period reason is IPO Pre-Launch Period | [optional] |
| **is_reason_market_wide_circuit_breaker_level1** | **Boolean** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached | [optional] |
| **is_reason_market_wide_circuit_breaker_level2** | **Boolean** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached | [optional] |
| **is_reason_market_wide_circuit_breaker_level3** | **Boolean** | Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached | [optional] |
| **is_reason_not_applicable** | **Boolean** | Gets whether the reason is Not Applicable | [optional] |
| **is_reason_not_available** | **Boolean** | Gets whether the halt reason is Not Available | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AdminTradingStatusModel.new(
  symbol: null,
  timestamp_nanos: null,
  timestamp: null,
  is_trading_live: null,
  is_trading_halted: null,
  is_trading_in_order_acceptance_period: null,
  is_trading_paused: null,
  is_reason_halt_news_pending: null,
  is_reason_ipo_not_yet_trading: null,
  is_reason_ipo_deferred: null,
  is_reason_halt_news_dissemination: null,
  is_reason_ipo_order_acceptance_period: null,
  is_reason_ipo_pre_launch_period: null,
  is_reason_market_wide_circuit_breaker_level1: null,
  is_reason_market_wide_circuit_breaker_level2: null,
  is_reason_market_wide_circuit_breaker_level3: null,
  is_reason_not_applicable: null,
  is_reason_not_available: null
)
```

