# AdminTradingStatusModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | Pointer to **NullableString** | The stock symbol | [optional] 
**TimestampNanos** | Pointer to **int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | Pointer to **time.Time** | Time when the trading status was recorded as DateTime | [optional] 
**IsTradingLive** | Pointer to **bool** | Gets whether the security is currently trading on IEX | [optional] 
**IsTradingHalted** | Pointer to **bool** | Gets whether the security is halted across all US equity markets | [optional] 
**IsTradingInOrderAcceptancePeriod** | Pointer to **bool** | Gets whether the security is in Order Acceptance Period on IEX | [optional] 
**IsTradingPaused** | Pointer to **bool** | Gets whether the security is paused and in Order Acceptance Period on IEX | [optional] 
**IsReasonHaltNewsPending** | Pointer to **bool** | Gets whether the halt reason is News Pending | [optional] 
**IsReasonIpoNotYetTrading** | Pointer to **bool** | Gets whether the halt reason is IPO Not Yet Trading | [optional] 
**IsReasonIpoDeferred** | Pointer to **bool** | Gets whether the halt reason is IPO Deferred | [optional] 
**IsReasonHaltNewsDissemination** | Pointer to **bool** | Gets whether the order acceptance period reason is Halt News Dissemination | [optional] 
**IsReasonIpoOrderAcceptancePeriod** | Pointer to **bool** | Gets whether the order acceptance period reason is IPO Order Acceptance Period | [optional] 
**IsReasonIpoPreLaunchPeriod** | Pointer to **bool** | Gets whether the order acceptance period reason is IPO Pre-Launch Period | [optional] 
**IsReasonMarketWideCircuitBreakerLevel1** | Pointer to **bool** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached | [optional] 
**IsReasonMarketWideCircuitBreakerLevel2** | Pointer to **bool** | Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached | [optional] 
**IsReasonMarketWideCircuitBreakerLevel3** | Pointer to **bool** | Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached | [optional] 
**IsReasonNotApplicable** | Pointer to **bool** | Gets whether the reason is Not Applicable | [optional] 
**IsReasonNotAvailable** | Pointer to **bool** | Gets whether the halt reason is Not Available | [optional] 

## Methods

### NewAdminTradingStatusModel

`func NewAdminTradingStatusModel() *AdminTradingStatusModel`

NewAdminTradingStatusModel instantiates a new AdminTradingStatusModel object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminTradingStatusModelWithDefaults

`func NewAdminTradingStatusModelWithDefaults() *AdminTradingStatusModel`

NewAdminTradingStatusModelWithDefaults instantiates a new AdminTradingStatusModel object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *AdminTradingStatusModel) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *AdminTradingStatusModel) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *AdminTradingStatusModel) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *AdminTradingStatusModel) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### SetSymbolNil

`func (o *AdminTradingStatusModel) SetSymbolNil(b bool)`

 SetSymbolNil sets the value for Symbol to be an explicit nil

### UnsetSymbol
`func (o *AdminTradingStatusModel) UnsetSymbol()`

UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
### GetTimestampNanos

`func (o *AdminTradingStatusModel) GetTimestampNanos() int64`

GetTimestampNanos returns the TimestampNanos field if non-nil, zero value otherwise.

### GetTimestampNanosOk

`func (o *AdminTradingStatusModel) GetTimestampNanosOk() (*int64, bool)`

GetTimestampNanosOk returns a tuple with the TimestampNanos field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestampNanos

`func (o *AdminTradingStatusModel) SetTimestampNanos(v int64)`

SetTimestampNanos sets TimestampNanos field to given value.

### HasTimestampNanos

`func (o *AdminTradingStatusModel) HasTimestampNanos() bool`

HasTimestampNanos returns a boolean if a field has been set.

### GetTimestamp

`func (o *AdminTradingStatusModel) GetTimestamp() time.Time`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *AdminTradingStatusModel) GetTimestampOk() (*time.Time, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *AdminTradingStatusModel) SetTimestamp(v time.Time)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *AdminTradingStatusModel) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### GetIsTradingLive

`func (o *AdminTradingStatusModel) GetIsTradingLive() bool`

GetIsTradingLive returns the IsTradingLive field if non-nil, zero value otherwise.

### GetIsTradingLiveOk

`func (o *AdminTradingStatusModel) GetIsTradingLiveOk() (*bool, bool)`

GetIsTradingLiveOk returns a tuple with the IsTradingLive field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsTradingLive

`func (o *AdminTradingStatusModel) SetIsTradingLive(v bool)`

SetIsTradingLive sets IsTradingLive field to given value.

### HasIsTradingLive

`func (o *AdminTradingStatusModel) HasIsTradingLive() bool`

HasIsTradingLive returns a boolean if a field has been set.

### GetIsTradingHalted

