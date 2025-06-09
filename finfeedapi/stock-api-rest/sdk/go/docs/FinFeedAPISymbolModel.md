# FinFeedAPISymbolModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SymbolId** | Pointer to **NullableString** |  | [optional] 
**ExchangeId** | Pointer to **NullableString** |  | [optional] 
**SecurityCategory** | Pointer to **NullableString** |  | [optional] [readonly] 
**Name** | Pointer to **NullableString** |  | [optional] 
**Date** | Pointer to **NullableString** |  | [optional] 
**AssetClass** | Pointer to **NullableString** |  | [optional] 
**CfiCode** | Pointer to **NullableString** |  | [optional] 
**CfiCategory** | Pointer to **NullableString** |  | [optional] [readonly] 
**CfiGroup** | Pointer to **NullableString** |  | [optional] [readonly] 
**CfiAttribute1** | Pointer to **NullableString** |  | [optional] [readonly] 
**CfiAttribute2** | Pointer to **NullableString** |  | [optional] [readonly] 
**CfiAttribute3** | Pointer to **NullableString** |  | [optional] [readonly] 
**CfiAttribute4** | Pointer to **NullableString** |  | [optional] [readonly] 
**CfiCategoryDesc** | Pointer to **NullableString** |  | [optional] [readonly] 
**CfiGroupDesc** | Pointer to **NullableString** |  | [optional] [readonly] 

## Methods

### NewFinFeedAPISymbolModel

`func NewFinFeedAPISymbolModel() *FinFeedAPISymbolModel`

NewFinFeedAPISymbolModel instantiates a new FinFeedAPISymbolModel object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewFinFeedAPISymbolModelWithDefaults

`func NewFinFeedAPISymbolModelWithDefaults() *FinFeedAPISymbolModel`

NewFinFeedAPISymbolModelWithDefaults instantiates a new FinFeedAPISymbolModel object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbolId

`func (o *FinFeedAPISymbolModel) GetSymbolId() string`

GetSymbolId returns the SymbolId field if non-nil, zero value otherwise.

### GetSymbolIdOk

`func (o *FinFeedAPISymbolModel) GetSymbolIdOk() (*string, bool)`

GetSymbolIdOk returns a tuple with the SymbolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolId

`func (o *FinFeedAPISymbolModel) SetSymbolId(v string)`

SetSymbolId sets SymbolId field to given value.

### HasSymbolId

`func (o *FinFeedAPISymbolModel) HasSymbolId() bool`

HasSymbolId returns a boolean if a field has been set.

### SetSymbolIdNil

`func (o *FinFeedAPISymbolModel) SetSymbolIdNil(b bool)`

 SetSymbolIdNil sets the value for SymbolId to be an explicit nil

### UnsetSymbolId
`func (o *FinFeedAPISymbolModel) UnsetSymbolId()`

UnsetSymbolId ensures that no value is present for SymbolId, not even an explicit nil
### GetExchangeId

`func (o *FinFeedAPISymbolModel) GetExchangeId() string`

GetExchangeId returns the ExchangeId field if non-nil, zero value otherwise.

### GetExchangeIdOk

`func (o *FinFeedAPISymbolModel) GetExchangeIdOk() (*string, bool)`

GetExchangeIdOk returns a tuple with the ExchangeId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeId

`func (o *FinFeedAPISymbolModel) SetExchangeId(v string)`

SetExchangeId sets ExchangeId field to given value.

### HasExchangeId

`func (o *FinFeedAPISymbolModel) HasExchangeId() bool`

HasExchangeId returns a boolean if a field has been set.

### SetExchangeIdNil

`func (o *FinFeedAPISymbolModel) SetExchangeIdNil(b bool)`

 SetExchangeIdNil sets the value for ExchangeId to be an explicit nil

### UnsetExchangeId
`func (o *FinFeedAPISymbolModel) UnsetExchangeId()`

UnsetExchangeId ensures that no value is present for ExchangeId, not even an explicit nil
### GetSecurityCategory

`func (o *FinFeedAPISymbolModel) GetSecurityCategory() string`

GetSecurityCategory returns the SecurityCategory field if non-nil, zero value otherwise.

### GetSecurityCategoryOk

`func (o *FinFeedAPISymbolModel) GetSecurityCategoryOk() (*string, bool)`

GetSecurityCategoryOk returns a tuple with the SecurityCategory field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSecurityCategory

`func (o *FinFeedAPISymbolModel) SetSecurityCategory(v string)`

SetSecurityCategory sets SecurityCategory field to given value.

