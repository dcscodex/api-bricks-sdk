# V1MetricData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SymbolId** | Pointer to **NullableString** | Gets or sets the symbol id. | [optional] 
**Time** | Pointer to **time.Time** | Gets or sets the time at which the value is recorded. | [optional] 
**Value** | Pointer to **float64** | Gets or sets the value of the metric. | [optional] 

## Methods

### NewV1MetricData

`func NewV1MetricData() *V1MetricData`

NewV1MetricData instantiates a new V1MetricData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewV1MetricDataWithDefaults

`func NewV1MetricDataWithDefaults() *V1MetricData`

NewV1MetricDataWithDefaults instantiates a new V1MetricData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbolId

`func (o *V1MetricData) GetSymbolId() string`

GetSymbolId returns the SymbolId field if non-nil, zero value otherwise.

### GetSymbolIdOk

`func (o *V1MetricData) GetSymbolIdOk() (*string, bool)`

GetSymbolIdOk returns a tuple with the SymbolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolId

`func (o *V1MetricData) SetSymbolId(v string)`

SetSymbolId sets SymbolId field to given value.

### HasSymbolId

`func (o *V1MetricData) HasSymbolId() bool`

HasSymbolId returns a boolean if a field has been set.

### SetSymbolIdNil

`func (o *V1MetricData) SetSymbolIdNil(b bool)`

 SetSymbolIdNil sets the value for SymbolId to be an explicit nil

### UnsetSymbolId
`func (o *V1MetricData) UnsetSymbolId()`

UnsetSymbolId ensures that no value is present for SymbolId, not even an explicit nil
### GetTime

`func (o *V1MetricData) GetTime() time.Time`

GetTime returns the Time field if non-nil, zero value otherwise.

### GetTimeOk

`func (o *V1MetricData) GetTimeOk() (*time.Time, bool)`

GetTimeOk returns a tuple with the Time field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTime

`func (o *V1MetricData) SetTime(v time.Time)`

SetTime sets Time field to given value.

### HasTime

`func (o *V1MetricData) HasTime() bool`

HasTime returns a boolean if a field has been set.

### GetValue

`func (o *V1MetricData) GetValue() float64`

GetValue returns the Value field if non-nil, zero value otherwise.

### GetValueOk

`func (o *V1MetricData) GetValueOk() (*float64, bool)`

GetValueOk returns a tuple with the Value field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValue

`func (o *V1MetricData) SetValue(v float64)`

SetValue sets Value field to given value.

### HasValue

`func (o *V1MetricData) HasValue() bool`

HasValue returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


