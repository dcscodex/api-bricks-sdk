# OHLCVExchangeTimeseriesItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TimePeriodStart** | Pointer to **time.Time** | Gets or sets the start time of the time period. | [optional] 
**TimePeriodEnd** | Pointer to **time.Time** | Gets or sets the end time of the time period. | [optional] 
**TimeOpen** | Pointer to **NullableTime** | Gets or sets the time when the price opened. | [optional] 
**TimeClose** | Pointer to **NullableTime** | Gets or sets the time when the price closed. | [optional] 
**PriceOpen** | Pointer to **NullableFloat64** | Gets or sets the opening price. | [optional] 
**PriceHigh** | Pointer to **NullableFloat64** | Gets or sets the highest price during the time period. | [optional] 
**PriceLow** | Pointer to **NullableFloat64** | Gets or sets the lowest price during the time period. | [optional] 
**PriceClose** | Pointer to **NullableFloat64** | Gets or sets the closing price. | [optional] 
**VolumeTraded** | Pointer to **float64** | Gets or sets the total volume traded during the time period. | [optional] 
**TradesCount** | Pointer to **int64** | Gets or sets the number of trades executed during the time period. | [optional] 
**SymbolIdExchange** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewOHLCVExchangeTimeseriesItem

`func NewOHLCVExchangeTimeseriesItem() *OHLCVExchangeTimeseriesItem`

NewOHLCVExchangeTimeseriesItem instantiates a new OHLCVExchangeTimeseriesItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOHLCVExchangeTimeseriesItemWithDefaults

`func NewOHLCVExchangeTimeseriesItemWithDefaults() *OHLCVExchangeTimeseriesItem`

NewOHLCVExchangeTimeseriesItemWithDefaults instantiates a new OHLCVExchangeTimeseriesItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTimePeriodStart

`func (o *OHLCVExchangeTimeseriesItem) GetTimePeriodStart() time.Time`

GetTimePeriodStart returns the TimePeriodStart field if non-nil, zero value otherwise.

### GetTimePeriodStartOk

`func (o *OHLCVExchangeTimeseriesItem) GetTimePeriodStartOk() (*time.Time, bool)`

GetTimePeriodStartOk returns a tuple with the TimePeriodStart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimePeriodStart

`func (o *OHLCVExchangeTimeseriesItem) SetTimePeriodStart(v time.Time)`

SetTimePeriodStart sets TimePeriodStart field to given value.

### HasTimePeriodStart

`func (o *OHLCVExchangeTimeseriesItem) HasTimePeriodStart() bool`

HasTimePeriodStart returns a boolean if a field has been set.

### GetTimePeriodEnd

`func (o *OHLCVExchangeTimeseriesItem) GetTimePeriodEnd() time.Time`

GetTimePeriodEnd returns the TimePeriodEnd field if non-nil, zero value otherwise.

### GetTimePeriodEndOk

`func (o *OHLCVExchangeTimeseriesItem) GetTimePeriodEndOk() (*time.Time, bool)`

GetTimePeriodEndOk returns a tuple with the TimePeriodEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimePeriodEnd

`func (o *OHLCVExchangeTimeseriesItem) SetTimePeriodEnd(v time.Time)`

SetTimePeriodEnd sets TimePeriodEnd field to given value.

### HasTimePeriodEnd

`func (o *OHLCVExchangeTimeseriesItem) HasTimePeriodEnd() bool`

HasTimePeriodEnd returns a boolean if a field has been set.

### GetTimeOpen

`func (o *OHLCVExchangeTimeseriesItem) GetTimeOpen() time.Time`

GetTimeOpen returns the TimeOpen field if non-nil, zero value otherwise.

### GetTimeOpenOk

`func (o *OHLCVExchangeTimeseriesItem) GetTimeOpenOk() (*time.Time, bool)`

GetTimeOpenOk returns a tuple with the TimeOpen field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeOpen

`func (o *OHLCVExchangeTimeseriesItem) SetTimeOpen(v time.Time)`

SetTimeOpen sets TimeOpen field to given value.

### HasTimeOpen

`func (o *OHLCVExchangeTimeseriesItem) HasTimeOpen() bool`

HasTimeOpen returns a boolean if a field has been set.

### SetTimeOpenNil

`func (o *OHLCVExchangeTimeseriesItem) SetTimeOpenNil(b bool)`

 SetTimeOpenNil sets the value for TimeOpen to be an explicit nil

