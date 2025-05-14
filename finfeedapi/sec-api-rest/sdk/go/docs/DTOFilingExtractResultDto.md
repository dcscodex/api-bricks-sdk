# DTOFilingExtractResultDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessionNumber** | Pointer to **NullableString** |  | [optional] 
**FormType** | Pointer to **NullableString** |  | [optional] 
**Items** | Pointer to [**[]DTOFilingItemDto**](DTOFilingItemDto.md) |  | [optional] 

## Methods

### NewDTOFilingExtractResultDto

`func NewDTOFilingExtractResultDto() *DTOFilingExtractResultDto`

NewDTOFilingExtractResultDto instantiates a new DTOFilingExtractResultDto object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDTOFilingExtractResultDtoWithDefaults

`func NewDTOFilingExtractResultDtoWithDefaults() *DTOFilingExtractResultDto`

NewDTOFilingExtractResultDtoWithDefaults instantiates a new DTOFilingExtractResultDto object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAccessionNumber

`func (o *DTOFilingExtractResultDto) GetAccessionNumber() string`

GetAccessionNumber returns the AccessionNumber field if non-nil, zero value otherwise.

### GetAccessionNumberOk

`func (o *DTOFilingExtractResultDto) GetAccessionNumberOk() (*string, bool)`

GetAccessionNumberOk returns a tuple with the AccessionNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccessionNumber

`func (o *DTOFilingExtractResultDto) SetAccessionNumber(v string)`

SetAccessionNumber sets AccessionNumber field to given value.

### HasAccessionNumber

`func (o *DTOFilingExtractResultDto) HasAccessionNumber() bool`

HasAccessionNumber returns a boolean if a field has been set.

### SetAccessionNumberNil

`func (o *DTOFilingExtractResultDto) SetAccessionNumberNil(b bool)`

 SetAccessionNumberNil sets the value for AccessionNumber to be an explicit nil

### UnsetAccessionNumber
`func (o *DTOFilingExtractResultDto) UnsetAccessionNumber()`

UnsetAccessionNumber ensures that no value is present for AccessionNumber, not even an explicit nil
### GetFormType

`func (o *DTOFilingExtractResultDto) GetFormType() string`

GetFormType returns the FormType field if non-nil, zero value otherwise.

### GetFormTypeOk

`func (o *DTOFilingExtractResultDto) GetFormTypeOk() (*string, bool)`

GetFormTypeOk returns a tuple with the FormType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFormType

`func (o *DTOFilingExtractResultDto) SetFormType(v string)`

SetFormType sets FormType field to given value.

### HasFormType

`func (o *DTOFilingExtractResultDto) HasFormType() bool`

HasFormType returns a boolean if a field has been set.

### SetFormTypeNil

`func (o *DTOFilingExtractResultDto) SetFormTypeNil(b bool)`

 SetFormTypeNil sets the value for FormType to be an explicit nil

### UnsetFormType
`func (o *DTOFilingExtractResultDto) UnsetFormType()`

UnsetFormType ensures that no value is present for FormType, not even an explicit nil
### GetItems

`func (o *DTOFilingExtractResultDto) GetItems() []DTOFilingItemDto`

GetItems returns the Items field if non-nil, zero value otherwise.

### GetItemsOk

`func (o *DTOFilingExtractResultDto) GetItemsOk() (*[]DTOFilingItemDto, bool)`

GetItemsOk returns a tuple with the Items field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetItems

`func (o *DTOFilingExtractResultDto) SetItems(v []DTOFilingItemDto)`

SetItems sets Items field to given value.

### HasItems

`func (o *DTOFilingExtractResultDto) HasItems() bool`

HasItems returns a boolean if a field has been set.

### SetItemsNil

`func (o *DTOFilingExtractResultDto) SetItemsNil(b bool)`

 SetItemsNil sets the value for Items to be an explicit nil

### UnsetItems
`func (o *DTOFilingExtractResultDto) UnsetItems()`

UnsetItems ensures that no value is present for Items, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


