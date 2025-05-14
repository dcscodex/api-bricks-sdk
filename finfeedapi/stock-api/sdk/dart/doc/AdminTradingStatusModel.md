# openapi.model.AdminTradingStatusModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | The stock symbol | [optional] 
**timestampNanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | [**DateTime**](DateTime.md) | Time when the trading status was recorded as DateTime | [optional] 
**isTradingLive** | **bool** | Gets whether the security is currently trading on IEX | [optional] 
**isTradingHalted** | **bool** | Gets whether the security is halted across all US equity markets | [optional] 
**isTradingInOrderAcceptancePeriod** | **bool** | Gets whether the security is in Order Acceptance Period on IEX | [optional] 
**isTradingPaused** | **bool** | Gets whether the security is paused and in Order Acceptance Period on IEX | [optional] 
**isReasonHaltNewsPending** | **bool** | Gets whether the halt reason is News Pending | [optional] 
**isReasonIpoNotYetTrading** | **bool** | Gets whether the halt reason is IPO Not Yet Trading | [optional] 
**isReasonIpoDeferred** | **bool** | Gets whether the halt reason is IPO Deferred | [optional] 
**isReasonHaltNewsDissemination** | **bool** | Gets whether the order acceptance period reason is Halt News Dissemination | [optional] 
**isReasonIpoOrderAcceptancePeriod** | **bool** | Gets whether the order acceptance period reason is IPO Order Acceptance Period | [optional] 
**isReasonIpoPreLaunchPeriod** | **bool** | Gets whether the order acceptance period reason is IPO Pre-Launch Period | [optional] 
**isReasonMarketWideCircuitBreakerLevel1** | **bool** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached | [optional] 
**isReasonMarketWideCircuitBreakerLevel2** | **bool** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached | [optional] 
**isReasonMarketWideCircuitBreakerLevel3** | **bool** | Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached | [optional] 
**isReasonNotApplicable** | **bool** | Gets whether the reason is Not Applicable | [optional] 
**isReasonNotAvailable** | **bool** | Gets whether the halt reason is Not Available | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


