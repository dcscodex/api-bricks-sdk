# IndexesIndexTimeseriesItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TimePeriodStart** | Pointer to **time.Time** | Gets or sets the start time of the time period. | [optional] 
**TimePeriodEnd** | Pointer to **time.Time** | Gets or sets the end time of the time period. | [optional] 
**TimeOpen** | Pointer to **NullableTime** | Gets or sets the time when the value opened. | [optional] 
**TimeClose** | Pointer to **NullableTime** | Gets or sets the time when the value closed. | [optional] 
**ValueOpen** | Pointer to **NullableFloat64** | Gets or sets the opening value. | [optional] 
**ValueHigh** | Pointer to **NullableFloat64** | Gets or sets the highest value during the time period. | [optional] 
**ValueLow** | Pointer to **NullableFloat64** | Gets or sets the lowest value during the time period. | [optional] 
**ValueClose** | Pointer to **NullableFloat64** | Gets or sets the closing value. | [optional] 
**ValueCount** | Pointer to **int64** | Gets or sets the number of values during the time period. | [optional] 

## Methods

### NewIndexesIndexTimeseriesItem

`func NewIndexesIndexTimeseriesItem() *IndexesIndexTimeseriesItem`

NewIndexesIndexTimeseriesItem instantiates a new IndexesIndexTimeseriesItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewIndexesIndexTimeseriesItemWithDefaults

`func NewIndexesIndexTimeseriesItemWithDefaults() *IndexesIndexTimeseriesItem`

NewIndexesIndexTimeseriesItemWithDefaults instantiates a new IndexesIndexTimeseriesItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTimePeriodStart

`func (o *IndexesIndexTimeseriesItem) GetTimePeriodStart() time.Time`

GetTimePeriodStart returns the TimePeriodStart field if non-nil, zero value otherwise.

### GetTimePeriodStartOk

`func (o *IndexesIndexTimeseriesItem) GetTimePeriodStartOk() (*time.Time, bool)`

GetTimePeriodStartOk returns a tuple with the TimePeriodStart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimePeriodStart

`func (o *IndexesIndexTimeseriesItem) SetTimePeriodStart(v time.Time)`

SetTimePeriodStart sets TimePeriodStart field to given value.

### HasTimePeriodStart

`func (o *IndexesIndexTimeseriesItem) HasTimePeriodStart() bool`

HasTimePeriodStart returns a boolean if a field has been set.

### GetTimePeriodEnd

`func (o *IndexesIndexTimeseriesItem) GetTimePeriodEnd() time.Time`

GetTimePeriodEnd returns the TimePeriodEnd field if non-nil, zero value otherwise.

### GetTimePeriodEndOk

`func (o *IndexesIndexTimeseriesItem) GetTimePeriodEndOk() (*time.Time, bool)`

GetTimePeriodEndOk returns a tuple with the TimePeriodEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimePeriodEnd

`func (o *IndexesIndexTimeseriesItem) SetTimePeriodEnd(v time.Time)`

SetTimePeriodEnd sets TimePeriodEnd field to given value.

### HasTimePeriodEnd

`func (o *IndexesIndexTimeseriesItem) HasTimePeriodEnd() bool`

HasTimePeriodEnd returns a boolean if a field has been set.

### GetTimeOpen

`func (o *IndexesIndexTimeseriesItem) GetTimeOpen() time.Time`

GetTimeOpen returns the TimeOpen field if non-nil, zero value otherwise.

### GetTimeOpenOk

`func (o *IndexesIndexTimeseriesItem) GetTimeOpenOk() (*time.Time, bool)`

GetTimeOpenOk returns a tuple with the TimeOpen field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeOpen

`func (o *IndexesIndexTimeseriesItem) SetTimeOpen(v time.Time)`

SetTimeOpen sets TimeOpen field to given value.

### HasTimeOpen

`func (o *IndexesIndexTimeseriesItem) HasTimeOpen() bool`

HasTimeOpen returns a boolean if a field has been set.

### SetTimeOpenNil

`func (o *IndexesIndexTimeseriesItem) SetTimeOpenNil(b bool)`

 SetTimeOpenNil sets the value for TimeOpen to be an explicit nil

### UnsetTimeOpen
`func (o *IndexesIndexTimeseriesItem) UnsetTimeOpen()`

UnsetTimeOpen ensures that no value is present for TimeOpen, not even an explicit nil
### GetTimeClose

`func (o *IndexesIndexTimeseriesItem) GetTimeClose() time.Time`

GetTimeClose returns the TimeClose field if non-nil, zero value otherwise.

### GetTimeCloseOk

`func (o *IndexesIndexTimeseriesItem) GetTimeCloseOk() (*time.Time, bool)`

GetTimeCloseOk returns a tuple with the TimeClose field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeClose

`func (o *IndexesIndexTimeseriesItem) SetTimeClose(v time.Time)`

SetTimeClose sets TimeClose field to given value.

### HasTimeClose

`func (o *IndexesIndexTimeseriesItem) HasTimeClose() bool`

HasTimeClose returns a boolean if a field has been set.

### SetTimeCloseNil

