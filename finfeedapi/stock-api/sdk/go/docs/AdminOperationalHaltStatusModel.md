# AdminOperationalHaltStatusModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | Pointer to **NullableString** | The stock symbol | [optional] 
**TimestampNanos** | Pointer to **int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | Pointer to **time.Time** | Time when the operational halt status was recorded as DateTime | [optional] 
**OperationalHaltStatus** | Pointer to **int32** | Operational halt status as byte value | [optional] 
**OperationalHaltStatusCode** | Pointer to **NullableString** | Operational halt status as character string | [optional] 
**OperationalHaltStatusText** | Pointer to **NullableString** | Human-readable description of the operational halt status | [optional] 
**IsOperationallyHalted** | Pointer to **bool** | Indicates if the status is &#39;IEX specific operational trading halt&#39; (&#39;O&#39;/0x4f). | [optional] 
**IsNotOperationallyHalted** | Pointer to **bool** | Indicates if the status is &#39;Not operationally halted on IEX&#39; (&#39;N&#39;/0x4e). | [optional] 

## Methods

### NewAdminOperationalHaltStatusModel

`func NewAdminOperationalHaltStatusModel() *AdminOperationalHaltStatusModel`

NewAdminOperationalHaltStatusModel instantiates a new AdminOperationalHaltStatusModel object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminOperationalHaltStatusModelWithDefaults

`func NewAdminOperationalHaltStatusModelWithDefaults() *AdminOperationalHaltStatusModel`

NewAdminOperationalHaltStatusModelWithDefaults instantiates a new AdminOperationalHaltStatusModel object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *AdminOperationalHaltStatusModel) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *AdminOperationalHaltStatusModel) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *AdminOperationalHaltStatusModel) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *AdminOperationalHaltStatusModel) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### SetSymbolNil

`func (o *AdminOperationalHaltStatusModel) SetSymbolNil(b bool)`

 SetSymbolNil sets the value for Symbol to be an explicit nil

### UnsetSymbol
`func (o *AdminOperationalHaltStatusModel) UnsetSymbol()`

UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
### GetTimestampNanos

`func (o *AdminOperationalHaltStatusModel) GetTimestampNanos() int64`

GetTimestampNanos returns the TimestampNanos field if non-nil, zero value otherwise.

### GetTimestampNanosOk

`func (o *AdminOperationalHaltStatusModel) GetTimestampNanosOk() (*int64, bool)`

GetTimestampNanosOk returns a tuple with the TimestampNanos field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestampNanos

`func (o *AdminOperationalHaltStatusModel) SetTimestampNanos(v int64)`

SetTimestampNanos sets TimestampNanos field to given value.

### HasTimestampNanos

`func (o *AdminOperationalHaltStatusModel) HasTimestampNanos() bool`

HasTimestampNanos returns a boolean if a field has been set.

### GetTimestamp

`func (o *AdminOperationalHaltStatusModel) GetTimestamp() time.Time`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *AdminOperationalHaltStatusModel) GetTimestampOk() (*time.Time, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *AdminOperationalHaltStatusModel) SetTimestamp(v time.Time)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *AdminOperationalHaltStatusModel) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### GetOperationalHaltStatus

`func (o *AdminOperationalHaltStatusModel) GetOperationalHaltStatus() int32`

GetOperationalHaltStatus returns the OperationalHaltStatus field if non-nil, zero value otherwise.

### GetOperationalHaltStatusOk

`func (o *AdminOperationalHaltStatusModel) GetOperationalHaltStatusOk() (*int32, bool)`

GetOperationalHaltStatusOk returns a tuple with the OperationalHaltStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOperationalHaltStatus

`func (o *AdminOperationalHaltStatusModel) SetOperationalHaltStatus(v int32)`

SetOperationalHaltStatus sets OperationalHaltStatus field to given value.

### HasOperationalHaltStatus

`func (o *AdminOperationalHaltStatusModel) HasOperationalHaltStatus() bool`

HasOperationalHaltStatus returns a boolean if a field has been set.

### GetOperationalHaltStatusCode

`func (o *AdminOperationalHaltStatusModel) GetOperationalHaltStatusCode() string`

GetOperationalHaltStatusCode returns the OperationalHaltStatusCode field if non-nil, zero value otherwise.

### GetOperationalHaltStatusCodeOk

