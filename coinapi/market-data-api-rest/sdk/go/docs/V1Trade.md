# V1Trade

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SymbolId** | Pointer to **NullableString** | The symbol identifier. | [optional] 
**TimeExchange** | Pointer to **time.Time** | The time of trade reported by the exchange. | [optional] 
**TimeCoinapi** | Pointer to **time.Time** | The time when the trade was received by CoinAPI. | [optional] 
**Uuid** | Pointer to **string** | The unique identifier for the trade. | [optional] 
**Price** | Pointer to **float64** | The price of the transaction. | [optional] 
**Size** | Pointer to **float64** | The base asset amount traded in the transaction. | [optional] 
**TakerSide** | Pointer to **NullableString** | The aggressor side of the transaction (BUY/SELL/BUY_ESTIMATED/SELL_ESTIMATED/UNKNOWN). | [optional] 
**IdTrade** | Pointer to **NullableString** | The trade identifier. | [optional] 
**IdOrderMaker** | Pointer to **NullableString** | The order maker identifier. | [optional] 
**IdOrderTaker** | Pointer to **NullableString** | The order taker identifier. | [optional] 

## Methods

### NewV1Trade

`func NewV1Trade() *V1Trade`

NewV1Trade instantiates a new V1Trade object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewV1TradeWithDefaults

`func NewV1TradeWithDefaults() *V1Trade`

NewV1TradeWithDefaults instantiates a new V1Trade object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbolId

`func (o *V1Trade) GetSymbolId() string`

GetSymbolId returns the SymbolId field if non-nil, zero value otherwise.

### GetSymbolIdOk

`func (o *V1Trade) GetSymbolIdOk() (*string, bool)`

GetSymbolIdOk returns a tuple with the SymbolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolId

`func (o *V1Trade) SetSymbolId(v string)`

SetSymbolId sets SymbolId field to given value.

### HasSymbolId

`func (o *V1Trade) HasSymbolId() bool`

HasSymbolId returns a boolean if a field has been set.

### SetSymbolIdNil

`func (o *V1Trade) SetSymbolIdNil(b bool)`

 SetSymbolIdNil sets the value for SymbolId to be an explicit nil

### UnsetSymbolId
`func (o *V1Trade) UnsetSymbolId()`

UnsetSymbolId ensures that no value is present for SymbolId, not even an explicit nil
### GetTimeExchange

`func (o *V1Trade) GetTimeExchange() time.Time`

GetTimeExchange returns the TimeExchange field if non-nil, zero value otherwise.

### GetTimeExchangeOk

`func (o *V1Trade) GetTimeExchangeOk() (*time.Time, bool)`

GetTimeExchangeOk returns a tuple with the TimeExchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeExchange

`func (o *V1Trade) SetTimeExchange(v time.Time)`

SetTimeExchange sets TimeExchange field to given value.

### HasTimeExchange

`func (o *V1Trade) HasTimeExchange() bool`

HasTimeExchange returns a boolean if a field has been set.

### GetTimeCoinapi

`func (o *V1Trade) GetTimeCoinapi() time.Time`

GetTimeCoinapi returns the TimeCoinapi field if non-nil, zero value otherwise.

### GetTimeCoinapiOk

`func (o *V1Trade) GetTimeCoinapiOk() (*time.Time, bool)`

GetTimeCoinapiOk returns a tuple with the TimeCoinapi field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeCoinapi

`func (o *V1Trade) SetTimeCoinapi(v time.Time)`

SetTimeCoinapi sets TimeCoinapi field to given value.

### HasTimeCoinapi

`func (o *V1Trade) HasTimeCoinapi() bool`

HasTimeCoinapi returns a boolean if a field has been set.

### GetUuid

`func (o *V1Trade) GetUuid() string`

GetUuid returns the Uuid field if non-nil, zero value otherwise.

### GetUuidOk

`func (o *V1Trade) GetUuidOk() (*string, bool)`

GetUuidOk returns a tuple with the Uuid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUuid

`func (o *V1Trade) SetUuid(v string)`

SetUuid sets Uuid field to given value.

### HasUuid

`func (o *V1Trade) HasUuid() bool`

HasUuid returns a boolean if a field has been set.

### GetPrice

`func (o *V1Trade) GetPrice() float64`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *V1Trade) GetPriceOk() (*float64, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *V1Trade) SetPrice(v float64)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *V1Trade) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### GetSize

