
# AdminTradingStatusModel

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **symbol** | **kotlin.String** | The stock symbol |  [optional] |
| **timestampNanos** | **kotlin.Long** | Original timestamp in nanoseconds since epoch |  [optional] |
| **timestamp** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Time when the trading status was recorded as DateTime |  [optional] |
| **isTradingLive** | **kotlin.Boolean** | Gets whether the security is currently trading on IEX |  [optional] |
| **isTradingHalted** | **kotlin.Boolean** | Gets whether the security is halted across all US equity markets |  [optional] |
| **isTradingInOrderAcceptancePeriod** | **kotlin.Boolean** | Gets whether the security is in Order Acceptance Period on IEX |  [optional] |
| **isTradingPaused** | **kotlin.Boolean** | Gets whether the security is paused and in Order Acceptance Period on IEX |  [optional] |
| **isReasonHaltNewsPending** | **kotlin.Boolean** | Gets whether the halt reason is News Pending |  [optional] |
| **isReasonIpoNotYetTrading** | **kotlin.Boolean** | Gets whether the halt reason is IPO Not Yet Trading |  [optional] |
| **isReasonIpoDeferred** | **kotlin.Boolean** | Gets whether the halt reason is IPO Deferred |  [optional] |
| **isReasonHaltNewsDissemination** | **kotlin.Boolean** | Gets whether the order acceptance period reason is Halt News Dissemination |  [optional] |
| **isReasonIpoOrderAcceptancePeriod** | **kotlin.Boolean** | Gets whether the order acceptance period reason is IPO Order Acceptance Period |  [optional] |
| **isReasonIpoPreLaunchPeriod** | **kotlin.Boolean** | Gets whether the order acceptance period reason is IPO Pre-Launch Period |  [optional] |
| **isReasonMarketWideCircuitBreakerLevel1** | **kotlin.Boolean** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached |  [optional] |
| **isReasonMarketWideCircuitBreakerLevel2** | **kotlin.Boolean** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached |  [optional] |
| **isReasonMarketWideCircuitBreakerLevel3** | **kotlin.Boolean** | Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached |  [optional] |
| **isReasonNotApplicable** | **kotlin.Boolean** | Gets whether the reason is Not Applicable |  [optional] |
| **isReasonNotAvailable** | **kotlin.Boolean** | Gets whether the halt reason is Not Available |  [optional] |