### UnsetTimeOpen
`func (o *OHLCVExchangeTimeseriesItem) UnsetTimeOpen()`

UnsetTimeOpen ensures that no value is present for TimeOpen, not even an explicit nil
### GetTimeClose

`func (o *OHLCVExchangeTimeseriesItem) GetTimeClose() time.Time`

GetTimeClose returns the TimeClose field if non-nil, zero value otherwise.

### GetTimeCloseOk

`func (o *OHLCVExchangeTimeseriesItem) GetTimeCloseOk() (*time.Time, bool)`

GetTimeCloseOk returns a tuple with the TimeClose field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeClose

`func (o *OHLCVExchangeTimeseriesItem) SetTimeClose(v time.Time)`

SetTimeClose sets TimeClose field to given value.

### HasTimeClose

`func (o *OHLCVExchangeTimeseriesItem) HasTimeClose() bool`

HasTimeClose returns a boolean if a field has been set.

### SetTimeCloseNil

`func (o *OHLCVExchangeTimeseriesItem) SetTimeCloseNil(b bool)`

 SetTimeCloseNil sets the value for TimeClose to be an explicit nil

### UnsetTimeClose
`func (o *OHLCVExchangeTimeseriesItem) UnsetTimeClose()`

UnsetTimeClose ensures that no value is present for TimeClose, not even an explicit nil
### GetPriceOpen

`func (o *OHLCVExchangeTimeseriesItem) GetPriceOpen() float64`

GetPriceOpen returns the PriceOpen field if non-nil, zero value otherwise.

### GetPriceOpenOk

`func (o *OHLCVExchangeTimeseriesItem) GetPriceOpenOk() (*float64, bool)`

GetPriceOpenOk returns a tuple with the PriceOpen field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceOpen

`func (o *OHLCVExchangeTimeseriesItem) SetPriceOpen(v float64)`

SetPriceOpen sets PriceOpen field to given value.

### HasPriceOpen

`func (o *OHLCVExchangeTimeseriesItem) HasPriceOpen() bool`

HasPriceOpen returns a boolean if a field has been set.

### SetPriceOpenNil

`func (o *OHLCVExchangeTimeseriesItem) SetPriceOpenNil(b bool)`

 SetPriceOpenNil sets the value for PriceOpen to be an explicit nil

### UnsetPriceOpen
`func (o *OHLCVExchangeTimeseriesItem) UnsetPriceOpen()`

UnsetPriceOpen ensures that no value is present for PriceOpen, not even an explicit nil
### GetPriceHigh

`func (o *OHLCVExchangeTimeseriesItem) GetPriceHigh() float64`

GetPriceHigh returns the PriceHigh field if non-nil, zero value otherwise.

### GetPriceHighOk

`func (o *OHLCVExchangeTimeseriesItem) GetPriceHighOk() (*float64, bool)`

GetPriceHighOk returns a tuple with the PriceHigh field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceHigh

`func (o *OHLCVExchangeTimeseriesItem) SetPriceHigh(v float64)`

SetPriceHigh sets PriceHigh field to given value.

### HasPriceHigh

`func (o *OHLCVExchangeTimeseriesItem) HasPriceHigh() bool`

HasPriceHigh returns a boolean if a field has been set.

### SetPriceHighNil

`func (o *OHLCVExchangeTimeseriesItem) SetPriceHighNil(b bool)`

 SetPriceHighNil sets the value for PriceHigh to be an explicit nil

### UnsetPriceHigh
`func (o *OHLCVExchangeTimeseriesItem) UnsetPriceHigh()`

UnsetPriceHigh ensures that no value is present for PriceHigh, not even an explicit nil
### GetPriceLow

`func (o *OHLCVExchangeTimeseriesItem) GetPriceLow() float64`

GetPriceLow returns the PriceLow field if non-nil, zero value otherwise.

### GetPriceLowOk

`func (o *OHLCVExchangeTimeseriesItem) GetPriceLowOk() (*float64, bool)`

GetPriceLowOk returns a tuple with the PriceLow field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceLow

`func (o *OHLCVExchangeTimeseriesItem) SetPriceLow(v float64)`

SetPriceLow sets PriceLow field to given value.

### HasPriceLow

`func (o *OHLCVExchangeTimeseriesItem) HasPriceLow() bool`

