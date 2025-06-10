# V1SymbolMapping

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SymbolId** | Pointer to **NullableString** | The symbol ID. | [optional] 
**SymbolIdExchange** | Pointer to **NullableString** | The exchange-specific symbol ID. | [optional] 
**CoinapiDatainfoId** | Pointer to **int32** | The CoinAPI DataInfo ID. | [optional] 
**AssetIdBaseExchange** | Pointer to **NullableString** | The exchange-specific base asset ID. | [optional] 
**AssetIdQuoteExchange** | Pointer to **NullableString** | The exchange-specific quote asset ID. | [optional] 
**AssetIdBase** | Pointer to **NullableString** | The base asset ID. | [optional] 
**AssetIdQuote** | Pointer to **NullableString** | The quote asset ID. | [optional] 
**PricePrecision** | Pointer to **NullableFloat64** | The price precision. | [optional] 
**SizePrecision** | Pointer to **NullableFloat64** | The size precision. | [optional] 

## Methods

### NewV1SymbolMapping

`func NewV1SymbolMapping() *V1SymbolMapping`

NewV1SymbolMapping instantiates a new V1SymbolMapping object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewV1SymbolMappingWithDefaults

`func NewV1SymbolMappingWithDefaults() *V1SymbolMapping`

NewV1SymbolMappingWithDefaults instantiates a new V1SymbolMapping object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbolId

`func (o *V1SymbolMapping) GetSymbolId() string`

GetSymbolId returns the SymbolId field if non-nil, zero value otherwise.

### GetSymbolIdOk

`func (o *V1SymbolMapping) GetSymbolIdOk() (*string, bool)`

GetSymbolIdOk returns a tuple with the SymbolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolId

`func (o *V1SymbolMapping) SetSymbolId(v string)`

SetSymbolId sets SymbolId field to given value.

### HasSymbolId

`func (o *V1SymbolMapping) HasSymbolId() bool`

HasSymbolId returns a boolean if a field has been set.

### SetSymbolIdNil

`func (o *V1SymbolMapping) SetSymbolIdNil(b bool)`

 SetSymbolIdNil sets the value for SymbolId to be an explicit nil

### UnsetSymbolId
`func (o *V1SymbolMapping) UnsetSymbolId()`

UnsetSymbolId ensures that no value is present for SymbolId, not even an explicit nil
### GetSymbolIdExchange

`func (o *V1SymbolMapping) GetSymbolIdExchange() string`

GetSymbolIdExchange returns the SymbolIdExchange field if non-nil, zero value otherwise.

### GetSymbolIdExchangeOk

`func (o *V1SymbolMapping) GetSymbolIdExchangeOk() (*string, bool)`

GetSymbolIdExchangeOk returns a tuple with the SymbolIdExchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolIdExchange

`func (o *V1SymbolMapping) SetSymbolIdExchange(v string)`

SetSymbolIdExchange sets SymbolIdExchange field to given value.

### HasSymbolIdExchange

`func (o *V1SymbolMapping) HasSymbolIdExchange() bool`

HasSymbolIdExchange returns a boolean if a field has been set.

### SetSymbolIdExchangeNil

`func (o *V1SymbolMapping) SetSymbolIdExchangeNil(b bool)`

 SetSymbolIdExchangeNil sets the value for SymbolIdExchange to be an explicit nil

### UnsetSymbolIdExchange
`func (o *V1SymbolMapping) UnsetSymbolIdExchange()`

UnsetSymbolIdExchange ensures that no value is present for SymbolIdExchange, not even an explicit nil
### GetCoinapiDatainfoId

`func (o *V1SymbolMapping) GetCoinapiDatainfoId() int32`

GetCoinapiDatainfoId returns the CoinapiDatainfoId field if non-nil, zero value otherwise.

### GetCoinapiDatainfoIdOk

`func (o *V1SymbolMapping) GetCoinapiDatainfoIdOk() (*int32, bool)`

GetCoinapiDatainfoIdOk returns a tuple with the CoinapiDatainfoId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCoinapiDatainfoId

`func (o *V1SymbolMapping) SetCoinapiDatainfoId(v int32)`

SetCoinapiDatainfoId sets CoinapiDatainfoId field to given value.

### HasCoinapiDatainfoId

`func (o *V1SymbolMapping) HasCoinapiDatainfoId() bool`

HasCoinapiDatainfoId returns a boolean if a field has been set.

### GetAssetIdBaseExchange

`func (o *V1SymbolMapping) GetAssetIdBaseExchange() string`

GetAssetIdBaseExchange returns the AssetIdBaseExchange field if non-nil, zero value otherwise.

### GetAssetIdBaseExchangeOk

`func (o *V1SymbolMapping) GetAssetIdBaseExchangeOk() (*string, bool)`

GetAssetIdBaseExchangeOk returns a tuple with the AssetIdBaseExchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetIdBaseExchange

`func (o *V1SymbolMapping) SetAssetIdBaseExchange(v string)`

SetAssetIdBaseExchange sets AssetIdBaseExchange field to given value.

### HasAssetIdBaseExchange

`func (o *V1SymbolMapping) HasAssetIdBaseExchange() bool`

HasAssetIdBaseExchange returns a boolean if a field has been set.

### SetAssetIdBaseExchangeNil

`func (o *V1SymbolMapping) SetAssetIdBaseExchangeNil(b bool)`

 SetAssetIdBaseExchangeNil sets the value for AssetIdBaseExchange to be an explicit nil

### UnsetAssetIdBaseExchange
`func (o *V1SymbolMapping) UnsetAssetIdBaseExchange()`

UnsetAssetIdBaseExchange ensures that no value is present for AssetIdBaseExchange, not even an explicit nil
### GetAssetIdQuoteExchange

