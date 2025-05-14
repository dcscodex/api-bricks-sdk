# MvcValidationProblemDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **NullableString** |  | [optional] 
**Title** | Pointer to **NullableString** |  | [optional] 
**Status** | Pointer to **NullableInt32** |  | [optional] 
**Detail** | Pointer to **NullableString** |  | [optional] 
**Instance** | Pointer to **NullableString** |  | [optional] 
**Errors** | Pointer to **map[string][]string** |  | [optional] 

## Methods

### NewMvcValidationProblemDetails

`func NewMvcValidationProblemDetails() *MvcValidationProblemDetails`

NewMvcValidationProblemDetails instantiates a new MvcValidationProblemDetails object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMvcValidationProblemDetailsWithDefaults

`func NewMvcValidationProblemDetailsWithDefaults() *MvcValidationProblemDetails`

NewMvcValidationProblemDetailsWithDefaults instantiates a new MvcValidationProblemDetails object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *MvcValidationProblemDetails) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *MvcValidationProblemDetails) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *MvcValidationProblemDetails) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *MvcValidationProblemDetails) HasType() bool`

HasType returns a boolean if a field has been set.

### SetTypeNil

`func (o *MvcValidationProblemDetails) SetTypeNil(b bool)`

 SetTypeNil sets the value for Type to be an explicit nil

### UnsetType
`func (o *MvcValidationProblemDetails) UnsetType()`

UnsetType ensures that no value is present for Type, not even an explicit nil
### GetTitle

`func (o *MvcValidationProblemDetails) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *MvcValidationProblemDetails) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *MvcValidationProblemDetails) SetTitle(v string)`

SetTitle sets Title field to given value.

### HasTitle

`func (o *MvcValidationProblemDetails) HasTitle() bool`

HasTitle returns a boolean if a field has been set.

### SetTitleNil

`func (o *MvcValidationProblemDetails) SetTitleNil(b bool)`

 SetTitleNil sets the value for Title to be an explicit nil

### UnsetTitle
`func (o *MvcValidationProblemDetails) UnsetTitle()`

UnsetTitle ensures that no value is present for Title, not even an explicit nil
### GetStatus

`func (o *MvcValidationProblemDetails) GetStatus() int32`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *MvcValidationProblemDetails) GetStatusOk() (*int32, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *MvcValidationProblemDetails) SetStatus(v int32)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *MvcValidationProblemDetails) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### SetStatusNil

`func (o *MvcValidationProblemDetails) SetStatusNil(b bool)`

 SetStatusNil sets the value for Status to be an explicit nil

### UnsetStatus
`func (o *MvcValidationProblemDetails) UnsetStatus()`

UnsetStatus ensures that no value is present for Status, not even an explicit nil
### GetDetail

`func (o *MvcValidationProblemDetails) GetDetail() string`

GetDetail returns the Detail field if non-nil, zero value otherwise.

### GetDetailOk

`func (o *MvcValidationProblemDetails) GetDetailOk() (*string, bool)`

GetDetailOk returns a tuple with the Detail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDetail

`func (o *MvcValidationProblemDetails) SetDetail(v string)`

SetDetail sets Detail field to given value.

### HasDetail

`func (o *MvcValidationProblemDetails) HasDetail() bool`

HasDetail returns a boolean if a field has been set.

### SetDetailNil

`func (o *MvcValidationProblemDetails) SetDetailNil(b bool)`

 SetDetailNil sets the value for Detail to be an explicit nil

### UnsetDetail
`func (o *MvcValidationProblemDetails) UnsetDetail()`

UnsetDetail ensures that no value is present for Detail, not even an explicit nil
### GetInstance

`func (o *MvcValidationProblemDetails) GetInstance() string`

GetInstance returns the Instance field if non-nil, zero value otherwise.

### GetInstanceOk

`func (o *MvcValidationProblemDetails) GetInstanceOk() (*string, bool)`

GetInstanceOk returns a tuple with the Instance field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstance

`func (o *MvcValidationProblemDetails) SetInstance(v string)`

SetInstance sets Instance field to given value.

### HasInstance

`func (o *MvcValidationProblemDetails) HasInstance() bool`

HasInstance returns a boolean if a field has been set.

### SetInstanceNil

`func (o *MvcValidationProblemDetails) SetInstanceNil(b bool)`

 SetInstanceNil sets the value for Instance to be an explicit nil

### UnsetInstance
`func (o *MvcValidationProblemDetails) UnsetInstance()`

UnsetInstance ensures that no value is present for Instance, not even an explicit nil
### GetErrors

`func (o *MvcValidationProblemDetails) GetErrors() map[string][]string`

GetErrors returns the Errors field if non-nil, zero value otherwise.

### GetErrorsOk

`func (o *MvcValidationProblemDetails) GetErrorsOk() (*map[string][]string, bool)`

GetErrorsOk returns a tuple with the Errors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErrors

`func (o *MvcValidationProblemDetails) SetErrors(v map[string][]string)`

SetErrors sets Errors field to given value.

### HasErrors

`func (o *MvcValidationProblemDetails) HasErrors() bool`

HasErrors returns a boolean if a field has been set.

### SetErrorsNil

`func (o *MvcValidationProblemDetails) SetErrorsNil(b bool)`

 SetErrorsNil sets the value for Errors to be an explicit nil

### UnsetErrors
`func (o *MvcValidationProblemDetails) UnsetErrors()`

UnsetErrors ensures that no value is present for Errors, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


