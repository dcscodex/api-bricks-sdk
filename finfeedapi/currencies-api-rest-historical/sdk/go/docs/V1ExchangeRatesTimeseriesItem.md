# V1ExchangeRatesTimeseriesItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TimePeriodStart** | Pointer to **time.Time** | Gets or sets the start time of the period. | [optional] 
**TimePeriodEnd** | Pointer to **time.Time** | Gets or sets the end time of the period. | [optional] 
**TimeOpen** | Pointer to **NullableTime** | Gets or sets the opening time of the period. | [optional] 
**TimeClose** | Pointer to **NullableTime** | Gets or sets the closing time of the period. | [optional] 
**RateOpen** | Pointer to **NullableFloat64** | Gets or sets the opening rate for the period. | [optional] 
**RateHigh** | Pointer to **NullableFloat64** | Gets or sets the highest rate for the period. | [optional] 
**RateLow** | Pointer to **NullableFloat64** | Gets or sets the lowest rate for the period. | [optional] 
**RateClose** | Pointer to **NullableFloat64** | Gets or sets the closing rate for the period. | [optional] 

## Methods

### NewV1ExchangeRatesTimeseriesItem

`func NewV1ExchangeRatesTimeseriesItem() *V1ExchangeRatesTimeseriesItem`

NewV1ExchangeRatesTimeseriesItem instantiates a new V1ExchangeRatesTimeseriesItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewV1ExchangeRatesTimeseriesItemWithDefaults

`func NewV1ExchangeRatesTimeseriesItemWithDefaults() *V1ExchangeRatesTimeseriesItem`

NewV1ExchangeRatesTimeseriesItemWithDefaults instantiates a new V1ExchangeRatesTimeseriesItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTimePeriodStart

`func (o *V1ExchangeRatesTimeseriesItem) GetTimePeriodStart() time.Time`

GetTimePeriodStart returns the TimePeriodStart field if non-nil, zero value otherwise.

### GetTimePeriodStartOk

`func (o *V1ExchangeRatesTimeseriesItem) GetTimePeriodStartOk() (*time.Time, bool)`

GetTimePeriodStartOk returns a tuple with the TimePeriodStart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimePeriodStart

`func (o *V1ExchangeRatesTimeseriesItem) SetTimePeriodStart(v time.Time)`

SetTimePeriodStart sets TimePeriodStart field to given value.

### HasTimePeriodStart

`func (o *V1ExchangeRatesTimeseriesItem) HasTimePeriodStart() bool`

HasTimePeriodStart returns a boolean if a field has been set.

### GetTimePeriodEnd

`func (o *V1ExchangeRatesTimeseriesItem) GetTimePeriodEnd() time.Time`

GetTimePeriodEnd returns the TimePeriodEnd field if non-nil, zero value otherwise.

### GetTimePeriodEndOk

`func (o *V1ExchangeRatesTimeseriesItem) GetTimePeriodEndOk() (*time.Time, bool)`

GetTimePeriodEndOk returns a tuple with the TimePeriodEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimePeriodEnd

`func (o *V1ExchangeRatesTimeseriesItem) SetTimePeriodEnd(v time.Time)`

SetTimePeriodEnd sets TimePeriodEnd field to given value.

### HasTimePeriodEnd

`func (o *V1ExchangeRatesTimeseriesItem) HasTimePeriodEnd() bool`

HasTimePeriodEnd returns a boolean if a field has been set.

### GetTimeOpen

`func (o *V1ExchangeRatesTimeseriesItem) GetTimeOpen() time.Time`

GetTimeOpen returns the TimeOpen field if non-nil, zero value otherwise.

### GetTimeOpenOk

`func (o *V1ExchangeRatesTimeseriesItem) GetTimeOpenOk() (*time.Time, bool)`

GetTimeOpenOk returns a tuple with the TimeOpen field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeOpen

`func (o *V1ExchangeRatesTimeseriesItem) SetTimeOpen(v time.Time)`

SetTimeOpen sets TimeOpen field to given value.

### HasTimeOpen

`func (o *V1ExchangeRatesTimeseriesItem) HasTimeOpen() bool`

HasTimeOpen returns a boolean if a field has been set.

### SetTimeOpenNil

`func (o *V1ExchangeRatesTimeseriesItem) SetTimeOpenNil(b bool)`

 SetTimeOpenNil sets the value for TimeOpen to be an explicit nil

### UnsetTimeOpen
`func (o *V1ExchangeRatesTimeseriesItem) UnsetTimeOpen()`

UnsetTimeOpen ensures that no value is present for TimeOpen, not even an explicit nil
### GetTimeClose

`func (o *V1ExchangeRatesTimeseriesItem) GetTimeClose() time.Time`

GetTimeClose returns the TimeClose field if non-nil, zero value otherwise.

### GetTimeCloseOk

`func (o *V1ExchangeRatesTimeseriesItem) GetTimeCloseOk() (*time.Time, bool)`

GetTimeCloseOk returns a tuple with the TimeClose field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeClose

