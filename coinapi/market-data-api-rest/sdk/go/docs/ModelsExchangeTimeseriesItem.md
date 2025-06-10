# ModelsExchangeTimeseriesItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TimePeriodStart** | Pointer to **time.Time** | The start time of the time period. | [optional] 
**TimePeriodEnd** | Pointer to **time.Time** | The end time of the time period. | [optional] 
**TimeOpen** | Pointer to **NullableTime** | The time when the price opened. | [optional] 
**TimeClose** | Pointer to **NullableTime** | The time when the price closed. | [optional] 
**PriceOpen** | Pointer to **NullableFloat64** | The opening price. | [optional] 
**PriceHigh** | Pointer to **NullableFloat64** | The highest price during the time period. | [optional] 
**PriceLow** | Pointer to **NullableFloat64** | The lowest price during the time period. | [optional] 
**PriceClose** | Pointer to **NullableFloat64** | The closing price. | [optional] 
**VolumeTraded** | Pointer to **float64** | The total volume traded during the time period. | [optional] 
**TradesCount** | Pointer to **int64** | The number of trades executed during the time period. | [optional] 
**SymbolIdExchange** | Pointer to **NullableString** |  | [optional] 
**SymbolIdCoinapi** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewModelsExchangeTimeseriesItem

`func NewModelsExchangeTimeseriesItem() *ModelsExchangeTimeseriesItem`

NewModelsExchangeTimeseriesItem instantiates a new ModelsExchangeTimeseriesItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewModelsExchangeTimeseriesItemWithDefaults

`func NewModelsExchangeTimeseriesItemWithDefaults() *ModelsExchangeTimeseriesItem`

NewModelsExchangeTimeseriesItemWithDefaults instantiates a new ModelsExchangeTimeseriesItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTimePeriodStart

`func (o *ModelsExchangeTimeseriesItem) GetTimePeriodStart() time.Time`

GetTimePeriodStart returns the TimePeriodStart field if non-nil, zero value otherwise.

### GetTimePeriodStartOk

`func (o *ModelsExchangeTimeseriesItem) GetTimePeriodStartOk() (*time.Time, bool)`

GetTimePeriodStartOk returns a tuple with the TimePeriodStart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimePeriodStart

`func (o *ModelsExchangeTimeseriesItem) SetTimePeriodStart(v time.Time)`

SetTimePeriodStart sets TimePeriodStart field to given value.

### HasTimePeriodStart

`func (o *ModelsExchangeTimeseriesItem) HasTimePeriodStart() bool`

HasTimePeriodStart returns a boolean if a field has been set.

### GetTimePeriodEnd

`func (o *ModelsExchangeTimeseriesItem) GetTimePeriodEnd() time.Time`

GetTimePeriodEnd returns the TimePeriodEnd field if non-nil, zero value otherwise.

### GetTimePeriodEndOk

`func (o *ModelsExchangeTimeseriesItem) GetTimePeriodEndOk() (*time.Time, bool)`

GetTimePeriodEndOk returns a tuple with the TimePeriodEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimePeriodEnd

`func (o *ModelsExchangeTimeseriesItem) SetTimePeriodEnd(v time.Time)`

SetTimePeriodEnd sets TimePeriodEnd field to given value.

### HasTimePeriodEnd

`func (o *ModelsExchangeTimeseriesItem) HasTimePeriodEnd() bool`

HasTimePeriodEnd returns a boolean if a field has been set.

### GetTimeOpen

`func (o *ModelsExchangeTimeseriesItem) GetTimeOpen() time.Time`

GetTimeOpen returns the TimeOpen field if non-nil, zero value otherwise.

### GetTimeOpenOk

`func (o *ModelsExchangeTimeseriesItem) GetTimeOpenOk() (*time.Time, bool)`

GetTimeOpenOk returns a tuple with the TimeOpen field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeOpen

`func (o *ModelsExchangeTimeseriesItem) SetTimeOpen(v time.Time)`

SetTimeOpen sets TimeOpen field to given value.

### HasTimeOpen

`func (o *ModelsExchangeTimeseriesItem) HasTimeOpen() bool`

HasTimeOpen returns a boolean if a field has been set.

### SetTimeOpenNil

`func (o *ModelsExchangeTimeseriesItem) SetTimeOpenNil(b bool)`

 SetTimeOpenNil sets the value for TimeOpen to be an explicit nil

### UnsetTimeOpen
`func (o *ModelsExchangeTimeseriesItem) UnsetTimeOpen()`

UnsetTimeOpen ensures that no value is present for TimeOpen, not even an explicit nil
### GetTimeClose

`func (o *ModelsExchangeTimeseriesItem) GetTimeClose() time.Time`

GetTimeClose returns the TimeClose field if non-nil, zero value otherwise.

