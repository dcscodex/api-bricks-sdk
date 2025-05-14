# APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model.AdminTradingStatusModel
Represents the response DTO for trading status information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **string** | The stock symbol | [optional] 
**TimestampNanos** | **long** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **DateTime** | Time when the trading status was recorded as DateTime | [optional] 
**IsTradingLive** | **bool** | Gets whether the security is currently trading on IEX | [optional] 
**IsTradingHalted** | **bool** | Gets whether the security is halted across all US equity markets | [optional] 
**IsTradingInOrderAcceptancePeriod** | **bool** | Gets whether the security is in Order Acceptance Period on IEX | [optional] 
**IsTradingPaused** | **bool** | Gets whether the security is paused and in Order Acceptance Period on IEX | [optional] 
**IsReasonHaltNewsPending** | **bool** | Gets whether the halt reason is News Pending | [optional] 
**IsReasonIpoNotYetTrading** | **bool** | Gets whether the halt reason is IPO Not Yet Trading | [optional] 
**IsReasonIpoDeferred** | **bool** | Gets whether the halt reason is IPO Deferred | [optional] 
**IsReasonHaltNewsDissemination** | **bool** | Gets whether the order acceptance period reason is Halt News Dissemination | [optional] 
**IsReasonIpoOrderAcceptancePeriod** | **bool** | Gets whether the order acceptance period reason is IPO Order Acceptance Period | [optional] 
**IsReasonIpoPreLaunchPeriod** | **bool** | Gets whether the order acceptance period reason is IPO Pre-Launch Period | [optional] 
**IsReasonMarketWideCircuitBreakerLevel1** | **bool** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached | [optional] 
**IsReasonMarketWideCircuitBreakerLevel2** | **bool** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached | [optional] 
**IsReasonMarketWideCircuitBreakerLevel3** | **bool** | Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached | [optional] 
**IsReasonNotApplicable** | **bool** | Gets whether the reason is Not Applicable | [optional] 
**IsReasonNotAvailable** | **bool** | Gets whether the halt reason is Not Available | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

