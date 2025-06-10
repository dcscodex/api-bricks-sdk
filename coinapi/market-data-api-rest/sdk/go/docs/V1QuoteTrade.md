# V1QuoteTrade

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SymbolId** | Pointer to **NullableString** | The symbol identifier. | [optional] 
**TimeExchange** | Pointer to **time.Time** | The exchange time of the quote trade. | [optional] 
**TimeCoinapi** | Pointer to **time.Time** | The CoinAPI time when the quote trade was received. | [optional] 
**AskPrice** | Pointer to **NullableFloat64** | The best asking price. | [optional] 
**AskSize** | Pointer to **NullableFloat64** | The volume resting on the best ask. If the value is equal to zero, then the size is unknown. | [optional] 
**BidPrice** | Pointer to **NullableFloat64** | The best bidding price. | [optional] 
**BidSize** | Pointer to **NullableFloat64** | The volume resting on the best bid. If the value is equal to zero, then the size is unknown. | [optional] 
**LastTrade** | Pointer to [**V1LastTrade**](V1LastTrade.md) |  | [optional] 

## Methods

### NewV1QuoteTrade

`func NewV1QuoteTrade() *V1QuoteTrade`

NewV1QuoteTrade instantiates a new V1QuoteTrade object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewV1QuoteTradeWithDefaults

`func NewV1QuoteTradeWithDefaults() *V1QuoteTrade`

NewV1QuoteTradeWithDefaults instantiates a new V1QuoteTrade object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbolId

`func (o *V1QuoteTrade) GetSymbolId() string`

GetSymbolId returns the SymbolId field if non-nil, zero value otherwise.

### GetSymbolIdOk

`func (o *V1QuoteTrade) GetSymbolIdOk() (*string, bool)`

GetSymbolIdOk returns a tuple with the SymbolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolId

`func (o *V1QuoteTrade) SetSymbolId(v string)`

SetSymbolId sets SymbolId field to given value.

### HasSymbolId

`func (o *V1QuoteTrade) HasSymbolId() bool`

HasSymbolId returns a boolean if a field has been set.

### SetSymbolIdNil

`func (o *V1QuoteTrade) SetSymbolIdNil(b bool)`

 SetSymbolIdNil sets the value for SymbolId to be an explicit nil

### UnsetSymbolId
`func (o *V1QuoteTrade) UnsetSymbolId()`

UnsetSymbolId ensures that no value is present for SymbolId, not even an explicit nil
### GetTimeExchange

`func (o *V1QuoteTrade) GetTimeExchange() time.Time`

GetTimeExchange returns the TimeExchange field if non-nil, zero value otherwise.

### GetTimeExchangeOk

`func (o *V1QuoteTrade) GetTimeExchangeOk() (*time.Time, bool)`

GetTimeExchangeOk returns a tuple with the TimeExchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeExchange

`func (o *V1QuoteTrade) SetTimeExchange(v time.Time)`

SetTimeExchange sets TimeExchange field to given value.

### HasTimeExchange

`func (o *V1QuoteTrade) HasTimeExchange() bool`

HasTimeExchange returns a boolean if a field has been set.

### GetTimeCoinapi

`func (o *V1QuoteTrade) GetTimeCoinapi() time.Time`

GetTimeCoinapi returns the TimeCoinapi field if non-nil, zero value otherwise.

### GetTimeCoinapiOk

`func (o *V1QuoteTrade) GetTimeCoinapiOk() (*time.Time, bool)`

GetTimeCoinapiOk returns a tuple with the TimeCoinapi field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeCoinapi

`func (o *V1QuoteTrade) SetTimeCoinapi(v time.Time)`

SetTimeCoinapi sets TimeCoinapi field to given value.

### HasTimeCoinapi

`func (o *V1QuoteTrade) HasTimeCoinapi() bool`

HasTimeCoinapi returns a boolean if a field has been set.

### GetAskPrice

`func (o *V1QuoteTrade) GetAskPrice() float64`

GetAskPrice returns the AskPrice field if non-nil, zero value otherwise.

### GetAskPriceOk

`func (o *V1QuoteTrade) GetAskPriceOk() (*float64, bool)`