### HasSecurityCategory

`func (o *FinFeedAPISymbolModel) HasSecurityCategory() bool`

HasSecurityCategory returns a boolean if a field has been set.

### SetSecurityCategoryNil

`func (o *FinFeedAPISymbolModel) SetSecurityCategoryNil(b bool)`

 SetSecurityCategoryNil sets the value for SecurityCategory to be an explicit nil

### UnsetSecurityCategory
`func (o *FinFeedAPISymbolModel) UnsetSecurityCategory()`

UnsetSecurityCategory ensures that no value is present for SecurityCategory, not even an explicit nil
### GetName

`func (o *FinFeedAPISymbolModel) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *FinFeedAPISymbolModel) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *FinFeedAPISymbolModel) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *FinFeedAPISymbolModel) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *FinFeedAPISymbolModel) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *FinFeedAPISymbolModel) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetDate

`func (o *FinFeedAPISymbolModel) GetDate() string`

GetDate returns the Date field if non-nil, zero value otherwise.

### GetDateOk

`func (o *FinFeedAPISymbolModel) GetDateOk() (*string, bool)`

GetDateOk returns a tuple with the Date field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDate

`func (o *FinFeedAPISymbolModel) SetDate(v string)`

SetDate sets Date field to given value.

### HasDate

`func (o *FinFeedAPISymbolModel) HasDate() bool`

HasDate returns a boolean if a field has been set.

### SetDateNil

`func (o *FinFeedAPISymbolModel) SetDateNil(b bool)`

 SetDateNil sets the value for Date to be an explicit nil

### UnsetDate
`func (o *FinFeedAPISymbolModel) UnsetDate()`

UnsetDate ensures that no value is present for Date, not even an explicit nil
### GetAssetClass

`func (o *FinFeedAPISymbolModel) GetAssetClass() string`

GetAssetClass returns the AssetClass field if non-nil, zero value otherwise.

### GetAssetClassOk

`func (o *FinFeedAPISymbolModel) GetAssetClassOk() (*string, bool)`

GetAssetClassOk returns a tuple with the AssetClass field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetClass

`func (o *FinFeedAPISymbolModel) SetAssetClass(v string)`

SetAssetClass sets AssetClass field to given value.

### HasAssetClass

`func (o *FinFeedAPISymbolModel) HasAssetClass() bool`

HasAssetClass returns a boolean if a field has been set.

### SetAssetClassNil

`func (o *FinFeedAPISymbolModel) SetAssetClassNil(b bool)`

 SetAssetClassNil sets the value for AssetClass to be an explicit nil

### UnsetAssetClass
`func (o *FinFeedAPISymbolModel) UnsetAssetClass()`

UnsetAssetClass ensures that no value is present for AssetClass, not even an explicit nil
### GetCfiCode

`func (o *FinFeedAPISymbolModel) GetCfiCode() string`

GetCfiCode returns the CfiCode field if non-nil, zero value otherwise.

### GetCfiCodeOk

`func (o *FinFeedAPISymbolModel) GetCfiCodeOk() (*string, bool)`

GetCfiCodeOk returns a tuple with the CfiCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCfiCode

`func (o *FinFeedAPISymbolModel) SetCfiCode(v string)`

SetCfiCode sets CfiCode field to given value.

### HasCfiCode

`func (o *FinFeedAPISymbolModel) HasCfiCode() bool`

HasCfiCode returns a boolean if a field has been set.

### SetCfiCodeNil

`func (o *FinFeedAPISymbolModel) SetCfiCodeNil(b bool)`

 SetCfiCodeNil sets the value for CfiCode to be an explicit nil

### UnsetCfiCode
`func (o *FinFeedAPISymbolModel) UnsetCfiCode()`

UnsetCfiCode ensures that no value is present for CfiCode, not even an explicit nil
### GetCfiCategory

`func (o *FinFeedAPISymbolModel) GetCfiCategory() string`

GetCfiCategory returns the CfiCategory field if non-nil, zero value otherwise.

### GetCfiCategoryOk

`func (o *FinFeedAPISymbolModel) GetCfiCategoryOk() (*string, bool)`

GetCfiCategoryOk returns a tuple with the CfiCategory field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCfiCategory

`func (o *FinFeedAPISymbolModel) SetCfiCategory(v string)`

SetCfiCategory sets CfiCategory field to given value.

### HasCfiCategory

`func (o *FinFeedAPISymbolModel) HasCfiCategory() bool`

HasCfiCategory returns a boolean if a field has been set.

### SetCfiCategoryNil

`func (o *FinFeedAPISymbolModel) SetCfiCategoryNil(b bool)`

 SetCfiCategoryNil sets the value for CfiCategory to be an explicit nil

### UnsetCfiCategory
`func (o *FinFeedAPISymbolModel) UnsetCfiCategory()`

UnsetCfiCategory ensures that no value is present for CfiCategory, not even an explicit nil
### GetCfiGroup

`func (o *FinFeedAPISymbolModel) GetCfiGroup() string`

GetCfiGroup returns the CfiGroup field if non-nil, zero value otherwise.

### GetCfiGroupOk

`func (o *FinFeedAPISymbolModel) GetCfiGroupOk() (*string, bool)`

GetCfiGroupOk returns a tuple with the CfiGroup field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCfiGroup

`func (o *FinFeedAPISymbolModel) SetCfiGroup(v string)`

SetCfiGroup sets CfiGroup field to given value.

### HasCfiGroup

`func (o *FinFeedAPISymbolModel) HasCfiGroup() bool`

HasCfiGroup returns a boolean if a field has been set.

### SetCfiGroupNil

`func (o *FinFeedAPISymbolModel) SetCfiGroupNil(b bool)`

 SetCfiGroupNil sets the value for CfiGroup to be an explicit nil

### UnsetCfiGroup
`func (o *FinFeedAPISymbolModel) UnsetCfiGroup()`

UnsetCfiGroup ensures that no value is present for CfiGroup, not even an explicit nil
### GetCfiAttribute1

`func (o *FinFeedAPISymbolModel) GetCfiAttribute1() string`

GetCfiAttribute1 returns the CfiAttribute1 field if non-nil, zero value otherwise.

### GetCfiAttribute1Ok

`func (o *FinFeedAPISymbolModel) GetCfiAttribute1Ok() (*string, bool)`

GetCfiAttribute1Ok returns a tuple with the CfiAttribute1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCfiAttribute1

`func (o *FinFeedAPISymbolModel) SetCfiAttribute1(v string)`

SetCfiAttribute1 sets CfiAttribute1 field to given value.

### HasCfiAttribute1

`func (o *FinFeedAPISymbolModel) HasCfiAttribute1() bool`

HasCfiAttribute1 returns a boolean if a field has been set.

### SetCfiAttribute1Nil

`func (o *FinFeedAPISymbolModel) SetCfiAttribute1Nil(b bool)`

 SetCfiAttribute1Nil sets the value for CfiAttribute1 to be an explicit nil

### UnsetCfiAttribute1
`func (o *FinFeedAPISymbolModel) UnsetCfiAttribute1()`

UnsetCfiAttribute1 ensures that no value is present for CfiAttribute1, not even an explicit nil
### GetCfiAttribute2

`func (o *FinFeedAPISymbolModel) GetCfiAttribute2() string`

GetCfiAttribute2 returns the CfiAttribute2 field if non-nil, zero value otherwise.

### GetCfiAttribute2Ok

`func (o *FinFeedAPISymbolModel) GetCfiAttribute2Ok() (*string, bool)`

GetCfiAttribute2Ok returns a tuple with the CfiAttribute2 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCfiAttribute2

`func (o *FinFeedAPISymbolModel) SetCfiAttribute2(v string)`

SetCfiAttribute2 sets CfiAttribute2 field to given value.

### HasCfiAttribute2

`func (o *FinFeedAPISymbolModel) HasCfiAttribute2() bool`

HasCfiAttribute2 returns a boolean if a field has been set.

### SetCfiAttribute2Nil

`func (o *FinFeedAPISymbolModel) SetCfiAttribute2Nil(b bool)`

 SetCfiAttribute2Nil sets the value for CfiAttribute2 to be an explicit nil

### UnsetCfiAttribute2
`func (o *FinFeedAPISymbolModel) UnsetCfiAttribute2()`

UnsetCfiAttribute2 ensures that no value is present for CfiAttribute2, not even an explicit nil
### GetCfiAttribute3

`func (o *FinFeedAPISymbolModel) GetCfiAttribute3() string`

GetCfiAttribute3 returns the CfiAttribute3 field if non-nil, zero value otherwise.

### GetCfiAttribute3Ok

`func (o *FinFeedAPISymbolModel) GetCfiAttribute3Ok() (*string, bool)`

GetCfiAttribute3Ok returns a tuple with the CfiAttribute3 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCfiAttribute3

`func (o *FinFeedAPISymbolModel) SetCfiAttribute3(v string)`

SetCfiAttribute3 sets CfiAttribute3 field to given value.

### HasCfiAttribute3

`func (o *FinFeedAPISymbolModel) HasCfiAttribute3() bool`

HasCfiAttribute3 returns a boolean if a field has been set.

### SetCfiAttribute3Nil

`func (o *FinFeedAPISymbolModel) SetCfiAttribute3Nil(b bool)`

 SetCfiAttribute3Nil sets the value for CfiAttribute3 to be an explicit nil

### UnsetCfiAttribute3
`func (o *FinFeedAPISymbolModel) UnsetCfiAttribute3()`

UnsetCfiAttribute3 ensures that no value is present for CfiAttribute3, not even an explicit nil
### GetCfiAttribute4

`func (o *FinFeedAPISymbolModel) GetCfiAttribute4() string`

GetCfiAttribute4 returns the CfiAttribute4 field if non-nil, zero value otherwise.

### GetCfiAttribute4Ok

`func (o *FinFeedAPISymbolModel) GetCfiAttribute4Ok() (*string, bool)`

GetCfiAttribute4Ok returns a tuple with the CfiAttribute4 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCfiAttribute4

`func (o *FinFeedAPISymbolModel) SetCfiAttribute4(v string)`

SetCfiAttribute4 sets CfiAttribute4 field to given value.

### HasCfiAttribute4

`func (o *FinFeedAPISymbolModel) HasCfiAttribute4() bool`

HasCfiAttribute4 returns a boolean if a field has been set.

### SetCfiAttribute4Nil

`func (o *FinFeedAPISymbolModel) SetCfiAttribute4Nil(b bool)`

 SetCfiAttribute4Nil sets the value for CfiAttribute4 to be an explicit nil

### UnsetCfiAttribute4
`func (o *FinFeedAPISymbolModel) UnsetCfiAttribute4()`

UnsetCfiAttribute4 ensures that no value is present for CfiAttribute4, not even an explicit nil
### GetCfiCategoryDesc

`func (o *FinFeedAPISymbolModel) GetCfiCategoryDesc() string`

GetCfiCategoryDesc returns the CfiCategoryDesc field if non-nil, zero value otherwise.

### GetCfiCategoryDescOk

`func (o *FinFeedAPISymbolModel) GetCfiCategoryDescOk() (*string, bool)`

GetCfiCategoryDescOk returns a tuple with the CfiCategoryDesc field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCfiCategoryDesc

`func (o *FinFeedAPISymbolModel) SetCfiCategoryDesc(v string)`

SetCfiCategoryDesc sets CfiCategoryDesc field to given value.

### HasCfiCategoryDesc

`func (o *FinFeedAPISymbolModel) HasCfiCategoryDesc() bool`

HasCfiCategoryDesc returns a boolean if a field has been set.

### SetCfiCategoryDescNil

`func (o *FinFeedAPISymbolModel) SetCfiCategoryDescNil(b bool)`

 SetCfiCategoryDescNil sets the value for CfiCategoryDesc to be an explicit nil

### UnsetCfiCategoryDesc
`func (o *FinFeedAPISymbolModel) UnsetCfiCategoryDesc()`

UnsetCfiCategoryDesc ensures that no value is present for CfiCategoryDesc, not even an explicit nil
### GetCfiGroupDesc

`func (o *FinFeedAPISymbolModel) GetCfiGroupDesc() string`

GetCfiGroupDesc returns the CfiGroupDesc field if non-nil, zero value otherwise.

### GetCfiGroupDescOk

`func (o *FinFeedAPISymbolModel) GetCfiGroupDescOk() (*string, bool)`

GetCfiGroupDescOk returns a tuple with the CfiGroupDesc field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCfiGroupDesc

`func (o *FinFeedAPISymbolModel) SetCfiGroupDesc(v string)`

SetCfiGroupDesc sets CfiGroupDesc field to given value.

### HasCfiGroupDesc

`func (o *FinFeedAPISymbolModel) HasCfiGroupDesc() bool`

HasCfiGroupDesc returns a boolean if a field has been set.

### SetCfiGroupDescNil

`func (o *FinFeedAPISymbolModel) SetCfiGroupDescNil(b bool)`

 SetCfiGroupDescNil sets the value for CfiGroupDesc to be an explicit nil

### UnsetCfiGroupDesc
`func (o *FinFeedAPISymbolModel) UnsetCfiGroupDesc()`

UnsetCfiGroupDesc ensures that no value is present for CfiGroupDesc, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