`func (o *IndexesIndexTimeseriesItem) SetTimeCloseNil(b bool)`

 SetTimeCloseNil sets the value for TimeClose to be an explicit nil

### UnsetTimeClose
`func (o *IndexesIndexTimeseriesItem) UnsetTimeClose()`

UnsetTimeClose ensures that no value is present for TimeClose, not even an explicit nil
### GetValueOpen

`func (o *IndexesIndexTimeseriesItem) GetValueOpen() float64`

GetValueOpen returns the ValueOpen field if non-nil, zero value otherwise.

### GetValueOpenOk

`func (o *IndexesIndexTimeseriesItem) GetValueOpenOk() (*float64, bool)`

GetValueOpenOk returns a tuple with the ValueOpen field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValueOpen

`func (o *IndexesIndexTimeseriesItem) SetValueOpen(v float64)`

SetValueOpen sets ValueOpen field to given value.

### HasValueOpen

`func (o *IndexesIndexTimeseriesItem) HasValueOpen() bool`

HasValueOpen returns a boolean if a field has been set.

### SetValueOpenNil

`func (o *IndexesIndexTimeseriesItem) SetValueOpenNil(b bool)`

 SetValueOpenNil sets the value for ValueOpen to be an explicit nil

### UnsetValueOpen
`func (o *IndexesIndexTimeseriesItem) UnsetValueOpen()`

UnsetValueOpen ensures that no value is present for ValueOpen, not even an explicit nil
### GetValueHigh

`func (o *IndexesIndexTimeseriesItem) GetValueHigh() float64`

GetValueHigh returns the ValueHigh field if non-nil, zero value otherwise.

### GetValueHighOk

`func (o *IndexesIndexTimeseriesItem) GetValueHighOk() (*float64, bool)`

GetValueHighOk returns a tuple with the ValueHigh field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValueHigh

`func (o *IndexesIndexTimeseriesItem) SetValueHigh(v float64)`

SetValueHigh sets ValueHigh field to given value.

### HasValueHigh

`func (o *IndexesIndexTimeseriesItem) HasValueHigh() bool`

HasValueHigh returns a boolean if a field has been set.

### SetValueHighNil

`func (o *IndexesIndexTimeseriesItem) SetValueHighNil(b bool)`

 SetValueHighNil sets the value for ValueHigh to be an explicit nil

### UnsetValueHigh
`func (o *IndexesIndexTimeseriesItem) UnsetValueHigh()`

UnsetValueHigh ensures that no value is present for ValueHigh, not even an explicit nil
### GetValueLow

`func (o *IndexesIndexTimeseriesItem) GetValueLow() float64`

GetValueLow returns the ValueLow field if non-nil, zero value otherwise.

### GetValueLowOk

`func (o *IndexesIndexTimeseriesItem) GetValueLowOk() (*float64, bool)`

GetValueLowOk returns a tuple with the ValueLow field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValueLow

`func (o *IndexesIndexTimeseriesItem) SetValueLow(v float64)`

SetValueLow sets ValueLow field to given value.

### HasValueLow

`func (o *IndexesIndexTimeseriesItem) HasValueLow() bool`

HasValueLow returns a boolean if a field has been set.

### SetValueLowNil

`func (o *IndexesIndexTimeseriesItem) SetValueLowNil(b bool)`

 SetValueLowNil sets the value for ValueLow to be an explicit nil

### UnsetValueLow
`func (o *IndexesIndexTimeseriesItem) UnsetValueLow()`

UnsetValueLow ensures that no value is present for ValueLow, not even an explicit nil
### GetValueClose

`func (o *IndexesIndexTimeseriesItem) GetValueClose() float64`

GetValueClose returns the ValueClose field if non-nil, zero value otherwise.

### GetValueCloseOk

`func (o *IndexesIndexTimeseriesItem) GetValueCloseOk() (*float64, bool)`

GetValueCloseOk returns a tuple with the ValueClose field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValueClose

`func (o *IndexesIndexTimeseriesItem) SetValueClose(v float64)`

SetValueClose sets ValueClose field to given value.

### HasValueClose

`func (o *IndexesIndexTimeseriesItem) HasValueClose() bool`

HasValueClose returns a boolean if a field has been set.

### SetValueCloseNil

`func (o *IndexesIndexTimeseriesItem) SetValueCloseNil(b bool)`

 SetValueCloseNil sets the value for ValueClose to be an explicit nil

### UnsetValueClose
`func (o *IndexesIndexTimeseriesItem) UnsetValueClose()`

UnsetValueClose ensures that no value is present for ValueClose, not even an explicit nil
### GetValueCount

`func (o *IndexesIndexTimeseriesItem) GetValueCount() int64`

GetValueCount returns the ValueCount field if non-nil, zero value otherwise.

### GetValueCountOk

`func (o *IndexesIndexTimeseriesItem) GetValueCountOk() (*int64, bool)`

GetValueCountOk returns a tuple with the ValueCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValueCount

`func (o *IndexesIndexTimeseriesItem) SetValueCount(v int64)`

SetValueCount sets ValueCount field to given value.

### HasValueCount

`func (o *IndexesIndexTimeseriesItem) HasValueCount() bool`

HasValueCount returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


