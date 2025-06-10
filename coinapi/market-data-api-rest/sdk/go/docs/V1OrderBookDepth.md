# V1OrderBookDepth

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SymbolId** | Pointer to **NullableString** | The symbol identifier. | [optional] 
**TimeExchange** | Pointer to **time.Time** | The exchange time of the order book. | [optional] 
**TimeCoinapi** | Pointer to **time.Time** | The CoinAPI time when the order book was received. | [optional] 
**AskLevels** | Pointer to **int64** | The number of ask levels in the order book. | [optional] 
**BidLevels** | Pointer to **int64** | The number of bid levels in the order book. | [optional] 
**AskDepth** | Pointer to **float64** | The depth of the ask side of the order book. | [optional] 
**BidDepth** | Pointer to **float64** | The depth of the bid side of the order book. | [optional] 

## Methods

### NewV1OrderBookDepth

`func NewV1OrderBookDepth() *V1OrderBookDepth`

NewV1OrderBookDepth instantiates a new V1OrderBookDepth object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewV1OrderBookDepthWithDefaults

`func NewV1OrderBookDepthWithDefaults() *V1OrderBookDepth`

NewV1OrderBookDepthWithDefaults instantiates a new V1OrderBookDepth object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbolId

`func (o *V1OrderBookDepth) GetSymbolId() string`

GetSymbolId returns the SymbolId field if non-nil, zero value otherwise.

### GetSymbolIdOk

`func (o *V1OrderBookDepth) GetSymbolIdOk() (*string, bool)`

GetSymbolIdOk returns a tuple with the SymbolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolId

`func (o *V1OrderBookDepth) SetSymbolId(v string)`

SetSymbolId sets SymbolId field to given value.

### HasSymbolId

`func (o *V1OrderBookDepth) HasSymbolId() bool`

HasSymbolId returns a boolean if a field has been set.

### SetSymbolIdNil

`func (o *V1OrderBookDepth) SetSymbolIdNil(b bool)`

 SetSymbolIdNil sets the value for SymbolId to be an explicit nil

### UnsetSymbolId
`func (o *V1OrderBookDepth) UnsetSymbolId()`

UnsetSymbolId ensures that no value is present for SymbolId, not even an explicit nil
### GetTimeExchange

`func (o *V1OrderBookDepth) GetTimeExchange() time.Time`

GetTimeExchange returns the TimeExchange field if non-nil, zero value otherwise.

### GetTimeExchangeOk

`func (o *V1OrderBookDepth) GetTimeExchangeOk() (*time.Time, bool)`

GetTimeExchangeOk returns a tuple with the TimeExchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeExchange

`func (o *V1OrderBookDepth) SetTimeExchange(v time.Time)`

SetTimeExchange sets TimeExchange field to given value.

### HasTimeExchange

`func (o *V1OrderBookDepth) HasTimeExchange() bool`

HasTimeExchange returns a boolean if a field has been set.

### GetTimeCoinapi

`func (o *V1OrderBookDepth) GetTimeCoinapi() time.Time`

GetTimeCoinapi returns the TimeCoinapi field if non-nil, zero value otherwise.

### GetTimeCoinapiOk

`func (o *V1OrderBookDepth) GetTimeCoinapiOk() (*time.Time, bool)`

GetTimeCoinapiOk returns a tuple with the TimeCoinapi field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeCoinapi

`func (o *V1OrderBookDepth) SetTimeCoinapi(v time.Time)`

SetTimeCoinapi sets TimeCoinapi field to given value.

### HasTimeCoinapi

`func (o *V1OrderBookDepth) HasTimeCoinapi() bool`

HasTimeCoinapi returns a boolean if a field has been set.

### GetAskLevels

`func (o *V1OrderBookDepth) GetAskLevels() int64`

GetAskLevels returns the AskLevels field if non-nil, zero value otherwise.

### GetAskLevelsOk

`func (o *V1OrderBookDepth) GetAskLevelsOk() (*int64, bool)`

GetAskLevelsOk returns a tuple with the AskLevels field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAskLevels

`func (o *V1OrderBookDepth) SetAskLevels(v int64)`

SetAskLevels sets AskLevels field to given value.

### HasAskLevels

`func (o *V1OrderBookDepth) HasAskLevels() bool`

HasAskLevels returns a boolean if a field has been set.

### GetBidLevels

`func (o *V1OrderBookDepth) GetBidLevels() int64`

GetBidLevels returns the BidLevels field if non-nil, zero value otherwise.

### GetBidLevelsOk

`func (o *V1OrderBookDepth) GetBidLevelsOk() (*int64, bool)`

GetBidLevelsOk returns a tuple with the BidLevels field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBidLevels

`func (o *V1OrderBookDepth) SetBidLevels(v int64)`

SetBidLevels sets BidLevels field to given value.

### HasBidLevels

`func (o *V1OrderBookDepth) HasBidLevels() bool`

HasBidLevels returns a boolean if a field has been set.

### GetAskDepth

`func (o *V1OrderBookDepth) GetAskDepth() float64`

GetAskDepth returns the AskDepth field if non-nil, zero value otherwise.

### GetAskDepthOk

`func (o *V1OrderBookDepth) GetAskDepthOk() (*float64, bool)`

GetAskDepthOk returns a tuple with the AskDepth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAskDepth

`func (o *V1OrderBookDepth) SetAskDepth(v float64)`

SetAskDepth sets AskDepth field to given value.

### HasAskDepth

`func (o *V1OrderBookDepth) HasAskDepth() bool`

HasAskDepth returns a boolean if a field has been set.

### GetBidDepth

`func (o *V1OrderBookDepth) GetBidDepth() float64`

GetBidDepth returns the BidDepth field if non-nil, zero value otherwise.

### GetBidDepthOk

`func (o *V1OrderBookDepth) GetBidDepthOk() (*float64, bool)`

GetBidDepthOk returns a tuple with the BidDepth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBidDepth

`func (o *V1OrderBookDepth) SetBidDepth(v float64)`

SetBidDepth sets BidDepth field to given value.

### HasBidDepth

`func (o *V1OrderBookDepth) HasBidDepth() bool`

HasBidDepth returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