`func (o *V1ExchangeRatesTimeseriesItem) SetTimeClose(v time.Time)`

SetTimeClose sets TimeClose field to given value.

### HasTimeClose

`func (o *V1ExchangeRatesTimeseriesItem) HasTimeClose() bool`

HasTimeClose returns a boolean if a field has been set.

### SetTimeCloseNil

`func (o *V1ExchangeRatesTimeseriesItem) SetTimeCloseNil(b bool)`

 SetTimeCloseNil sets the value for TimeClose to be an explicit nil

### UnsetTimeClose
`func (o *V1ExchangeRatesTimeseriesItem) UnsetTimeClose()`

UnsetTimeClose ensures that no value is present for TimeClose, not even an explicit nil
### GetRateOpen

`func (o *V1ExchangeRatesTimeseriesItem) GetRateOpen() float64`

GetRateOpen returns the RateOpen field if non-nil, zero value otherwise.

### GetRateOpenOk

`func (o *V1ExchangeRatesTimeseriesItem) GetRateOpenOk() (*float64, bool)`

GetRateOpenOk returns a tuple with the RateOpen field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRateOpen

`func (o *V1ExchangeRatesTimeseriesItem) SetRateOpen(v float64)`

SetRateOpen sets RateOpen field to given value.

### HasRateOpen

`func (o *V1ExchangeRatesTimeseriesItem) HasRateOpen() bool`

HasRateOpen returns a boolean if a field has been set.

### SetRateOpenNil

`func (o *V1ExchangeRatesTimeseriesItem) SetRateOpenNil(b bool)`

 SetRateOpenNil sets the value for RateOpen to be an explicit nil

### UnsetRateOpen
`func (o *V1ExchangeRatesTimeseriesItem) UnsetRateOpen()`

UnsetRateOpen ensures that no value is present for RateOpen, not even an explicit nil
### GetRateHigh

`func (o *V1ExchangeRatesTimeseriesItem) GetRateHigh() float64`

GetRateHigh returns the RateHigh field if non-nil, zero value otherwise.

### GetRateHighOk

`func (o *V1ExchangeRatesTimeseriesItem) GetRateHighOk() (*float64, bool)`

GetRateHighOk returns a tuple with the RateHigh field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRateHigh

`func (o *V1ExchangeRatesTimeseriesItem) SetRateHigh(v float64)`

SetRateHigh sets RateHigh field to given value.

### HasRateHigh

`func (o *V1ExchangeRatesTimeseriesItem) HasRateHigh() bool`

HasRateHigh returns a boolean if a field has been set.

### SetRateHighNil

`func (o *V1ExchangeRatesTimeseriesItem) SetRateHighNil(b bool)`

 SetRateHighNil sets the value for RateHigh to be an explicit nil

### UnsetRateHigh
`func (o *V1ExchangeRatesTimeseriesItem) UnsetRateHigh()`

UnsetRateHigh ensures that no value is present for RateHigh, not even an explicit nil
### GetRateLow

`func (o *V1ExchangeRatesTimeseriesItem) GetRateLow() float64`

GetRateLow returns the RateLow field if non-nil, zero value otherwise.

### GetRateLowOk

`func (o *V1ExchangeRatesTimeseriesItem) GetRateLowOk() (*float64, bool)`

GetRateLowOk returns a tuple with the RateLow field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRateLow

`func (o *V1ExchangeRatesTimeseriesItem) SetRateLow(v float64)`

SetRateLow sets RateLow field to given value.

### HasRateLow

`func (o *V1ExchangeRatesTimeseriesItem) HasRateLow() bool`

HasRateLow returns a boolean if a field has been set.

### SetRateLowNil

`func (o *V1ExchangeRatesTimeseriesItem) SetRateLowNil(b bool)`

 SetRateLowNil sets the value for RateLow to be an explicit nil

### UnsetRateLow
`func (o *V1ExchangeRatesTimeseriesItem) UnsetRateLow()`

UnsetRateLow ensures that no value is present for RateLow, not even an explicit nil
### GetRateClose

`func (o *V1ExchangeRatesTimeseriesItem) GetRateClose() float64`

GetRateClose returns the RateClose field if non-nil, zero value otherwise.

### GetRateCloseOk

`func (o *V1ExchangeRatesTimeseriesItem) GetRateCloseOk() (*float64, bool)`

GetRateCloseOk returns a tuple with the RateClose field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRateClose

`func (o *V1ExchangeRatesTimeseriesItem) SetRateClose(v float64)`

SetRateClose sets RateClose field to given value.

### HasRateClose

`func (o *V1ExchangeRatesTimeseriesItem) HasRateClose() bool`

HasRateClose returns a boolean if a field has been set.

### SetRateCloseNil

`func (o *V1ExchangeRatesTimeseriesItem) SetRateCloseNil(b bool)`

 SetRateCloseNil sets the value for RateClose to be an explicit nil

### UnsetRateClose
`func (o *V1ExchangeRatesTimeseriesItem) UnsetRateClose()`

UnsetRateClose ensures that no value is present for RateClose, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