### GetTimeCloseOk

`func (o *ModelsExchangeTimeseriesItem) GetTimeCloseOk() (*time.Time, bool)`

GetTimeCloseOk returns a tuple with the TimeClose field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeClose

`func (o *ModelsExchangeTimeseriesItem) SetTimeClose(v time.Time)`

SetTimeClose sets TimeClose field to given value.

### HasTimeClose

`func (o *ModelsExchangeTimeseriesItem) HasTimeClose() bool`

HasTimeClose returns a boolean if a field has been set.

### SetTimeCloseNil

`func (o *ModelsExchangeTimeseriesItem) SetTimeCloseNil(b bool)`

 SetTimeCloseNil sets the value for TimeClose to be an explicit nil

### UnsetTimeClose
`func (o *ModelsExchangeTimeseriesItem) UnsetTimeClose()`

UnsetTimeClose ensures that no value is present for TimeClose, not even an explicit nil
### GetPriceOpen

`func (o *ModelsExchangeTimeseriesItem) GetPriceOpen() float64`

GetPriceOpen returns the PriceOpen field if non-nil, zero value otherwise.

### GetPriceOpenOk

`func (o *ModelsExchangeTimeseriesItem) GetPriceOpenOk() (*float64, bool)`

GetPriceOpenOk returns a tuple with the PriceOpen field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceOpen

`func (o *ModelsExchangeTimeseriesItem) SetPriceOpen(v float64)`

SetPriceOpen sets PriceOpen field to given value.

### HasPriceOpen

`func (o *ModelsExchangeTimeseriesItem) HasPriceOpen() bool`

HasPriceOpen returns a boolean if a field has been set.

### SetPriceOpenNil

`func (o *ModelsExchangeTimeseriesItem) SetPriceOpenNil(b bool)`

 SetPriceOpenNil sets the value for PriceOpen to be an explicit nil

### UnsetPriceOpen
`func (o *ModelsExchangeTimeseriesItem) UnsetPriceOpen()`

UnsetPriceOpen ensures that no value is present for PriceOpen, not even an explicit nil
### GetPriceHigh

`func (o *ModelsExchangeTimeseriesItem) GetPriceHigh() float64`

GetPriceHigh returns the PriceHigh field if non-nil, zero value otherwise.

### GetPriceHighOk

`func (o *ModelsExchangeTimeseriesItem) GetPriceHighOk() (*float64, bool)`

GetPriceHighOk returns a tuple with the PriceHigh field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceHigh

`func (o *ModelsExchangeTimeseriesItem) SetPriceHigh(v float64)`

SetPriceHigh sets PriceHigh field to given value.

### HasPriceHigh

`func (o *ModelsExchangeTimeseriesItem) HasPriceHigh() bool`

HasPriceHigh returns a boolean if a field has been set.

### SetPriceHighNil

`func (o *ModelsExchangeTimeseriesItem) SetPriceHighNil(b bool)`

 SetPriceHighNil sets the value for PriceHigh to be an explicit nil

### UnsetPriceHigh
`func (o *ModelsExchangeTimeseriesItem) UnsetPriceHigh()`

UnsetPriceHigh ensures that no value is present for PriceHigh, not even an explicit nil
### GetPriceLow

`func (o *ModelsExchangeTimeseriesItem) GetPriceLow() float64`

GetPriceLow returns the PriceLow field if non-nil, zero value otherwise.

### GetPriceLowOk

`func (o *ModelsExchangeTimeseriesItem) GetPriceLowOk() (*float64, bool)`

GetPriceLowOk returns a tuple with the PriceLow field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceLow

`func (o *ModelsExchangeTimeseriesItem) SetPriceLow(v float64)`

SetPriceLow sets PriceLow field to given value.

### HasPriceLow

`func (o *ModelsExchangeTimeseriesItem) HasPriceLow() bool`

HasPriceLow returns a boolean if a field has been set.

### SetPriceLowNil

`func (o *ModelsExchangeTimeseriesItem) SetPriceLowNil(b bool)`

 SetPriceLowNil sets the value for PriceLow to be an explicit nil

### UnsetPriceLow
`func (o *ModelsExchangeTimeseriesItem) UnsetPriceLow()`

UnsetPriceLow ensures that no value is present for PriceLow, not even an explicit nil
### GetPriceClose

`func (o *ModelsExchangeTimeseriesItem) GetPriceClose() float64`

GetPriceClose returns the PriceClose field if non-nil, zero value otherwise.

### GetPriceCloseOk

`func (o *ModelsExchangeTimeseriesItem) GetPriceCloseOk() (*float64, bool)`

GetPriceCloseOk returns a tuple with the PriceClose field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceClose

`func (o *ModelsExchangeTimeseriesItem) SetPriceClose(v float64)`