GetAskPriceOk returns a tuple with the AskPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAskPrice

`func (o *V1QuoteTrade) SetAskPrice(v float64)`

SetAskPrice sets AskPrice field to given value.

### HasAskPrice

`func (o *V1QuoteTrade) HasAskPrice() bool`

HasAskPrice returns a boolean if a field has been set.

### SetAskPriceNil

`func (o *V1QuoteTrade) SetAskPriceNil(b bool)`

 SetAskPriceNil sets the value for AskPrice to be an explicit nil

### UnsetAskPrice
`func (o *V1QuoteTrade) UnsetAskPrice()`

UnsetAskPrice ensures that no value is present for AskPrice, not even an explicit nil
### GetAskSize

`func (o *V1QuoteTrade) GetAskSize() float64`

GetAskSize returns the AskSize field if non-nil, zero value otherwise.

### GetAskSizeOk

`func (o *V1QuoteTrade) GetAskSizeOk() (*float64, bool)`

GetAskSizeOk returns a tuple with the AskSize field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAskSize

`func (o *V1QuoteTrade) SetAskSize(v float64)`

SetAskSize sets AskSize field to given value.

### HasAskSize

`func (o *V1QuoteTrade) HasAskSize() bool`

HasAskSize returns a boolean if a field has been set.

### SetAskSizeNil

`func (o *V1QuoteTrade) SetAskSizeNil(b bool)`

 SetAskSizeNil sets the value for AskSize to be an explicit nil

### UnsetAskSize
`func (o *V1QuoteTrade) UnsetAskSize()`

UnsetAskSize ensures that no value is present for AskSize, not even an explicit nil
### GetBidPrice

`func (o *V1QuoteTrade) GetBidPrice() float64`

GetBidPrice returns the BidPrice field if non-nil, zero value otherwise.

### GetBidPriceOk

`func (o *V1QuoteTrade) GetBidPriceOk() (*float64, bool)`

GetBidPriceOk returns a tuple with the BidPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBidPrice

`func (o *V1QuoteTrade) SetBidPrice(v float64)`

SetBidPrice sets BidPrice field to given value.

### HasBidPrice

`func (o *V1QuoteTrade) HasBidPrice() bool`

HasBidPrice returns a boolean if a field has been set.

### SetBidPriceNil

`func (o *V1QuoteTrade) SetBidPriceNil(b bool)`

 SetBidPriceNil sets the value for BidPrice to be an explicit nil

### UnsetBidPrice
`func (o *V1QuoteTrade) UnsetBidPrice()`

UnsetBidPrice ensures that no value is present for BidPrice, not even an explicit nil
### GetBidSize

`func (o *V1QuoteTrade) GetBidSize() float64`

GetBidSize returns the BidSize field if non-nil, zero value otherwise.

### GetBidSizeOk

`func (o *V1QuoteTrade) GetBidSizeOk() (*float64, bool)`

GetBidSizeOk returns a tuple with the BidSize field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBidSize

`func (o *V1QuoteTrade) SetBidSize(v float64)`

SetBidSize sets BidSize field to given value.

### HasBidSize

`func (o *V1QuoteTrade) HasBidSize() bool`

HasBidSize returns a boolean if a field has been set.

### SetBidSizeNil

`func (o *V1QuoteTrade) SetBidSizeNil(b bool)`

 SetBidSizeNil sets the value for BidSize to be an explicit nil

### UnsetBidSize
`func (o *V1QuoteTrade) UnsetBidSize()`

UnsetBidSize ensures that no value is present for BidSize, not even an explicit nil
### GetLastTrade

`func (o *V1QuoteTrade) GetLastTrade() V1LastTrade`

GetLastTrade returns the LastTrade field if non-nil, zero value otherwise.

### GetLastTradeOk

`func (o *V1QuoteTrade) GetLastTradeOk() (*V1LastTrade, bool)`

GetLastTradeOk returns a tuple with the LastTrade field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastTrade

`func (o *V1QuoteTrade) SetLastTrade(v V1LastTrade)`

SetLastTrade sets LastTrade field to given value.

### HasLastTrade

`func (o *V1QuoteTrade) HasLastTrade() bool`

HasLastTrade returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


