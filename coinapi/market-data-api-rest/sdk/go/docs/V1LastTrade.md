# V1LastTrade

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TimeExchange** | Pointer to **time.Time** | The exchange time of the last trade. | [optional] 
**TimeCoinapi** | Pointer to **time.Time** | The CoinAPI time when the last trade was received. | [optional] 
**Uuid** | Pointer to **string** | The UUID of the last trade. | [optional] 
**Price** | Pointer to **float64** | The price of the last trade. | [optional] 
**Size** | Pointer to **float64** | The size of the last trade. | [optional] 
**TakerSide** | Pointer to **NullableString** | The taker side of the last trade. | [optional] 

## Methods

### NewV1LastTrade

`func NewV1LastTrade() *V1LastTrade`

NewV1LastTrade instantiates a new V1LastTrade object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewV1LastTradeWithDefaults

`func NewV1LastTradeWithDefaults() *V1LastTrade`

NewV1LastTradeWithDefaults instantiates a new V1LastTrade object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTimeExchange

`func (o *V1LastTrade) GetTimeExchange() time.Time`

GetTimeExchange returns the TimeExchange field if non-nil, zero value otherwise.

### GetTimeExchangeOk

`func (o *V1LastTrade) GetTimeExchangeOk() (*time.Time, bool)`

GetTimeExchangeOk returns a tuple with the TimeExchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeExchange

`func (o *V1LastTrade) SetTimeExchange(v time.Time)`

SetTimeExchange sets TimeExchange field to given value.

### HasTimeExchange

`func (o *V1LastTrade) HasTimeExchange() bool`

HasTimeExchange returns a boolean if a field has been set.

### GetTimeCoinapi

`func (o *V1LastTrade) GetTimeCoinapi() time.Time`

GetTimeCoinapi returns the TimeCoinapi field if non-nil, zero value otherwise.

### GetTimeCoinapiOk

`func (o *V1LastTrade) GetTimeCoinapiOk() (*time.Time, bool)`

GetTimeCoinapiOk returns a tuple with the TimeCoinapi field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeCoinapi

`func (o *V1LastTrade) SetTimeCoinapi(v time.Time)`

SetTimeCoinapi sets TimeCoinapi field to given value.

### HasTimeCoinapi

`func (o *V1LastTrade) HasTimeCoinapi() bool`

HasTimeCoinapi returns a boolean if a field has been set.

### GetUuid

`func (o *V1LastTrade) GetUuid() string`

GetUuid returns the Uuid field if non-nil, zero value otherwise.

### GetUuidOk

`func (o *V1LastTrade) GetUuidOk() (*string, bool)`

GetUuidOk returns a tuple with the Uuid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUuid

`func (o *V1LastTrade) SetUuid(v string)`

SetUuid sets Uuid field to given value.

### HasUuid

`func (o *V1LastTrade) HasUuid() bool`

HasUuid returns a boolean if a field has been set.

### GetPrice

`func (o *V1LastTrade) GetPrice() float64`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *V1LastTrade) GetPriceOk() (*float64, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *V1LastTrade) SetPrice(v float64)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *V1LastTrade) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### GetSize

`func (o *V1LastTrade) GetSize() float64`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *V1LastTrade) GetSizeOk() (*float64, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *V1LastTrade) SetSize(v float64)`

SetSize sets Size field to given value.

### HasSize

`func (o *V1LastTrade) HasSize() bool`

HasSize returns a boolean if a field has been set.

### GetTakerSide

`func (o *V1LastTrade) GetTakerSide() string`

GetTakerSide returns the TakerSide field if non-nil, zero value otherwise.

### GetTakerSideOk

`func (o *V1LastTrade) GetTakerSideOk() (*string, bool)`

GetTakerSideOk returns a tuple with the TakerSide field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTakerSide

`func (o *V1LastTrade) SetTakerSide(v string)`

SetTakerSide sets TakerSide field to given value.

### HasTakerSide

`func (o *V1LastTrade) HasTakerSide() bool`

HasTakerSide returns a boolean if a field has been set.

### SetTakerSideNil

`func (o *V1LastTrade) SetTakerSideNil(b bool)`

 SetTakerSideNil sets the value for TakerSide to be an explicit nil

### UnsetTakerSide
`func (o *V1LastTrade) UnsetTakerSide()`

UnsetTakerSide ensures that no value is present for TakerSide, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


