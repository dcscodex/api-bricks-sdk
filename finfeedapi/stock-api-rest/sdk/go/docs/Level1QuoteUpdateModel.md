# Level1QuoteUpdateModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | Pointer to **NullableString** | The stock symbol | [optional] 
**TimestampNanos** | Pointer to **int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | Pointer to **time.Time** | Time when the quote update was recorded as DateTime | [optional] 
**IsSymbolAvailable** | Pointer to **bool** | Gets whether the symbol is available for trading True if active, False if halted, paused, or otherwise not available | [optional] 
**IsPrePostMarketSession** | Pointer to **bool** | Gets whether the market session is regular or pre/post-market True if pre/post-market session, False if regular market session | [optional] 
**AskSize** | Pointer to **int32** | Ask size in number of shares | [optional] 
**AskPrice** | Pointer to **float64** | Ask price as decimal | [optional] 
**BidPrice** | Pointer to **float64** | Bid price as decimal | [optional] 
**BidSize** | Pointer to **int32** | Bid size in number of shares | [optional] 

## Methods

### NewLevel1QuoteUpdateModel

`func NewLevel1QuoteUpdateModel() *Level1QuoteUpdateModel`

NewLevel1QuoteUpdateModel instantiates a new Level1QuoteUpdateModel object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLevel1QuoteUpdateModelWithDefaults

`func NewLevel1QuoteUpdateModelWithDefaults() *Level1QuoteUpdateModel`

NewLevel1QuoteUpdateModelWithDefaults instantiates a new Level1QuoteUpdateModel object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *Level1QuoteUpdateModel) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *Level1QuoteUpdateModel) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *Level1QuoteUpdateModel) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *Level1QuoteUpdateModel) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### SetSymbolNil

`func (o *Level1QuoteUpdateModel) SetSymbolNil(b bool)`

 SetSymbolNil sets the value for Symbol to be an explicit nil

### UnsetSymbol
`func (o *Level1QuoteUpdateModel) UnsetSymbol()`

UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
### GetTimestampNanos

`func (o *Level1QuoteUpdateModel) GetTimestampNanos() int64`

GetTimestampNanos returns the TimestampNanos field if non-nil, zero value otherwise.

### GetTimestampNanosOk

`func (o *Level1QuoteUpdateModel) GetTimestampNanosOk() (*int64, bool)`

GetTimestampNanosOk returns a tuple with the TimestampNanos field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestampNanos

`func (o *Level1QuoteUpdateModel) SetTimestampNanos(v int64)`

SetTimestampNanos sets TimestampNanos field to given value.

### HasTimestampNanos

`func (o *Level1QuoteUpdateModel) HasTimestampNanos() bool`

HasTimestampNanos returns a boolean if a field has been set.

### GetTimestamp

`func (o *Level1QuoteUpdateModel) GetTimestamp() time.Time`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *Level1QuoteUpdateModel) GetTimestampOk() (*time.Time, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *Level1QuoteUpdateModel) SetTimestamp(v time.Time)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *Level1QuoteUpdateModel) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### GetIsSymbolAvailable

`func (o *Level1QuoteUpdateModel) GetIsSymbolAvailable() bool`

GetIsSymbolAvailable returns the IsSymbolAvailable field if non-nil, zero value otherwise.

### GetIsSymbolAvailableOk

`func (o *Level1QuoteUpdateModel) GetIsSymbolAvailableOk() (*bool, bool)`

GetIsSymbolAvailableOk returns a tuple with the IsSymbolAvailable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsSymbolAvailable

`func (o *Level1QuoteUpdateModel) SetIsSymbolAvailable(v bool)`

SetIsSymbolAvailable sets IsSymbolAvailable field to given value.

### HasIsSymbolAvailable

`func (o *Level1QuoteUpdateModel) HasIsSymbolAvailable() bool`

HasIsSymbolAvailable returns a boolean if a field has been set.

### GetIsPrePostMarketSession

`func (o *Level1QuoteUpdateModel) GetIsPrePostMarketSession() bool`

GetIsPrePostMarketSession returns the IsPrePostMarketSession field if non-nil, zero value otherwise.

### GetIsPrePostMarketSessionOk

`func (o *Level1QuoteUpdateModel) GetIsPrePostMarketSessionOk() (*bool, bool)`

GetIsPrePostMarketSessionOk returns a tuple with the IsPrePostMarketSession field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsPrePostMarketSession

`func (o *Level1QuoteUpdateModel) SetIsPrePostMarketSession(v bool)`

SetIsPrePostMarketSession sets IsPrePostMarketSession field to given value.

### HasIsPrePostMarketSession

`func (o *Level1QuoteUpdateModel) HasIsPrePostMarketSession() bool`

HasIsPrePostMarketSession returns a boolean if a field has been set.

### GetAskSize

`func (o *Level1QuoteUpdateModel) GetAskSize() int32`

GetAskSize returns the AskSize field if non-nil, zero value otherwise.

### GetAskSizeOk

`func (o *Level1QuoteUpdateModel) GetAskSizeOk() (*int32, bool)`

GetAskSizeOk returns a tuple with the AskSize field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAskSize

`func (o *Level1QuoteUpdateModel) SetAskSize(v int32)`

SetAskSize sets AskSize field to given value.

### HasAskSize

`func (o *Level1QuoteUpdateModel) HasAskSize() bool`

HasAskSize returns a boolean if a field has been set.

### GetAskPrice

`func (o *Level1QuoteUpdateModel) GetAskPrice() float64`

GetAskPrice returns the AskPrice field if non-nil, zero value otherwise.

### GetAskPriceOk

`func (o *Level1QuoteUpdateModel) GetAskPriceOk() (*float64, bool)`

GetAskPriceOk returns a tuple with the AskPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAskPrice

`func (o *Level1QuoteUpdateModel) SetAskPrice(v float64)`

SetAskPrice sets AskPrice field to given value.

### HasAskPrice

`func (o *Level1QuoteUpdateModel) HasAskPrice() bool`

HasAskPrice returns a boolean if a field has been set.

### GetBidPrice

`func (o *Level1QuoteUpdateModel) GetBidPrice() float64`

GetBidPrice returns the BidPrice field if non-nil, zero value otherwise.

### GetBidPriceOk

`func (o *Level1QuoteUpdateModel) GetBidPriceOk() (*float64, bool)`

GetBidPriceOk returns a tuple with the BidPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBidPrice

`func (o *Level1QuoteUpdateModel) SetBidPrice(v float64)`

SetBidPrice sets BidPrice field to given value.

### HasBidPrice

`func (o *Level1QuoteUpdateModel) HasBidPrice() bool`

HasBidPrice returns a boolean if a field has been set.

### GetBidSize

`func (o *Level1QuoteUpdateModel) GetBidSize() int32`

GetBidSize returns the BidSize field if non-nil, zero value otherwise.

### GetBidSizeOk

`func (o *Level1QuoteUpdateModel) GetBidSizeOk() (*int32, bool)`

GetBidSizeOk returns a tuple with the BidSize field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBidSize

`func (o *Level1QuoteUpdateModel) SetBidSize(v int32)`

SetBidSize sets BidSize field to given value.

### HasBidSize

`func (o *Level1QuoteUpdateModel) HasBidSize() bool`

HasBidSize returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


