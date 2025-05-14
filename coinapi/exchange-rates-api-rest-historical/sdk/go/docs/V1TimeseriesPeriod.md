# V1TimeseriesPeriod

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PeriodId** | Pointer to **NullableString** | The period ID. | [optional] 
**LengthSeconds** | Pointer to **int32** | The length of the period in seconds. | [optional] 
**LengthMonths** | Pointer to **int32** | The length of the period in months. | [optional] 
**UnitCount** | Pointer to **NullableInt32** | The unit count. | [optional] 
**UnitName** | Pointer to **NullableString** | The unit name. | [optional] 
**DisplayName** | Pointer to **NullableString** | The display name of the timeseries period. | [optional] 

## Methods

### NewV1TimeseriesPeriod

`func NewV1TimeseriesPeriod() *V1TimeseriesPeriod`

NewV1TimeseriesPeriod instantiates a new V1TimeseriesPeriod object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewV1TimeseriesPeriodWithDefaults

`func NewV1TimeseriesPeriodWithDefaults() *V1TimeseriesPeriod`

NewV1TimeseriesPeriodWithDefaults instantiates a new V1TimeseriesPeriod object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPeriodId

`func (o *V1TimeseriesPeriod) GetPeriodId() string`

GetPeriodId returns the PeriodId field if non-nil, zero value otherwise.

### GetPeriodIdOk

`func (o *V1TimeseriesPeriod) GetPeriodIdOk() (*string, bool)`

GetPeriodIdOk returns a tuple with the PeriodId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPeriodId

`func (o *V1TimeseriesPeriod) SetPeriodId(v string)`

SetPeriodId sets PeriodId field to given value.

### HasPeriodId

`func (o *V1TimeseriesPeriod) HasPeriodId() bool`

HasPeriodId returns a boolean if a field has been set.

### SetPeriodIdNil

`func (o *V1TimeseriesPeriod) SetPeriodIdNil(b bool)`

 SetPeriodIdNil sets the value for PeriodId to be an explicit nil

### UnsetPeriodId
`func (o *V1TimeseriesPeriod) UnsetPeriodId()`

UnsetPeriodId ensures that no value is present for PeriodId, not even an explicit nil
### GetLengthSeconds

`func (o *V1TimeseriesPeriod) GetLengthSeconds() int32`

GetLengthSeconds returns the LengthSeconds field if non-nil, zero value otherwise.

### GetLengthSecondsOk

`func (o *V1TimeseriesPeriod) GetLengthSecondsOk() (*int32, bool)`

GetLengthSecondsOk returns a tuple with the LengthSeconds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLengthSeconds

`func (o *V1TimeseriesPeriod) SetLengthSeconds(v int32)`

SetLengthSeconds sets LengthSeconds field to given value.

### HasLengthSeconds

`func (o *V1TimeseriesPeriod) HasLengthSeconds() bool`

HasLengthSeconds returns a boolean if a field has been set.

### GetLengthMonths

`func (o *V1TimeseriesPeriod) GetLengthMonths() int32`

GetLengthMonths returns the LengthMonths field if non-nil, zero value otherwise.

### GetLengthMonthsOk

`func (o *V1TimeseriesPeriod) GetLengthMonthsOk() (*int32, bool)`

GetLengthMonthsOk returns a tuple with the LengthMonths field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLengthMonths

`func (o *V1TimeseriesPeriod) SetLengthMonths(v int32)`

SetLengthMonths sets LengthMonths field to given value.

### HasLengthMonths

`func (o *V1TimeseriesPeriod) HasLengthMonths() bool`

HasLengthMonths returns a boolean if a field has been set.

### GetUnitCount

`func (o *V1TimeseriesPeriod) GetUnitCount() int32`

GetUnitCount returns the UnitCount field if non-nil, zero value otherwise.

### GetUnitCountOk

`func (o *V1TimeseriesPeriod) GetUnitCountOk() (*int32, bool)`

GetUnitCountOk returns a tuple with the UnitCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnitCount

`func (o *V1TimeseriesPeriod) SetUnitCount(v int32)`

SetUnitCount sets UnitCount field to given value.

### HasUnitCount

`func (o *V1TimeseriesPeriod) HasUnitCount() bool`

HasUnitCount returns a boolean if a field has been set.

### SetUnitCountNil

`func (o *V1TimeseriesPeriod) SetUnitCountNil(b bool)`

 SetUnitCountNil sets the value for UnitCount to be an explicit nil

### UnsetUnitCount
`func (o *V1TimeseriesPeriod) UnsetUnitCount()`

UnsetUnitCount ensures that no value is present for UnitCount, not even an explicit nil
### GetUnitName

`func (o *V1TimeseriesPeriod) GetUnitName() string`

GetUnitName returns the UnitName field if non-nil, zero value otherwise.

### GetUnitNameOk

`func (o *V1TimeseriesPeriod) GetUnitNameOk() (*string, bool)`

GetUnitNameOk returns a tuple with the UnitName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnitName

`func (o *V1TimeseriesPeriod) SetUnitName(v string)`

SetUnitName sets UnitName field to given value.

### HasUnitName

`func (o *V1TimeseriesPeriod) HasUnitName() bool`

HasUnitName returns a boolean if a field has been set.

### SetUnitNameNil

`func (o *V1TimeseriesPeriod) SetUnitNameNil(b bool)`

 SetUnitNameNil sets the value for UnitName to be an explicit nil

### UnsetUnitName
`func (o *V1TimeseriesPeriod) UnsetUnitName()`

UnsetUnitName ensures that no value is present for UnitName, not even an explicit nil
### GetDisplayName

`func (o *V1TimeseriesPeriod) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *V1TimeseriesPeriod) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *V1TimeseriesPeriod) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *V1TimeseriesPeriod) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### SetDisplayNameNil

`func (o *V1TimeseriesPeriod) SetDisplayNameNil(b bool)`

 SetDisplayNameNil sets the value for DisplayName to be an explicit nil

### UnsetDisplayName
`func (o *V1TimeseriesPeriod) UnsetDisplayName()`

UnsetDisplayName ensures that no value is present for DisplayName, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