`func (o *V1SymbolMapping) GetAssetIdQuoteExchange() string`

GetAssetIdQuoteExchange returns the AssetIdQuoteExchange field if non-nil, zero value otherwise.

### GetAssetIdQuoteExchangeOk

`func (o *V1SymbolMapping) GetAssetIdQuoteExchangeOk() (*string, bool)`

GetAssetIdQuoteExchangeOk returns a tuple with the AssetIdQuoteExchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetIdQuoteExchange

`func (o *V1SymbolMapping) SetAssetIdQuoteExchange(v string)`

SetAssetIdQuoteExchange sets AssetIdQuoteExchange field to given value.

### HasAssetIdQuoteExchange

`func (o *V1SymbolMapping) HasAssetIdQuoteExchange() bool`

HasAssetIdQuoteExchange returns a boolean if a field has been set.

### SetAssetIdQuoteExchangeNil

`func (o *V1SymbolMapping) SetAssetIdQuoteExchangeNil(b bool)`

 SetAssetIdQuoteExchangeNil sets the value for AssetIdQuoteExchange to be an explicit nil

### UnsetAssetIdQuoteExchange
`func (o *V1SymbolMapping) UnsetAssetIdQuoteExchange()`

UnsetAssetIdQuoteExchange ensures that no value is present for AssetIdQuoteExchange, not even an explicit nil
### GetAssetIdBase

`func (o *V1SymbolMapping) GetAssetIdBase() string`

GetAssetIdBase returns the AssetIdBase field if non-nil, zero value otherwise.

### GetAssetIdBaseOk

`func (o *V1SymbolMapping) GetAssetIdBaseOk() (*string, bool)`

GetAssetIdBaseOk returns a tuple with the AssetIdBase field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetIdBase

`func (o *V1SymbolMapping) SetAssetIdBase(v string)`

SetAssetIdBase sets AssetIdBase field to given value.

### HasAssetIdBase

`func (o *V1SymbolMapping) HasAssetIdBase() bool`

HasAssetIdBase returns a boolean if a field has been set.

### SetAssetIdBaseNil

`func (o *V1SymbolMapping) SetAssetIdBaseNil(b bool)`

 SetAssetIdBaseNil sets the value for AssetIdBase to be an explicit nil

### UnsetAssetIdBase
`func (o *V1SymbolMapping) UnsetAssetIdBase()`

UnsetAssetIdBase ensures that no value is present for AssetIdBase, not even an explicit nil
### GetAssetIdQuote

`func (o *V1SymbolMapping) GetAssetIdQuote() string`

GetAssetIdQuote returns the AssetIdQuote field if non-nil, zero value otherwise.

### GetAssetIdQuoteOk

`func (o *V1SymbolMapping) GetAssetIdQuoteOk() (*string, bool)`

GetAssetIdQuoteOk returns a tuple with the AssetIdQuote field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetIdQuote

`func (o *V1SymbolMapping) SetAssetIdQuote(v string)`

SetAssetIdQuote sets AssetIdQuote field to given value.

### HasAssetIdQuote

`func (o *V1SymbolMapping) HasAssetIdQuote() bool`

HasAssetIdQuote returns a boolean if a field has been set.

### SetAssetIdQuoteNil

`func (o *V1SymbolMapping) SetAssetIdQuoteNil(b bool)`

 SetAssetIdQuoteNil sets the value for AssetIdQuote to be an explicit nil

### UnsetAssetIdQuote
`func (o *V1SymbolMapping) UnsetAssetIdQuote()`

UnsetAssetIdQuote ensures that no value is present for AssetIdQuote, not even an explicit nil
### GetPricePrecision

`func (o *V1SymbolMapping) GetPricePrecision() float64`

GetPricePrecision returns the PricePrecision field if non-nil, zero value otherwise.

### GetPricePrecisionOk

`func (o *V1SymbolMapping) GetPricePrecisionOk() (*float64, bool)`

GetPricePrecisionOk returns a tuple with the PricePrecision field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPricePrecision

`func (o *V1SymbolMapping) SetPricePrecision(v float64)`

SetPricePrecision sets PricePrecision field to given value.

### HasPricePrecision

`func (o *V1SymbolMapping) HasPricePrecision() bool`

HasPricePrecision returns a boolean if a field has been set.

### SetPricePrecisionNil

`func (o *V1SymbolMapping) SetPricePrecisionNil(b bool)`

 SetPricePrecisionNil sets the value for PricePrecision to be an explicit nil

### UnsetPricePrecision
`func (o *V1SymbolMapping) UnsetPricePrecision()`

UnsetPricePrecision ensures that no value is present for PricePrecision, not even an explicit nil
### GetSizePrecision

`func (o *V1SymbolMapping) GetSizePrecision() float64`

GetSizePrecision returns the SizePrecision field if non-nil, zero value otherwise.

### GetSizePrecisionOk

`func (o *V1SymbolMapping) GetSizePrecisionOk() (*float64, bool)`

GetSizePrecisionOk returns a tuple with the SizePrecision field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSizePrecision

`func (o *V1SymbolMapping) SetSizePrecision(v float64)`

SetSizePrecision sets SizePrecision field to given value.

### HasSizePrecision

`func (o *V1SymbolMapping) HasSizePrecision() bool`

HasSizePrecision returns a boolean if a field has been set.

### SetSizePrecisionNil

`func (o *V1SymbolMapping) SetSizePrecisionNil(b bool)`

 SetSizePrecisionNil sets the value for SizePrecision to be an explicit nil

### UnsetSizePrecision
`func (o *V1SymbolMapping) UnsetSizePrecision()`

UnsetSizePrecision ensures that no value is present for SizePrecision, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


