# OptionsOptionExchangeGroup

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetIdBase** | Pointer to **NullableString** | The base asset identifier. | [optional] 
**AssetIdQuote** | Pointer to **NullableString** | The quote asset identifier. | [optional] 
**UnderlyingPrice** | Pointer to **NullableFloat64** | The underlying price of the option. | [optional] 
**TimeExpiration** | Pointer to **time.Time** | The expiration time of the option. | [optional] 
**Strikes** | Pointer to [**[]OptionsStrike**](OptionsStrike.md) | The list of strikes available. | [optional] 

## Methods

### NewOptionsOptionExchangeGroup

`func NewOptionsOptionExchangeGroup() *OptionsOptionExchangeGroup`

NewOptionsOptionExchangeGroup instantiates a new OptionsOptionExchangeGroup object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOptionsOptionExchangeGroupWithDefaults

`func NewOptionsOptionExchangeGroupWithDefaults() *OptionsOptionExchangeGroup`

NewOptionsOptionExchangeGroupWithDefaults instantiates a new OptionsOptionExchangeGroup object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAssetIdBase

`func (o *OptionsOptionExchangeGroup) GetAssetIdBase() string`

GetAssetIdBase returns the AssetIdBase field if non-nil, zero value otherwise.

### GetAssetIdBaseOk

`func (o *OptionsOptionExchangeGroup) GetAssetIdBaseOk() (*string, bool)`

GetAssetIdBaseOk returns a tuple with the AssetIdBase field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetIdBase

`func (o *OptionsOptionExchangeGroup) SetAssetIdBase(v string)`

SetAssetIdBase sets AssetIdBase field to given value.

### HasAssetIdBase

`func (o *OptionsOptionExchangeGroup) HasAssetIdBase() bool`

HasAssetIdBase returns a boolean if a field has been set.

### SetAssetIdBaseNil

`func (o *OptionsOptionExchangeGroup) SetAssetIdBaseNil(b bool)`

 SetAssetIdBaseNil sets the value for AssetIdBase to be an explicit nil

### UnsetAssetIdBase
`func (o *OptionsOptionExchangeGroup) UnsetAssetIdBase()`

UnsetAssetIdBase ensures that no value is present for AssetIdBase, not even an explicit nil
### GetAssetIdQuote

`func (o *OptionsOptionExchangeGroup) GetAssetIdQuote() string`

GetAssetIdQuote returns the AssetIdQuote field if non-nil, zero value otherwise.

### GetAssetIdQuoteOk

`func (o *OptionsOptionExchangeGroup) GetAssetIdQuoteOk() (*string, bool)`

GetAssetIdQuoteOk returns a tuple with the AssetIdQuote field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetIdQuote

`func (o *OptionsOptionExchangeGroup) SetAssetIdQuote(v string)`

SetAssetIdQuote sets AssetIdQuote field to given value.

### HasAssetIdQuote

`func (o *OptionsOptionExchangeGroup) HasAssetIdQuote() bool`

HasAssetIdQuote returns a boolean if a field has been set.

### SetAssetIdQuoteNil

`func (o *OptionsOptionExchangeGroup) SetAssetIdQuoteNil(b bool)`

 SetAssetIdQuoteNil sets the value for AssetIdQuote to be an explicit nil

### UnsetAssetIdQuote
`func (o *OptionsOptionExchangeGroup) UnsetAssetIdQuote()`

UnsetAssetIdQuote ensures that no value is present for AssetIdQuote, not even an explicit nil
### GetUnderlyingPrice

`func (o *OptionsOptionExchangeGroup) GetUnderlyingPrice() float64`

GetUnderlyingPrice returns the UnderlyingPrice field if non-nil, zero value otherwise.

### GetUnderlyingPriceOk

`func (o *OptionsOptionExchangeGroup) GetUnderlyingPriceOk() (*float64, bool)`

GetUnderlyingPriceOk returns a tuple with the UnderlyingPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnderlyingPrice

`func (o *OptionsOptionExchangeGroup) SetUnderlyingPrice(v float64)`

SetUnderlyingPrice sets UnderlyingPrice field to given value.

### HasUnderlyingPrice

`func (o *OptionsOptionExchangeGroup) HasUnderlyingPrice() bool`

HasUnderlyingPrice returns a boolean if a field has been set.

### SetUnderlyingPriceNil

`func (o *OptionsOptionExchangeGroup) SetUnderlyingPriceNil(b bool)`

 SetUnderlyingPriceNil sets the value for UnderlyingPrice to be an explicit nil

### UnsetUnderlyingPrice
`func (o *OptionsOptionExchangeGroup) UnsetUnderlyingPrice()`

UnsetUnderlyingPrice ensures that no value is present for UnderlyingPrice, not even an explicit nil
### GetTimeExpiration

`func (o *OptionsOptionExchangeGroup) GetTimeExpiration() time.Time`

GetTimeExpiration returns the TimeExpiration field if non-nil, zero value otherwise.

### GetTimeExpirationOk

`func (o *OptionsOptionExchangeGroup) GetTimeExpirationOk() (*time.Time, bool)`

GetTimeExpirationOk returns a tuple with the TimeExpiration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeExpiration

`func (o *OptionsOptionExchangeGroup) SetTimeExpiration(v time.Time)`

SetTimeExpiration sets TimeExpiration field to given value.

### HasTimeExpiration

`func (o *OptionsOptionExchangeGroup) HasTimeExpiration() bool`

HasTimeExpiration returns a boolean if a field has been set.

### GetStrikes

`func (o *OptionsOptionExchangeGroup) GetStrikes() []OptionsStrike`

GetStrikes returns the Strikes field if non-nil, zero value otherwise.

### GetStrikesOk

`func (o *OptionsOptionExchangeGroup) GetStrikesOk() (*[]OptionsStrike, bool)`

GetStrikesOk returns a tuple with the Strikes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStrikes

`func (o *OptionsOptionExchangeGroup) SetStrikes(v []OptionsStrike)`

SetStrikes sets Strikes field to given value.

### HasStrikes

`func (o *OptionsOptionExchangeGroup) HasStrikes() bool`

HasStrikes returns a boolean if a field has been set.

### SetStrikesNil

`func (o *OptionsOptionExchangeGroup) SetStrikesNil(b bool)`

 SetStrikesNil sets the value for Strikes to be an explicit nil

### UnsetStrikes
`func (o *OptionsOptionExchangeGroup) UnsetStrikes()`

UnsetStrikes ensures that no value is present for Strikes, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


