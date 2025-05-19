# V1ExchangeRatesRate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Time** | Pointer to **time.Time** | Gets or sets the time of the exchange rate. | [optional] 
**AssetIdQuote** | Pointer to **NullableString** | Gets or sets the quote asset ID of the exchange rate. | [optional] 
**Rate** | Pointer to **float64** | Gets or sets the exchange rate value. | [optional] 

## Methods

### NewV1ExchangeRatesRate

`func NewV1ExchangeRatesRate() *V1ExchangeRatesRate`

NewV1ExchangeRatesRate instantiates a new V1ExchangeRatesRate object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewV1ExchangeRatesRateWithDefaults

`func NewV1ExchangeRatesRateWithDefaults() *V1ExchangeRatesRate`

NewV1ExchangeRatesRateWithDefaults instantiates a new V1ExchangeRatesRate object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTime

`func (o *V1ExchangeRatesRate) GetTime() time.Time`

GetTime returns the Time field if non-nil, zero value otherwise.

### GetTimeOk

`func (o *V1ExchangeRatesRate) GetTimeOk() (*time.Time, bool)`

GetTimeOk returns a tuple with the Time field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTime

`func (o *V1ExchangeRatesRate) SetTime(v time.Time)`

SetTime sets Time field to given value.

### HasTime

`func (o *V1ExchangeRatesRate) HasTime() bool`

HasTime returns a boolean if a field has been set.

### GetAssetIdQuote

`func (o *V1ExchangeRatesRate) GetAssetIdQuote() string`

GetAssetIdQuote returns the AssetIdQuote field if non-nil, zero value otherwise.

### GetAssetIdQuoteOk

`func (o *V1ExchangeRatesRate) GetAssetIdQuoteOk() (*string, bool)`

GetAssetIdQuoteOk returns a tuple with the AssetIdQuote field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetIdQuote

`func (o *V1ExchangeRatesRate) SetAssetIdQuote(v string)`

SetAssetIdQuote sets AssetIdQuote field to given value.

### HasAssetIdQuote

`func (o *V1ExchangeRatesRate) HasAssetIdQuote() bool`

HasAssetIdQuote returns a boolean if a field has been set.

### SetAssetIdQuoteNil

`func (o *V1ExchangeRatesRate) SetAssetIdQuoteNil(b bool)`

 SetAssetIdQuoteNil sets the value for AssetIdQuote to be an explicit nil

### UnsetAssetIdQuote
`func (o *V1ExchangeRatesRate) UnsetAssetIdQuote()`

UnsetAssetIdQuote ensures that no value is present for AssetIdQuote, not even an explicit nil
### GetRate

`func (o *V1ExchangeRatesRate) GetRate() float64`

GetRate returns the Rate field if non-nil, zero value otherwise.

### GetRateOk

`func (o *V1ExchangeRatesRate) GetRateOk() (*float64, bool)`

GetRateOk returns a tuple with the Rate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRate

`func (o *V1ExchangeRatesRate) SetRate(v float64)`

SetRate sets Rate field to given value.

### HasRate

`func (o *V1ExchangeRatesRate) HasRate() bool`

HasRate returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