`func (o *AdminTradingStatusModel) GetIsTradingHalted() bool`

GetIsTradingHalted returns the IsTradingHalted field if non-nil, zero value otherwise.

### GetIsTradingHaltedOk

`func (o *AdminTradingStatusModel) GetIsTradingHaltedOk() (*bool, bool)`

GetIsTradingHaltedOk returns a tuple with the IsTradingHalted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsTradingHalted

`func (o *AdminTradingStatusModel) SetIsTradingHalted(v bool)`

SetIsTradingHalted sets IsTradingHalted field to given value.

### HasIsTradingHalted

`func (o *AdminTradingStatusModel) HasIsTradingHalted() bool`

HasIsTradingHalted returns a boolean if a field has been set.

### GetIsTradingInOrderAcceptancePeriod

`func (o *AdminTradingStatusModel) GetIsTradingInOrderAcceptancePeriod() bool`

GetIsTradingInOrderAcceptancePeriod returns the IsTradingInOrderAcceptancePeriod field if non-nil, zero value otherwise.

### GetIsTradingInOrderAcceptancePeriodOk

`func (o *AdminTradingStatusModel) GetIsTradingInOrderAcceptancePeriodOk() (*bool, bool)`

GetIsTradingInOrderAcceptancePeriodOk returns a tuple with the IsTradingInOrderAcceptancePeriod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsTradingInOrderAcceptancePeriod

`func (o *AdminTradingStatusModel) SetIsTradingInOrderAcceptancePeriod(v bool)`

SetIsTradingInOrderAcceptancePeriod sets IsTradingInOrderAcceptancePeriod field to given value.

### HasIsTradingInOrderAcceptancePeriod

`func (o *AdminTradingStatusModel) HasIsTradingInOrderAcceptancePeriod() bool`

HasIsTradingInOrderAcceptancePeriod returns a boolean if a field has been set.

### GetIsTradingPaused

`func (o *AdminTradingStatusModel) GetIsTradingPaused() bool`

GetIsTradingPaused returns the IsTradingPaused field if non-nil, zero value otherwise.

### GetIsTradingPausedOk

`func (o *AdminTradingStatusModel) GetIsTradingPausedOk() (*bool, bool)`

GetIsTradingPausedOk returns a tuple with the IsTradingPaused field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsTradingPaused

`func (o *AdminTradingStatusModel) SetIsTradingPaused(v bool)`

SetIsTradingPaused sets IsTradingPaused field to given value.

### HasIsTradingPaused

`func (o *AdminTradingStatusModel) HasIsTradingPaused() bool`

HasIsTradingPaused returns a boolean if a field has been set.

### GetIsReasonHaltNewsPending

`func (o *AdminTradingStatusModel) GetIsReasonHaltNewsPending() bool`

GetIsReasonHaltNewsPending returns the IsReasonHaltNewsPending field if non-nil, zero value otherwise.

### GetIsReasonHaltNewsPendingOk

`func (o *AdminTradingStatusModel) GetIsReasonHaltNewsPendingOk() (*bool, bool)`

GetIsReasonHaltNewsPendingOk returns a tuple with the IsReasonHaltNewsPending field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsReasonHaltNewsPending

`func (o *AdminTradingStatusModel) SetIsReasonHaltNewsPending(v bool)`

SetIsReasonHaltNewsPending sets IsReasonHaltNewsPending field to given value.

### HasIsReasonHaltNewsPending

`func (o *AdminTradingStatusModel) HasIsReasonHaltNewsPending() bool`

HasIsReasonHaltNewsPending returns a boolean if a field has been set.

### GetIsReasonIpoNotYetTrading

`func (o *AdminTradingStatusModel) GetIsReasonIpoNotYetTrading() bool`

GetIsReasonIpoNotYetTrading returns the IsReasonIpoNotYetTrading field if non-nil, zero value otherwise.

### GetIsReasonIpoNotYetTradingOk

`func (o *AdminTradingStatusModel) GetIsReasonIpoNotYetTradingOk() (*bool, bool)`

GetIsReasonIpoNotYetTradingOk returns a tuple with the IsReasonIpoNotYetTrading field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsReasonIpoNotYetTrading

`func (o *AdminTradingStatusModel) SetIsReasonIpoNotYetTrading(v bool)`

SetIsReasonIpoNotYetTrading sets IsReasonIpoNotYetTrading field to given value.

### HasIsReasonIpoNotYetTrading

`func (o *AdminTradingStatusModel) HasIsReasonIpoNotYetTrading() bool`

HasIsReasonIpoNotYetTrading returns a boolean if a field has been set.

### GetIsReasonIpoDeferred

`func (o *AdminTradingStatusModel) GetIsReasonIpoDeferred() bool`

GetIsReasonIpoDeferred returns the IsReasonIpoDeferred field if non-nil, zero value otherwise.

