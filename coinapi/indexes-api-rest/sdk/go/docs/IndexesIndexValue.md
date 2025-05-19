# IndexesIndexValue

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Timestamp** | Pointer to **time.Time** |  | [optional] 
**Value** | Pointer to **float64** |  | [optional] 
**Composition** | Pointer to [**[]IndexesIndexValueComponent**](IndexesIndexValueComponent.md) |  | [optional] 

## Methods

### NewIndexesIndexValue

`func NewIndexesIndexValue() *IndexesIndexValue`

NewIndexesIndexValue instantiates a new IndexesIndexValue object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewIndexesIndexValueWithDefaults

`func NewIndexesIndexValueWithDefaults() *IndexesIndexValue`

NewIndexesIndexValueWithDefaults instantiates a new IndexesIndexValue object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTimestamp

`func (o *IndexesIndexValue) GetTimestamp() time.Time`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *IndexesIndexValue) GetTimestampOk() (*time.Time, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *IndexesIndexValue) SetTimestamp(v time.Time)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *IndexesIndexValue) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### GetValue

`func (o *IndexesIndexValue) GetValue() float64`

GetValue returns the Value field if non-nil, zero value otherwise.

### GetValueOk

`func (o *IndexesIndexValue) GetValueOk() (*float64, bool)`

GetValueOk returns a tuple with the Value field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValue

`func (o *IndexesIndexValue) SetValue(v float64)`

SetValue sets Value field to given value.

### HasValue

`func (o *IndexesIndexValue) HasValue() bool`

HasValue returns a boolean if a field has been set.

### GetComposition

`func (o *IndexesIndexValue) GetComposition() []IndexesIndexValueComponent`

GetComposition returns the Composition field if non-nil, zero value otherwise.

### GetCompositionOk

`func (o *IndexesIndexValue) GetCompositionOk() (*[]IndexesIndexValueComponent, bool)`

GetCompositionOk returns a tuple with the Composition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetComposition

`func (o *IndexesIndexValue) SetComposition(v []IndexesIndexValueComponent)`

SetComposition sets Composition field to given value.

### HasComposition

`func (o *IndexesIndexValue) HasComposition() bool`

HasComposition returns a boolean if a field has been set.

### SetCompositionNil

`func (o *IndexesIndexValue) SetCompositionNil(b bool)`

 SetCompositionNil sets the value for Composition to be an explicit nil

### UnsetComposition
`func (o *IndexesIndexValue) UnsetComposition()`

UnsetComposition ensures that no value is present for Composition, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


