# V1ExchangeRates

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetIdBase** | Pointer to **NullableString** | Gets or sets the base asset ID. | [optional] 
**Rates** | Pointer to [**[]V1ExchangeRatesRate**](V1ExchangeRatesRate.md) | Gets or sets the list of exchange rates. | [optional] 

## Methods

### NewV1ExchangeRates

`func NewV1ExchangeRates() *V1ExchangeRates`

NewV1ExchangeRates instantiates a new V1ExchangeRates object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewV1ExchangeRatesWithDefaults

`func NewV1ExchangeRatesWithDefaults() *V1ExchangeRates`

NewV1ExchangeRatesWithDefaults instantiates a new V1ExchangeRates object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAssetIdBase

`func (o *V1ExchangeRates) GetAssetIdBase() string`

GetAssetIdBase returns the AssetIdBase field if non-nil, zero value otherwise.

### GetAssetIdBaseOk

`func (o *V1ExchangeRates) GetAssetIdBaseOk() (*string, bool)`

GetAssetIdBaseOk returns a tuple with the AssetIdBase field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetIdBase

`func (o *V1ExchangeRates) SetAssetIdBase(v string)`

SetAssetIdBase sets AssetIdBase field to given value.

### HasAssetIdBase

`func (o *V1ExchangeRates) HasAssetIdBase() bool`

HasAssetIdBase returns a boolean if a field has been set.

### SetAssetIdBaseNil

`func (o *V1ExchangeRates) SetAssetIdBaseNil(b bool)`

 SetAssetIdBaseNil sets the value for AssetIdBase to be an explicit nil

### UnsetAssetIdBase
`func (o *V1ExchangeRates) UnsetAssetIdBase()`

UnsetAssetIdBase ensures that no value is present for AssetIdBase, not even an explicit nil
### GetRates

`func (o *V1ExchangeRates) GetRates() []V1ExchangeRatesRate`

GetRates returns the Rates field if non-nil, zero value otherwise.

### GetRatesOk

`func (o *V1ExchangeRates) GetRatesOk() (*[]V1ExchangeRatesRate, bool)`

GetRatesOk returns a tuple with the Rates field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRates

`func (o *V1ExchangeRates) SetRates(v []V1ExchangeRatesRate)`

SetRates sets Rates field to given value.

### HasRates

`func (o *V1ExchangeRates) HasRates() bool`

HasRates returns a boolean if a field has been set.

### SetRatesNil

`func (o *V1ExchangeRates) SetRatesNil(b bool)`

 SetRatesNil sets the value for Rates to be an explicit nil

### UnsetRates
`func (o *V1ExchangeRates) UnsetRates()`

UnsetRates ensures that no value is present for Rates, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