### GetIsReasonIpoDeferredOk

`func (o *AdminTradingStatusModel) GetIsReasonIpoDeferredOk() (*bool, bool)`

GetIsReasonIpoDeferredOk returns a tuple with the IsReasonIpoDeferred field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsReasonIpoDeferred

`func (o *AdminTradingStatusModel) SetIsReasonIpoDeferred(v bool)`

SetIsReasonIpoDeferred sets IsReasonIpoDeferred field to given value.

### HasIsReasonIpoDeferred

`func (o *AdminTradingStatusModel) HasIsReasonIpoDeferred() bool`

HasIsReasonIpoDeferred returns a boolean if a field has been set.

### GetIsReasonHaltNewsDissemination

`func (o *AdminTradingStatusModel) GetIsReasonHaltNewsDissemination() bool`

GetIsReasonHaltNewsDissemination returns the IsReasonHaltNewsDissemination field if non-nil, zero value otherwise.

### GetIsReasonHaltNewsDisseminationOk

`func (o *AdminTradingStatusModel) GetIsReasonHaltNewsDisseminationOk() (*bool, bool)`

GetIsReasonHaltNewsDisseminationOk returns a tuple with the IsReasonHaltNewsDissemination field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsReasonHaltNewsDissemination

`func (o *AdminTradingStatusModel) SetIsReasonHaltNewsDissemination(v bool)`

SetIsReasonHaltNewsDissemination sets IsReasonHaltNewsDissemination field to given value.

### HasIsReasonHaltNewsDissemination

`func (o *AdminTradingStatusModel) HasIsReasonHaltNewsDissemination() bool`

HasIsReasonHaltNewsDissemination returns a boolean if a field has been set.

### GetIsReasonIpoOrderAcceptancePeriod

`func (o *AdminTradingStatusModel) GetIsReasonIpoOrderAcceptancePeriod() bool`

GetIsReasonIpoOrderAcceptancePeriod returns the IsReasonIpoOrderAcceptancePeriod field if non-nil, zero value otherwise.

### GetIsReasonIpoOrderAcceptancePeriodOk

`func (o *AdminTradingStatusModel) GetIsReasonIpoOrderAcceptancePeriodOk() (*bool, bool)`

GetIsReasonIpoOrderAcceptancePeriodOk returns a tuple with the IsReasonIpoOrderAcceptancePeriod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsReasonIpoOrderAcceptancePeriod

`func (o *AdminTradingStatusModel) SetIsReasonIpoOrderAcceptancePeriod(v bool)`

SetIsReasonIpoOrderAcceptancePeriod sets IsReasonIpoOrderAcceptancePeriod field to given value.

### HasIsReasonIpoOrderAcceptancePeriod

`func (o *AdminTradingStatusModel) HasIsReasonIpoOrderAcceptancePeriod() bool`

HasIsReasonIpoOrderAcceptancePeriod returns a boolean if a field has been set.

### GetIsReasonIpoPreLaunchPeriod

`func (o *AdminTradingStatusModel) GetIsReasonIpoPreLaunchPeriod() bool`

GetIsReasonIpoPreLaunchPeriod returns the IsReasonIpoPreLaunchPeriod field if non-nil, zero value otherwise.

### GetIsReasonIpoPreLaunchPeriodOk

`func (o *AdminTradingStatusModel) GetIsReasonIpoPreLaunchPeriodOk() (*bool, bool)`

GetIsReasonIpoPreLaunchPeriodOk returns a tuple with the IsReasonIpoPreLaunchPeriod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsReasonIpoPreLaunchPeriod

`func (o *AdminTradingStatusModel) SetIsReasonIpoPreLaunchPeriod(v bool)`

SetIsReasonIpoPreLaunchPeriod sets IsReasonIpoPreLaunchPeriod field to given value.

### HasIsReasonIpoPreLaunchPeriod

`func (o *AdminTradingStatusModel) HasIsReasonIpoPreLaunchPeriod() bool`

HasIsReasonIpoPreLaunchPeriod returns a boolean if a field has been set.

### GetIsReasonMarketWideCircuitBreakerLevel1

`func (o *AdminTradingStatusModel) GetIsReasonMarketWideCircuitBreakerLevel1() bool`

GetIsReasonMarketWideCircuitBreakerLevel1 returns the IsReasonMarketWideCircuitBreakerLevel1 field if non-nil, zero value otherwise.

### GetIsReasonMarketWideCircuitBreakerLevel1Ok

`func (o *AdminTradingStatusModel) GetIsReasonMarketWideCircuitBreakerLevel1Ok() (*bool, bool)`

GetIsReasonMarketWideCircuitBreakerLevel1Ok returns a tuple with the IsReasonMarketWideCircuitBreakerLevel1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsReasonMarketWideCircuitBreakerLevel1