SetPriceClose sets PriceClose field to given value.

### HasPriceClose

`func (o *ModelsExchangeTimeseriesItem) HasPriceClose() bool`

HasPriceClose returns a boolean if a field has been set.

### SetPriceCloseNil

`func (o *ModelsExchangeTimeseriesItem) SetPriceCloseNil(b bool)`

 SetPriceCloseNil sets the value for PriceClose to be an explicit nil

### UnsetPriceClose
`func (o *ModelsExchangeTimeseriesItem) UnsetPriceClose()`

UnsetPriceClose ensures that no value is present for PriceClose, not even an explicit nil
### GetVolumeTraded

`func (o *ModelsExchangeTimeseriesItem) GetVolumeTraded() float64`

GetVolumeTraded returns the VolumeTraded field if non-nil, zero value otherwise.

### GetVolumeTradedOk

`func (o *ModelsExchangeTimeseriesItem) GetVolumeTradedOk() (*float64, bool)`

GetVolumeTradedOk returns a tuple with the VolumeTraded field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeTraded

`func (o *ModelsExchangeTimeseriesItem) SetVolumeTraded(v float64)`

SetVolumeTraded sets VolumeTraded field to given value.

### HasVolumeTraded

`func (o *ModelsExchangeTimeseriesItem) HasVolumeTraded() bool`

HasVolumeTraded returns a boolean if a field has been set.

### GetTradesCount

`func (o *ModelsExchangeTimeseriesItem) GetTradesCount() int64`

GetTradesCount returns the TradesCount field if non-nil, zero value otherwise.

### GetTradesCountOk

`func (o *ModelsExchangeTimeseriesItem) GetTradesCountOk() (*int64, bool)`

GetTradesCountOk returns a tuple with the TradesCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTradesCount

`func (o *ModelsExchangeTimeseriesItem) SetTradesCount(v int64)`

SetTradesCount sets TradesCount field to given value.

### HasTradesCount

`func (o *ModelsExchangeTimeseriesItem) HasTradesCount() bool`

HasTradesCount returns a boolean if a field has been set.

### GetSymbolIdExchange

`func (o *ModelsExchangeTimeseriesItem) GetSymbolIdExchange() string`

GetSymbolIdExchange returns the SymbolIdExchange field if non-nil, zero value otherwise.

### GetSymbolIdExchangeOk

`func (o *ModelsExchangeTimeseriesItem) GetSymbolIdExchangeOk() (*string, bool)`

GetSymbolIdExchangeOk returns a tuple with the SymbolIdExchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolIdExchange

`func (o *ModelsExchangeTimeseriesItem) SetSymbolIdExchange(v string)`

SetSymbolIdExchange sets SymbolIdExchange field to given value.

### HasSymbolIdExchange

`func (o *ModelsExchangeTimeseriesItem) HasSymbolIdExchange() bool`

HasSymbolIdExchange returns a boolean if a field has been set.

### SetSymbolIdExchangeNil

`func (o *ModelsExchangeTimeseriesItem) SetSymbolIdExchangeNil(b bool)`

 SetSymbolIdExchangeNil sets the value for SymbolIdExchange to be an explicit nil

### UnsetSymbolIdExchange
`func (o *ModelsExchangeTimeseriesItem) UnsetSymbolIdExchange()`

UnsetSymbolIdExchange ensures that no value is present for SymbolIdExchange, not even an explicit nil
### GetSymbolIdCoinapi

`func (o *ModelsExchangeTimeseriesItem) GetSymbolIdCoinapi() string`

GetSymbolIdCoinapi returns the SymbolIdCoinapi field if non-nil, zero value otherwise.

### GetSymbolIdCoinapiOk

`func (o *ModelsExchangeTimeseriesItem) GetSymbolIdCoinapiOk() (*string, bool)`

GetSymbolIdCoinapiOk returns a tuple with the SymbolIdCoinapi field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolIdCoinapi

`func (o *ModelsExchangeTimeseriesItem) SetSymbolIdCoinapi(v string)`

SetSymbolIdCoinapi sets SymbolIdCoinapi field to given value.

### HasSymbolIdCoinapi

`func (o *ModelsExchangeTimeseriesItem) HasSymbolIdCoinapi() bool`

HasSymbolIdCoinapi returns a boolean if a field has been set.

### SetSymbolIdCoinapiNil

`func (o *ModelsExchangeTimeseriesItem) SetSymbolIdCoinapiNil(b bool)`

 SetSymbolIdCoinapiNil sets the value for SymbolIdCoinapi to be an explicit nil

### UnsetSymbolIdCoinapi
`func (o *ModelsExchangeTimeseriesItem) UnsetSymbolIdCoinapi()`

UnsetSymbolIdCoinapi ensures that no value is present for SymbolIdCoinapi, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


