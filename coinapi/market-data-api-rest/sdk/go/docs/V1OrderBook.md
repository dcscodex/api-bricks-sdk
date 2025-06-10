# V1OrderBook

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SymbolId** | Pointer to **NullableString** | The symbol identifier. | [optional] 
**TimeExchange** | Pointer to **time.Time** | The exchange time of the order book. | [optional] 
**TimeCoinapi** | Pointer to **time.Time** | The CoinAPI time when the order book was received. | [optional] 
**Asks** | Pointer to **interface{}** | The asks made by market makers. | [optional] 
**Bids** | Pointer to **interface{}** | The bids made by market makers. | [optional] 

## Methods

### NewV1OrderBook

`func NewV1OrderBook() *V1OrderBook`

NewV1OrderBook instantiates a new V1OrderBook object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewV1OrderBookWithDefaults

`func NewV1OrderBookWithDefaults() *V1OrderBook`

NewV1OrderBookWithDefaults instantiates a new V1OrderBook object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbolId

`func (o *V1OrderBook) GetSymbolId() string`

GetSymbolId returns the SymbolId field if non-nil, zero value otherwise.

### GetSymbolIdOk

`func (o *V1OrderBook) GetSymbolIdOk() (*string, bool)`

GetSymbolIdOk returns a tuple with the SymbolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolId

`func (o *V1OrderBook) SetSymbolId(v string)`

SetSymbolId sets SymbolId field to given value.

### HasSymbolId

`func (o *V1OrderBook) HasSymbolId() bool`

HasSymbolId returns a boolean if a field has been set.

### SetSymbolIdNil

`func (o *V1OrderBook) SetSymbolIdNil(b bool)`

 SetSymbolIdNil sets the value for SymbolId to be an explicit nil

### UnsetSymbolId
`func (o *V1OrderBook) UnsetSymbolId()`

UnsetSymbolId ensures that no value is present for SymbolId, not even an explicit nil
### GetTimeExchange

`func (o *V1OrderBook) GetTimeExchange() time.Time`

GetTimeExchange returns the TimeExchange field if non-nil, zero value otherwise.

### GetTimeExchangeOk

`func (o *V1OrderBook) GetTimeExchangeOk() (*time.Time, bool)`

GetTimeExchangeOk returns a tuple with the TimeExchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeExchange

`func (o *V1OrderBook) SetTimeExchange(v time.Time)`

SetTimeExchange sets TimeExchange field to given value.

### HasTimeExchange

`func (o *V1OrderBook) HasTimeExchange() bool`

HasTimeExchange returns a boolean if a field has been set.

### GetTimeCoinapi

`func (o *V1OrderBook) GetTimeCoinapi() time.Time`

GetTimeCoinapi returns the TimeCoinapi field if non-nil, zero value otherwise.

### GetTimeCoinapiOk

`func (o *V1OrderBook) GetTimeCoinapiOk() (*time.Time, bool)`

GetTimeCoinapiOk returns a tuple with the TimeCoinapi field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeCoinapi

`func (o *V1OrderBook) SetTimeCoinapi(v time.Time)`

SetTimeCoinapi sets TimeCoinapi field to given value.

### HasTimeCoinapi

`func (o *V1OrderBook) HasTimeCoinapi() bool`

HasTimeCoinapi returns a boolean if a field has been set.

### GetAsks

`func (o *V1OrderBook) GetAsks() interface{}`

GetAsks returns the Asks field if non-nil, zero value otherwise.

### GetAsksOk

`func (o *V1OrderBook) GetAsksOk() (*interface{}, bool)`

GetAsksOk returns a tuple with the Asks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAsks

`func (o *V1OrderBook) SetAsks(v interface{})`

SetAsks sets Asks field to given value.

### HasAsks

`func (o *V1OrderBook) HasAsks() bool`

HasAsks returns a boolean if a field has been set.

### SetAsksNil

`func (o *V1OrderBook) SetAsksNil(b bool)`

 SetAsksNil sets the value for Asks to be an explicit nil

### UnsetAsks
`func (o *V1OrderBook) UnsetAsks()`

UnsetAsks ensures that no value is present for Asks, not even an explicit nil
### GetBids

`func (o *V1OrderBook) GetBids() interface{}`

GetBids returns the Bids field if non-nil, zero value otherwise.

### GetBidsOk

`func (o *V1OrderBook) GetBidsOk() (*interface{}, bool)`

GetBidsOk returns a tuple with the Bids field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBids

`func (o *V1OrderBook) SetBids(v interface{})`

SetBids sets Bids field to given value.

### HasBids

`func (o *V1OrderBook) HasBids() bool`

HasBids returns a boolean if a field has been set.

### SetBidsNil

`func (o *V1OrderBook) SetBidsNil(b bool)`

 SetBidsNil sets the value for Bids to be an explicit nil

### UnsetBids
`func (o *V1OrderBook) UnsetBids()`

UnsetBids ensures that no value is present for Bids, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


