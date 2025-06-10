# OptionsStrike

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StrikePrice** | Pointer to **float64** | The strike price. | [optional] 
**Call** | Pointer to [**V1QuoteTrade**](V1QuoteTrade.md) |  | [optional] 
**Put** | Pointer to [**V1QuoteTrade**](V1QuoteTrade.md) |  | [optional] 

## Methods

### NewOptionsStrike

`func NewOptionsStrike() *OptionsStrike`

NewOptionsStrike instantiates a new OptionsStrike object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOptionsStrikeWithDefaults

`func NewOptionsStrikeWithDefaults() *OptionsStrike`

NewOptionsStrikeWithDefaults instantiates a new OptionsStrike object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStrikePrice

`func (o *OptionsStrike) GetStrikePrice() float64`

GetStrikePrice returns the StrikePrice field if non-nil, zero value otherwise.

### GetStrikePriceOk

`func (o *OptionsStrike) GetStrikePriceOk() (*float64, bool)`

GetStrikePriceOk returns a tuple with the StrikePrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStrikePrice

`func (o *OptionsStrike) SetStrikePrice(v float64)`

SetStrikePrice sets StrikePrice field to given value.

### HasStrikePrice

`func (o *OptionsStrike) HasStrikePrice() bool`

HasStrikePrice returns a boolean if a field has been set.

### GetCall

`func (o *OptionsStrike) GetCall() V1QuoteTrade`

GetCall returns the Call field if non-nil, zero value otherwise.

### GetCallOk

`func (o *OptionsStrike) GetCallOk() (*V1QuoteTrade, bool)`

GetCallOk returns a tuple with the Call field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCall

`func (o *OptionsStrike) SetCall(v V1QuoteTrade)`

SetCall sets Call field to given value.

### HasCall

`func (o *OptionsStrike) HasCall() bool`

HasCall returns a boolean if a field has been set.

### GetPut

`func (o *OptionsStrike) GetPut() V1QuoteTrade`

GetPut returns the Put field if non-nil, zero value otherwise.

### GetPutOk

`func (o *OptionsStrike) GetPutOk() (*V1QuoteTrade, bool)`

GetPutOk returns a tuple with the Put field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPut

`func (o *OptionsStrike) SetPut(v V1QuoteTrade)`

SetPut sets Put field to given value.

### HasPut

`func (o *OptionsStrike) HasPut() bool`

HasPut returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


