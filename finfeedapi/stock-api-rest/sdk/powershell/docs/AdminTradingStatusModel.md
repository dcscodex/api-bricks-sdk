# AdminTradingStatusModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **String** | The stock symbol | [optional] 
**TimestampNanos** | **Int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **System.DateTime** | Time when the trading status was recorded as DateTime | [optional] 
**IsTradingLive** | **Boolean** | Gets whether the security is currently trading on IEX | [optional] 
**IsTradingHalted** | **Boolean** | Gets whether the security is halted across all US equity markets | [optional] 
**IsTradingInOrderAcceptancePeriod** | **Boolean** | Gets whether the security is in Order Acceptance Period on IEX | [optional] 
**IsTradingPaused** | **Boolean** | Gets whether the security is paused and in Order Acceptance Period on IEX | [optional] 
**IsReasonHaltNewsPending** | **Boolean** | Gets whether the halt reason is News Pending | [optional] 
**IsReasonIpoNotYetTrading** | **Boolean** | Gets whether the halt reason is IPO Not Yet Trading | [optional] 
**IsReasonIpoDeferred** | **Boolean** | Gets whether the halt reason is IPO Deferred | [optional] 
**IsReasonHaltNewsDissemination** | **Boolean** | Gets whether the order acceptance period reason is Halt News Dissemination | [optional] 
**IsReasonIpoOrderAcceptancePeriod** | **Boolean** | Gets whether the order acceptance period reason is IPO Order Acceptance Period | [optional] 
**IsReasonIpoPreLaunchPeriod** | **Boolean** | Gets whether the order acceptance period reason is IPO Pre-Launch Period | [optional] 
**IsReasonMarketWideCircuitBreakerLevel1** | **Boolean** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached | [optional] 
**IsReasonMarketWideCircuitBreakerLevel2** | **Boolean** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached | [optional] 
**IsReasonMarketWideCircuitBreakerLevel3** | **Boolean** | Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached | [optional] 
**IsReasonNotApplicable** | **Boolean** | Gets whether the reason is Not Applicable | [optional] 
**IsReasonNotAvailable** | **Boolean** | Gets whether the halt reason is Not Available | [optional] 

## Examples

- Prepare the resource
```powershell
$AdminTradingStatusModel = Initialize-PSOpenAPIToolsAdminTradingStatusModel  -Symbol null `
 -TimestampNanos null `
 -Timestamp null `
 -IsTradingLive null `
 -IsTradingHalted null `
 -IsTradingInOrderAcceptancePeriod null `
 -IsTradingPaused null `
 -IsReasonHaltNewsPending null `
 -IsReasonIpoNotYetTrading null `
 -IsReasonIpoDeferred null `
 -IsReasonHaltNewsDissemination null `
 -IsReasonIpoOrderAcceptancePeriod null `
 -IsReasonIpoPreLaunchPeriod null `
 -IsReasonMarketWideCircuitBreakerLevel1 null `
 -IsReasonMarketWideCircuitBreakerLevel2 null `
 -IsReasonMarketWideCircuitBreakerLevel3 null `
 -IsReasonNotApplicable null `
 -IsReasonNotAvailable null
```

- Convert the resource to JSON
```powershell
$AdminTradingStatusModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