`func (o *AdminOperationalHaltStatusModel) GetOperationalHaltStatusCodeOk() (*string, bool)`

GetOperationalHaltStatusCodeOk returns a tuple with the OperationalHaltStatusCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOperationalHaltStatusCode

`func (o *AdminOperationalHaltStatusModel) SetOperationalHaltStatusCode(v string)`

SetOperationalHaltStatusCode sets OperationalHaltStatusCode field to given value.

### HasOperationalHaltStatusCode

`func (o *AdminOperationalHaltStatusModel) HasOperationalHaltStatusCode() bool`

HasOperationalHaltStatusCode returns a boolean if a field has been set.

### SetOperationalHaltStatusCodeNil

`func (o *AdminOperationalHaltStatusModel) SetOperationalHaltStatusCodeNil(b bool)`

 SetOperationalHaltStatusCodeNil sets the value for OperationalHaltStatusCode to be an explicit nil

### UnsetOperationalHaltStatusCode
`func (o *AdminOperationalHaltStatusModel) UnsetOperationalHaltStatusCode()`

UnsetOperationalHaltStatusCode ensures that no value is present for OperationalHaltStatusCode, not even an explicit nil
### GetOperationalHaltStatusText

`func (o *AdminOperationalHaltStatusModel) GetOperationalHaltStatusText() string`

GetOperationalHaltStatusText returns the OperationalHaltStatusText field if non-nil, zero value otherwise.

### GetOperationalHaltStatusTextOk

`func (o *AdminOperationalHaltStatusModel) GetOperationalHaltStatusTextOk() (*string, bool)`

GetOperationalHaltStatusTextOk returns a tuple with the OperationalHaltStatusText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOperationalHaltStatusText

`func (o *AdminOperationalHaltStatusModel) SetOperationalHaltStatusText(v string)`

SetOperationalHaltStatusText sets OperationalHaltStatusText field to given value.

### HasOperationalHaltStatusText

`func (o *AdminOperationalHaltStatusModel) HasOperationalHaltStatusText() bool`

HasOperationalHaltStatusText returns a boolean if a field has been set.

### SetOperationalHaltStatusTextNil

`func (o *AdminOperationalHaltStatusModel) SetOperationalHaltStatusTextNil(b bool)`

 SetOperationalHaltStatusTextNil sets the value for OperationalHaltStatusText to be an explicit nil

### UnsetOperationalHaltStatusText
`func (o *AdminOperationalHaltStatusModel) UnsetOperationalHaltStatusText()`

UnsetOperationalHaltStatusText ensures that no value is present for OperationalHaltStatusText, not even an explicit nil
### GetIsOperationallyHalted

`func (o *AdminOperationalHaltStatusModel) GetIsOperationallyHalted() bool`

GetIsOperationallyHalted returns the IsOperationallyHalted field if non-nil, zero value otherwise.

### GetIsOperationallyHaltedOk

`func (o *AdminOperationalHaltStatusModel) GetIsOperationallyHaltedOk() (*bool, bool)`

GetIsOperationallyHaltedOk returns a tuple with the IsOperationallyHalted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsOperationallyHalted

`func (o *AdminOperationalHaltStatusModel) SetIsOperationallyHalted(v bool)`

SetIsOperationallyHalted sets IsOperationallyHalted field to given value.

### HasIsOperationallyHalted

`func (o *AdminOperationalHaltStatusModel) HasIsOperationallyHalted() bool`

HasIsOperationallyHalted returns a boolean if a field has been set.

### GetIsNotOperationallyHalted

`func (o *AdminOperationalHaltStatusModel) GetIsNotOperationallyHalted() bool`

GetIsNotOperationallyHalted returns the IsNotOperationallyHalted field if non-nil, zero value otherwise.

### GetIsNotOperationallyHaltedOk

`func (o *AdminOperationalHaltStatusModel) GetIsNotOperationallyHaltedOk() (*bool, bool)`

GetIsNotOperationallyHaltedOk returns a tuple with the IsNotOperationallyHalted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsNotOperationallyHalted

`func (o *AdminOperationalHaltStatusModel) SetIsNotOperationallyHalted(v bool)`

SetIsNotOperationallyHalted sets IsNotOperationallyHalted field to given value.

### HasIsNotOperationallyHalted

`func (o *AdminOperationalHaltStatusModel) HasIsNotOperationallyHalted() bool`

HasIsNotOperationallyHalted returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