`func (o *AdminTradingStatusModel) SetIsReasonMarketWideCircuitBreakerLevel1(v bool)`

SetIsReasonMarketWideCircuitBreakerLevel1 sets IsReasonMarketWideCircuitBreakerLevel1 field to given value.

### HasIsReasonMarketWideCircuitBreakerLevel1

`func (o *AdminTradingStatusModel) HasIsReasonMarketWideCircuitBreakerLevel1() bool`

HasIsReasonMarketWideCircuitBreakerLevel1 returns a boolean if a field has been set.

### GetIsReasonMarketWideCircuitBreakerLevel2

`func (o *AdminTradingStatusModel) GetIsReasonMarketWideCircuitBreakerLevel2() bool`

GetIsReasonMarketWideCircuitBreakerLevel2 returns the IsReasonMarketWideCircuitBreakerLevel2 field if non-nil, zero value otherwise.

### GetIsReasonMarketWideCircuitBreakerLevel2Ok

`func (o *AdminTradingStatusModel) GetIsReasonMarketWideCircuitBreakerLevel2Ok() (*bool, bool)`

GetIsReasonMarketWideCircuitBreakerLevel2Ok returns a tuple with the IsReasonMarketWideCircuitBreakerLevel2 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsReasonMarketWideCircuitBreakerLevel2

`func (o *AdminTradingStatusModel) SetIsReasonMarketWideCircuitBreakerLevel2(v bool)`

SetIsReasonMarketWideCircuitBreakerLevel2 sets IsReasonMarketWideCircuitBreakerLevel2 field to given value.

### HasIsReasonMarketWideCircuitBreakerLevel2

`func (o *AdminTradingStatusModel) HasIsReasonMarketWideCircuitBreakerLevel2() bool`

HasIsReasonMarketWideCircuitBreakerLevel2 returns a boolean if a field has been set.

### GetIsReasonMarketWideCircuitBreakerLevel3

`func (o *AdminTradingStatusModel) GetIsReasonMarketWideCircuitBreakerLevel3() bool`

GetIsReasonMarketWideCircuitBreakerLevel3 returns the IsReasonMarketWideCircuitBreakerLevel3 field if non-nil, zero value otherwise.

### GetIsReasonMarketWideCircuitBreakerLevel3Ok

`func (o *AdminTradingStatusModel) GetIsReasonMarketWideCircuitBreakerLevel3Ok() (*bool, bool)`

GetIsReasonMarketWideCircuitBreakerLevel3Ok returns a tuple with the IsReasonMarketWideCircuitBreakerLevel3 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsReasonMarketWideCircuitBreakerLevel3

`func (o *AdminTradingStatusModel) SetIsReasonMarketWideCircuitBreakerLevel3(v bool)`

SetIsReasonMarketWideCircuitBreakerLevel3 sets IsReasonMarketWideCircuitBreakerLevel3 field to given value.

### HasIsReasonMarketWideCircuitBreakerLevel3

`func (o *AdminTradingStatusModel) HasIsReasonMarketWideCircuitBreakerLevel3() bool`

HasIsReasonMarketWideCircuitBreakerLevel3 returns a boolean if a field has been set.

### GetIsReasonNotApplicable

`func (o *AdminTradingStatusModel) GetIsReasonNotApplicable() bool`

GetIsReasonNotApplicable returns the IsReasonNotApplicable field if non-nil, zero value otherwise.

### GetIsReasonNotApplicableOk

`func (o *AdminTradingStatusModel) GetIsReasonNotApplicableOk() (*bool, bool)`

GetIsReasonNotApplicableOk returns a tuple with the IsReasonNotApplicable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsReasonNotApplicable

`func (o *AdminTradingStatusModel) SetIsReasonNotApplicable(v bool)`

SetIsReasonNotApplicable sets IsReasonNotApplicable field to given value.

### HasIsReasonNotApplicable

`func (o *AdminTradingStatusModel) HasIsReasonNotApplicable() bool`

HasIsReasonNotApplicable returns a boolean if a field has been set.

### GetIsReasonNotAvailable

`func (o *AdminTradingStatusModel) GetIsReasonNotAvailable() bool`

GetIsReasonNotAvailable returns the IsReasonNotAvailable field if non-nil, zero value otherwise.

### GetIsReasonNotAvailableOk

`func (o *AdminTradingStatusModel) GetIsReasonNotAvailableOk() (*bool, bool)`

GetIsReasonNotAvailableOk returns a tuple with the IsReasonNotAvailable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsReasonNotAvailable

`func (o *AdminTradingStatusModel) SetIsReasonNotAvailable(v bool)`

SetIsReasonNotAvailable sets IsReasonNotAvailable field to given value.

### HasIsReasonNotAvailable

`func (o *AdminTradingStatusModel) HasIsReasonNotAvailable() bool`

HasIsReasonNotAvailable returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