`func (o *V1Trade) GetSize() float64`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *V1Trade) GetSizeOk() (*float64, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *V1Trade) SetSize(v float64)`

SetSize sets Size field to given value.

### HasSize

`func (o *V1Trade) HasSize() bool`

HasSize returns a boolean if a field has been set.

### GetTakerSide

`func (o *V1Trade) GetTakerSide() string`

GetTakerSide returns the TakerSide field if non-nil, zero value otherwise.

### GetTakerSideOk

`func (o *V1Trade) GetTakerSideOk() (*string, bool)`

GetTakerSideOk returns a tuple with the TakerSide field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTakerSide

`func (o *V1Trade) SetTakerSide(v string)`

SetTakerSide sets TakerSide field to given value.

### HasTakerSide

`func (o *V1Trade) HasTakerSide() bool`

HasTakerSide returns a boolean if a field has been set.

### SetTakerSideNil

`func (o *V1Trade) SetTakerSideNil(b bool)`

 SetTakerSideNil sets the value for TakerSide to be an explicit nil

### UnsetTakerSide
`func (o *V1Trade) UnsetTakerSide()`

UnsetTakerSide ensures that no value is present for TakerSide, not even an explicit nil
### GetIdTrade

`func (o *V1Trade) GetIdTrade() string`

GetIdTrade returns the IdTrade field if non-nil, zero value otherwise.

### GetIdTradeOk

`func (o *V1Trade) GetIdTradeOk() (*string, bool)`

GetIdTradeOk returns a tuple with the IdTrade field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIdTrade

`func (o *V1Trade) SetIdTrade(v string)`

SetIdTrade sets IdTrade field to given value.

### HasIdTrade

`func (o *V1Trade) HasIdTrade() bool`

HasIdTrade returns a boolean if a field has been set.

### SetIdTradeNil

`func (o *V1Trade) SetIdTradeNil(b bool)`

 SetIdTradeNil sets the value for IdTrade to be an explicit nil

### UnsetIdTrade
`func (o *V1Trade) UnsetIdTrade()`

UnsetIdTrade ensures that no value is present for IdTrade, not even an explicit nil
### GetIdOrderMaker

`func (o *V1Trade) GetIdOrderMaker() string`

GetIdOrderMaker returns the IdOrderMaker field if non-nil, zero value otherwise.

### GetIdOrderMakerOk

`func (o *V1Trade) GetIdOrderMakerOk() (*string, bool)`

GetIdOrderMakerOk returns a tuple with the IdOrderMaker field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIdOrderMaker

`func (o *V1Trade) SetIdOrderMaker(v string)`

SetIdOrderMaker sets IdOrderMaker field to given value.

### HasIdOrderMaker

`func (o *V1Trade) HasIdOrderMaker() bool`

HasIdOrderMaker returns a boolean if a field has been set.

### SetIdOrderMakerNil

`func (o *V1Trade) SetIdOrderMakerNil(b bool)`

 SetIdOrderMakerNil sets the value for IdOrderMaker to be an explicit nil

### UnsetIdOrderMaker
`func (o *V1Trade) UnsetIdOrderMaker()`

UnsetIdOrderMaker ensures that no value is present for IdOrderMaker, not even an explicit nil
### GetIdOrderTaker

`func (o *V1Trade) GetIdOrderTaker() string`

GetIdOrderTaker returns the IdOrderTaker field if non-nil, zero value otherwise.

### GetIdOrderTakerOk

`func (o *V1Trade) GetIdOrderTakerOk() (*string, bool)`

GetIdOrderTakerOk returns a tuple with the IdOrderTaker field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIdOrderTaker

`func (o *V1Trade) SetIdOrderTaker(v string)`

SetIdOrderTaker sets IdOrderTaker field to given value.

### HasIdOrderTaker

`func (o *V1Trade) HasIdOrderTaker() bool`

HasIdOrderTaker returns a boolean if a field has been set.

### SetIdOrderTakerNil

`func (o *V1Trade) SetIdOrderTakerNil(b bool)`

 SetIdOrderTakerNil sets the value for IdOrderTaker to be an explicit nil

### UnsetIdOrderTaker
`func (o *V1Trade) UnsetIdOrderTaker()`

UnsetIdOrderTaker ensures that no value is present for IdOrderTaker, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


