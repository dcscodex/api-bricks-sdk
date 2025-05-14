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

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