HasPriceLow returns a boolean if a field has been set.

### SetPriceLowNil

`func (o *OHLCVExchangeTimeseriesItem) SetPriceLowNil(b bool)`

 SetPriceLowNil sets the value for PriceLow to be an explicit nil

### UnsetPriceLow
`func (o *OHLCVExchangeTimeseriesItem) UnsetPriceLow()`

UnsetPriceLow ensures that no value is present for PriceLow, not even an explicit nil
### GetPriceClose

`func (o *OHLCVExchangeTimeseriesItem) GetPriceClose() float64`

GetPriceClose returns the PriceClose field if non-nil, zero value otherwise.

### GetPriceCloseOk

`func (o *OHLCVExchangeTimeseriesItem) GetPriceCloseOk() (*float64, bool)`

GetPriceCloseOk returns a tuple with the PriceClose field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceClose

`func (o *OHLCVExchangeTimeseriesItem) SetPriceClose(v float64)`

SetPriceClose sets PriceClose field to given value.

### HasPriceClose

`func (o *OHLCVExchangeTimeseriesItem) HasPriceClose() bool`

HasPriceClose returns a boolean if a field has been set.

### SetPriceCloseNil

`func (o *OHLCVExchangeTimeseriesItem) SetPriceCloseNil(b bool)`

 SetPriceCloseNil sets the value for PriceClose to be an explicit nil

### UnsetPriceClose
`func (o *OHLCVExchangeTimeseriesItem) UnsetPriceClose()`

UnsetPriceClose ensures that no value is present for PriceClose, not even an explicit nil
### GetVolumeTraded

`func (o *OHLCVExchangeTimeseriesItem) GetVolumeTraded() float64`

GetVolumeTraded returns the VolumeTraded field if non-nil, zero value otherwise.

### GetVolumeTradedOk

`func (o *OHLCVExchangeTimeseriesItem) GetVolumeTradedOk() (*float64, bool)`

GetVolumeTradedOk returns a tuple with the VolumeTraded field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeTraded

`func (o *OHLCVExchangeTimeseriesItem) SetVolumeTraded(v float64)`

SetVolumeTraded sets VolumeTraded field to given value.

### HasVolumeTraded

`func (o *OHLCVExchangeTimeseriesItem) HasVolumeTraded() bool`

HasVolumeTraded returns a boolean if a field has been set.

### GetTradesCount

`func (o *OHLCVExchangeTimeseriesItem) GetTradesCount() int64`

GetTradesCount returns the TradesCount field if non-nil, zero value otherwise.

### GetTradesCountOk

`func (o *OHLCVExchangeTimeseriesItem) GetTradesCountOk() (*int64, bool)`

GetTradesCountOk returns a tuple with the TradesCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTradesCount

`func (o *OHLCVExchangeTimeseriesItem) SetTradesCount(v int64)`

SetTradesCount sets TradesCount field to given value.

### HasTradesCount

`func (o *OHLCVExchangeTimeseriesItem) HasTradesCount() bool`

HasTradesCount returns a boolean if a field has been set.

### GetSymbolIdExchange

`func (o *OHLCVExchangeTimeseriesItem) GetSymbolIdExchange() string`

GetSymbolIdExchange returns the SymbolIdExchange field if non-nil, zero value otherwise.

### GetSymbolIdExchangeOk

`func (o *OHLCVExchangeTimeseriesItem) GetSymbolIdExchangeOk() (*string, bool)`

GetSymbolIdExchangeOk returns a tuple with the SymbolIdExchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolIdExchange

`func (o *OHLCVExchangeTimeseriesItem) SetSymbolIdExchange(v string)`

SetSymbolIdExchange sets SymbolIdExchange field to given value.

### HasSymbolIdExchange

`func (o *OHLCVExchangeTimeseriesItem) HasSymbolIdExchange() bool`

HasSymbolIdExchange returns a boolean if a field has been set.

### SetSymbolIdExchangeNil

`func (o *OHLCVExchangeTimeseriesItem) SetSymbolIdExchangeNil(b bool)`

 SetSymbolIdExchangeNil sets the value for SymbolIdExchange to be an explicit nil

### UnsetSymbolIdExchange
`func (o *OHLCVExchangeTimeseriesItem) UnsetSymbolIdExchange()`

UnsetSymbolIdExchange ensures that no value is present for SymbolIdExchange, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


