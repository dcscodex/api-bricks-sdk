

# TradingStatusModel

Represents the response DTO for trading status information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | The stock symbol |  [optional]
**timestampNanos** | **Long** | Original timestamp in nanoseconds since epoch |  [optional]
**timestamp** | **OffsetDateTime** | Time when the trading status was recorded as DateTime |  [optional]
**isTradingLive** | **Boolean** | Gets whether the security is currently trading on IEX |  [optional]
**isTradingHalted** | **Boolean** | Gets whether the security is halted across all US equity markets |  [optional]
**isTradingInOrderAcceptancePeriod** | **Boolean** | Gets whether the security is in Order Acceptance Period on IEX |  [optional]
**isTradingPaused** | **Boolean** | Gets whether the security is paused and in Order Acceptance Period on IEX |  [optional]
**isReasonHaltNewsPending** | **Boolean** | Gets whether the halt reason is News Pending |  [optional]
**isReasonIpoNotYetTrading** | **Boolean** | Gets whether the halt reason is IPO Not Yet Trading |  [optional]
**isReasonIpoDeferred** | **Boolean** | Gets whether the halt reason is IPO Deferred |  [optional]
**isReasonHaltNewsDissemination** | **Boolean** | Gets whether the order acceptance period reason is Halt News Dissemination |  [optional]
**isReasonIpoOrderAcceptancePeriod** | **Boolean** | Gets whether the order acceptance period reason is IPO Order Acceptance Period |  [optional]
**isReasonIpoPreLaunchPeriod** | **Boolean** | Gets whether the order acceptance period reason is IPO Pre-Launch Period |  [optional]
**isReasonMarketWideCircuitBreakerLevel1** | **Boolean** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached |  [optional]
**isReasonMarketWideCircuitBreakerLevel2** | **Boolean** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached |  [optional]
**isReasonMarketWideCircuitBreakerLevel3** | **Boolean** | Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached |  [optional]
**isReasonNotApplicable** | **Boolean** | Gets whether the reason is Not Applicable |  [optional]
**isReasonNotAvailable** | **Boolean** | Gets whether the halt reason is Not Available |  [optional]



