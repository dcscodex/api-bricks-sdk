# V1Quote

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SymbolId** | Pointer to **NullableString** | The symbol identifier. | [optional] 
**TimeExchange** | Pointer to **time.Time** | The exchange time of the quote. | [optional] 
**TimeCoinapi** | Pointer to **time.Time** | The CoinAPI time when the quote was received. | [optional] 
**AskPrice** | Pointer to **NullableFloat64** | The best asking price. | [optional] 
**AskSize** | Pointer to **NullableFloat64** | The volume resting on the best ask. If the value is equal to zero, then the size is unknown. | [optional] 
**BidPrice** | Pointer to **NullableFloat64** | The best bidding price. | [optional] 
**BidSize** | Pointer to **NullableFloat64** | The volume resting on the best bid. If the value is equal to zero, then the size is unknown. | [optional] 

## Methods

### NewV1Quote

`func NewV1Quote() *V1Quote`

NewV1Quote instantiates a new V1Quote object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewV1QuoteWithDefaults

`func NewV1QuoteWithDefaults() *V1Quote`

NewV1QuoteWithDefaults instantiates a new V1Quote object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbolId

`func (o *V1Quote) GetSymbolId() string`

GetSymbolId returns the SymbolId field if non-nil, zero value otherwise.

### GetSymbolIdOk

`func (o *V1Quote) GetSymbolIdOk() (*string, bool)`

GetSymbolIdOk returns a tuple with the SymbolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolId

`func (o *V1Quote) SetSymbolId(v string)`

SetSymbolId sets SymbolId field to given value.

### HasSymbolId

`func (o *V1Quote) HasSymbolId() bool`

HasSymbolId returns a boolean if a field has been set.

### SetSymbolIdNil

`func (o *V1Quote) SetSymbolIdNil(b bool)`

 SetSymbolIdNil sets the value for SymbolId to be an explicit nil

### UnsetSymbolId
`func (o *V1Quote) UnsetSymbolId()`

UnsetSymbolId ensures that no value is present for SymbolId, not even an explicit nil
### GetTimeExchange

`func (o *V1Quote) GetTimeExchange() time.Time`

GetTimeExchange returns the TimeExchange field if non-nil, zero value otherwise.

### GetTimeExchangeOk

`func (o *V1Quote) GetTimeExchangeOk() (*time.Time, bool)`

GetTimeExchangeOk returns a tuple with the TimeExchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeExchange

`func (o *V1Quote) SetTimeExchange(v time.Time)`

SetTimeExchange sets TimeExchange field to given value.

### HasTimeExchange

`func (o *V1Quote) HasTimeExchange() bool`

HasTimeExchange returns a boolean if a field has been set.

### GetTimeCoinapi

`func (o *V1Quote) GetTimeCoinapi() time.Time`

GetTimeCoinapi returns the TimeCoinapi field if non-nil, zero value otherwise.

### GetTimeCoinapiOk

`func (o *V1Quote) GetTimeCoinapiOk() (*time.Time, bool)`

GetTimeCoinapiOk returns a tuple with the TimeCoinapi field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeCoinapi

`func (o *V1Quote) SetTimeCoinapi(v time.Time)`

SetTimeCoinapi sets TimeCoinapi field to given value.

### HasTimeCoinapi

`func (o *V1Quote) HasTimeCoinapi() bool`

HasTimeCoinapi returns a boolean if a field has been set.

### GetAskPrice

`func (o *V1Quote) GetAskPrice() float64`

GetAskPrice returns the AskPrice field if non-nil, zero value otherwise.

### GetAskPriceOk

`func (o *V1Quote) GetAskPriceOk() (*float64, bool)`

GetAskPriceOk returns a tuple with the AskPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAskPrice

`func (o *V1Quote) SetAskPrice(v float64)`

SetAskPrice sets AskPrice field to given value.

### HasAskPrice

`func (o *V1Quote) HasAskPrice() bool`

HasAskPrice returns a boolean if a field has been set.

### SetAskPriceNil

`func (o *V1Quote) SetAskPriceNil(b bool)`

 SetAskPriceNil sets the value for AskPrice to be an explicit nil

### UnsetAskPrice
`func (o *V1Quote) UnsetAskPrice()`

UnsetAskPrice ensures that no value is present for AskPrice, not even an explicit nil
### GetAskSize

`func (o *V1Quote) GetAskSize() float64`

GetAskSize returns the AskSize field if non-nil, zero value otherwise.

### GetAskSizeOk

`func (o *V1Quote) GetAskSizeOk() (*float64, bool)`

GetAskSizeOk returns a tuple with the AskSize field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAskSize

`func (o *V1Quote) SetAskSize(v float64)`

SetAskSize sets AskSize field to given value.

### HasAskSize

`func (o *V1Quote) HasAskSize() bool`

HasAskSize returns a boolean if a field has been set.

### SetAskSizeNil

`func (o *V1Quote) SetAskSizeNil(b bool)`

 SetAskSizeNil sets the value for AskSize to be an explicit nil

### UnsetAskSize
`func (o *V1Quote) UnsetAskSize()`

UnsetAskSize ensures that no value is present for AskSize, not even an explicit nil
### GetBidPrice

`func (o *V1Quote) GetBidPrice() float64`

GetBidPrice returns the BidPrice field if non-nil, zero value otherwise.

### GetBidPriceOk

`func (o *V1Quote) GetBidPriceOk() (*float64, bool)`

GetBidPriceOk returns a tuple with the BidPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBidPrice

`func (o *V1Quote) SetBidPrice(v float64)`

SetBidPrice sets BidPrice field to given value.

### HasBidPrice

`func (o *V1Quote) HasBidPrice() bool`

HasBidPrice returns a boolean if a field has been set.

### SetBidPriceNil

`func (o *V1Quote) SetBidPriceNil(b bool)`

 SetBidPriceNil sets the value for BidPrice to be an explicit nil

### UnsetBidPrice
`func (o *V1Quote) UnsetBidPrice()`

UnsetBidPrice ensures that no value is present for BidPrice, not even an explicit nil
### GetBidSize

`func (o *V1Quote) GetBidSize() float64`

GetBidSize returns the BidSize field if non-nil, zero value otherwise.

### GetBidSizeOk

`func (o *V1Quote) GetBidSizeOk() (*float64, bool)`

GetBidSizeOk returns a tuple with the BidSize field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBidSize

`func (o *V1Quote) SetBidSize(v float64)`

SetBidSize sets BidSize field to given value.

### HasBidSize

`func (o *V1Quote) HasBidSize() bool`

HasBidSize returns a boolean if a field has been set.

### SetBidSizeNil

`func (o *V1Quote) SetBidSizeNil(b bool)`

 SetBidSizeNil sets the value for BidSize to be an explicit nil

### UnsetBidSize
`func (o *V1Quote) UnsetBidSize()`

UnsetBidSize ensures that no value is present for BidSize, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


