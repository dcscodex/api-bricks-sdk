# AdminSecurityEventModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | Pointer to **NullableString** | The stock symbol | [optional] 
**TimestampNanos** | Pointer to **int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | Pointer to **time.Time** | Time when the security event was recorded as DateTime | [optional] 
**SecurityEvent** | Pointer to **int32** | Security event as byte value | [optional] 
**SecurityEventCode** | Pointer to **NullableString** | Security event as character string (&#39;O&#39; or &#39;C&#39;) | [optional] 
**SecurityEventText** | Pointer to **NullableString** | Human-readable description of the security event | [optional] 
**IsOpeningProcessComplete** | Pointer to **bool** | Indicates if the security event is &#39;Opening Process Complete&#39; (&#39;O&#39;/0x4f). | [optional] 
**IsClosingProcessComplete** | Pointer to **bool** | Indicates if the security event is &#39;Closing Process Complete&#39; (&#39;C&#39;/0x43). | [optional] 

## Methods

### NewAdminSecurityEventModel

`func NewAdminSecurityEventModel() *AdminSecurityEventModel`

NewAdminSecurityEventModel instantiates a new AdminSecurityEventModel object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminSecurityEventModelWithDefaults

`func NewAdminSecurityEventModelWithDefaults() *AdminSecurityEventModel`

NewAdminSecurityEventModelWithDefaults instantiates a new AdminSecurityEventModel object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *AdminSecurityEventModel) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *AdminSecurityEventModel) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *AdminSecurityEventModel) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *AdminSecurityEventModel) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### SetSymbolNil

`func (o *AdminSecurityEventModel) SetSymbolNil(b bool)`

 SetSymbolNil sets the value for Symbol to be an explicit nil

### UnsetSymbol
`func (o *AdminSecurityEventModel) UnsetSymbol()`

UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
### GetTimestampNanos

`func (o *AdminSecurityEventModel) GetTimestampNanos() int64`

GetTimestampNanos returns the TimestampNanos field if non-nil, zero value otherwise.

### GetTimestampNanosOk

`func (o *AdminSecurityEventModel) GetTimestampNanosOk() (*int64, bool)`

GetTimestampNanosOk returns a tuple with the TimestampNanos field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestampNanos

`func (o *AdminSecurityEventModel) SetTimestampNanos(v int64)`

SetTimestampNanos sets TimestampNanos field to given value.

### HasTimestampNanos

`func (o *AdminSecurityEventModel) HasTimestampNanos() bool`

HasTimestampNanos returns a boolean if a field has been set.

### GetTimestamp

`func (o *AdminSecurityEventModel) GetTimestamp() time.Time`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *AdminSecurityEventModel) GetTimestampOk() (*time.Time, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *AdminSecurityEventModel) SetTimestamp(v time.Time)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *AdminSecurityEventModel) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### GetSecurityEvent

`func (o *AdminSecurityEventModel) GetSecurityEvent() int32`

GetSecurityEvent returns the SecurityEvent field if non-nil, zero value otherwise.

### GetSecurityEventOk

`func (o *AdminSecurityEventModel) GetSecurityEventOk() (*int32, bool)`

GetSecurityEventOk returns a tuple with the SecurityEvent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSecurityEvent

`func (o *AdminSecurityEventModel) SetSecurityEvent(v int32)`

SetSecurityEvent sets SecurityEvent field to given value.

### HasSecurityEvent

`func (o *AdminSecurityEventModel) HasSecurityEvent() bool`

HasSecurityEvent returns a boolean if a field has been set.

### GetSecurityEventCode

`func (o *AdminSecurityEventModel) GetSecurityEventCode() string`

GetSecurityEventCode returns the SecurityEventCode field if non-nil, zero value otherwise.

### GetSecurityEventCodeOk

`func (o *AdminSecurityEventModel) GetSecurityEventCodeOk() (*string, bool)`

GetSecurityEventCodeOk returns a tuple with the SecurityEventCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSecurityEventCode

`func (o *AdminSecurityEventModel) SetSecurityEventCode(v string)`

SetSecurityEventCode sets SecurityEventCode field to given value.

### HasSecurityEventCode

`func (o *AdminSecurityEventModel) HasSecurityEventCode() bool`

HasSecurityEventCode returns a boolean if a field has been set.

### SetSecurityEventCodeNil

`func (o *AdminSecurityEventModel) SetSecurityEventCodeNil(b bool)`

 SetSecurityEventCodeNil sets the value for SecurityEventCode to be an explicit nil

### UnsetSecurityEventCode
`func (o *AdminSecurityEventModel) UnsetSecurityEventCode()`

UnsetSecurityEventCode ensures that no value is present for SecurityEventCode, not even an explicit nil
### GetSecurityEventText

`func (o *AdminSecurityEventModel) GetSecurityEventText() string`

GetSecurityEventText returns the SecurityEventText field if non-nil, zero value otherwise.

### GetSecurityEventTextOk

`func (o *AdminSecurityEventModel) GetSecurityEventTextOk() (*string, bool)`

GetSecurityEventTextOk returns a tuple with the SecurityEventText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSecurityEventText

`func (o *AdminSecurityEventModel) SetSecurityEventText(v string)`

SetSecurityEventText sets SecurityEventText field to given value.

### HasSecurityEventText

`func (o *AdminSecurityEventModel) HasSecurityEventText() bool`

HasSecurityEventText returns a boolean if a field has been set.

### SetSecurityEventTextNil

`func (o *AdminSecurityEventModel) SetSecurityEventTextNil(b bool)`

 SetSecurityEventTextNil sets the value for SecurityEventText to be an explicit nil

### UnsetSecurityEventText
`func (o *AdminSecurityEventModel) UnsetSecurityEventText()`

UnsetSecurityEventText ensures that no value is present for SecurityEventText, not even an explicit nil
### GetIsOpeningProcessComplete

`func (o *AdminSecurityEventModel) GetIsOpeningProcessComplete() bool`

GetIsOpeningProcessComplete returns the IsOpeningProcessComplete field if non-nil, zero value otherwise.

### GetIsOpeningProcessCompleteOk

`func (o *AdminSecurityEventModel) GetIsOpeningProcessCompleteOk() (*bool, bool)`

GetIsOpeningProcessCompleteOk returns a tuple with the IsOpeningProcessComplete field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsOpeningProcessComplete

`func (o *AdminSecurityEventModel) SetIsOpeningProcessComplete(v bool)`

SetIsOpeningProcessComplete sets IsOpeningProcessComplete field to given value.

### HasIsOpeningProcessComplete

`func (o *AdminSecurityEventModel) HasIsOpeningProcessComplete() bool`

HasIsOpeningProcessComplete returns a boolean if a field has been set.

### GetIsClosingProcessComplete

`func (o *AdminSecurityEventModel) GetIsClosingProcessComplete() bool`

GetIsClosingProcessComplete returns the IsClosingProcessComplete field if non-nil, zero value otherwise.

### GetIsClosingProcessCompleteOk

`func (o *AdminSecurityEventModel) GetIsClosingProcessCompleteOk() (*bool, bool)`

GetIsClosingProcessCompleteOk returns a tuple with the IsClosingProcessComplete field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsClosingProcessComplete

`func (o *AdminSecurityEventModel) SetIsClosingProcessComplete(v bool)`

SetIsClosingProcessComplete sets IsClosingProcessComplete field to given value.

### HasIsClosingProcessComplete

`func (o *AdminSecurityEventModel) HasIsClosingProcessComplete() bool`

HasIsClosingProcessComplete returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


