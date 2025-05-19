# V1ExchangeRate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Time** | Pointer to **time.Time** | Gets or sets the time of the exchange rate. | [optional] 
**AssetIdBase** | Pointer to **NullableString** | Gets or sets the base asset ID of the exchange rate. | [optional] 
**AssetIdQuote** | Pointer to **NullableString** | Gets or sets the quote asset ID of the exchange rate. | [optional] 
**Rate** | Pointer to **float64** | Gets or sets the exchange rate value. | [optional] 

## Methods

### NewV1ExchangeRate

`func NewV1ExchangeRate() *V1ExchangeRate`

NewV1ExchangeRate instantiates a new V1ExchangeRate object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewV1ExchangeRateWithDefaults

`func NewV1ExchangeRateWithDefaults() *V1ExchangeRate`

NewV1ExchangeRateWithDefaults instantiates a new V1ExchangeRate object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTime

`func (o *V1ExchangeRate) GetTime() time.Time`

GetTime returns the Time field if non-nil, zero value otherwise.

### GetTimeOk

`func (o *V1ExchangeRate) GetTimeOk() (*time.Time, bool)`

GetTimeOk returns a tuple with the Time field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTime

`func (o *V1ExchangeRate) SetTime(v time.Time)`

SetTime sets Time field to given value.

### HasTime

`func (o *V1ExchangeRate) HasTime() bool`

HasTime returns a boolean if a field has been set.

### GetAssetIdBase

`func (o *V1ExchangeRate) GetAssetIdBase() string`

GetAssetIdBase returns the AssetIdBase field if non-nil, zero value otherwise.

### GetAssetIdBaseOk

`func (o *V1ExchangeRate) GetAssetIdBaseOk() (*string, bool)`

GetAssetIdBaseOk returns a tuple with the AssetIdBase field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetIdBase

`func (o *V1ExchangeRate) SetAssetIdBase(v string)`

SetAssetIdBase sets AssetIdBase field to given value.

### HasAssetIdBase

`func (o *V1ExchangeRate) HasAssetIdBase() bool`

HasAssetIdBase returns a boolean if a field has been set.

### SetAssetIdBaseNil

`func (o *V1ExchangeRate) SetAssetIdBaseNil(b bool)`

 SetAssetIdBaseNil sets the value for AssetIdBase to be an explicit nil

### UnsetAssetIdBase
`func (o *V1ExchangeRate) UnsetAssetIdBase()`

UnsetAssetIdBase ensures that no value is present for AssetIdBase, not even an explicit nil
### GetAssetIdQuote

`func (o *V1ExchangeRate) GetAssetIdQuote() string`

GetAssetIdQuote returns the AssetIdQuote field if non-nil, zero value otherwise.

### GetAssetIdQuoteOk

`func (o *V1ExchangeRate) GetAssetIdQuoteOk() (*string, bool)`

GetAssetIdQuoteOk returns a tuple with the AssetIdQuote field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetIdQuote

`func (o *V1ExchangeRate) SetAssetIdQuote(v string)`

SetAssetIdQuote sets AssetIdQuote field to given value.

### HasAssetIdQuote

`func (o *V1ExchangeRate) HasAssetIdQuote() bool`

HasAssetIdQuote returns a boolean if a field has been set.

### SetAssetIdQuoteNil

`func (o *V1ExchangeRate) SetAssetIdQuoteNil(b bool)`

 SetAssetIdQuoteNil sets the value for AssetIdQuote to be an explicit nil

### UnsetAssetIdQuote
`func (o *V1ExchangeRate) UnsetAssetIdQuote()`

UnsetAssetIdQuote ensures that no value is present for AssetIdQuote, not even an explicit nil
### GetRate

`func (o *V1ExchangeRate) GetRate() float64`

GetRate returns the Rate field if non-nil, zero value otherwise.

### GetRateOk

`func (o *V1ExchangeRate) GetRateOk() (*float64, bool)`

GetRateOk returns a tuple with the Rate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRate

`func (o *V1ExchangeRate) SetRate(v float64)`

SetRate sets Rate field to given value.

### HasRate

`func (o *V1ExchangeRate) HasRate() bool`

HasRate returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


