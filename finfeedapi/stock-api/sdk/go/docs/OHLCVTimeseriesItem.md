# OHLCVTimeseriesItem

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

## Methods

### NewOHLCVTimeseriesItem

`func NewOHLCVTimeseriesItem() *OHLCVTimeseriesItem`

NewOHLCVTimeseriesItem instantiates a new OHLCVTimeseriesItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOHLCVTimeseriesItemWithDefaults

`func NewOHLCVTimeseriesItemWithDefaults() *OHLCVTimeseriesItem`

NewOHLCVTimeseriesItemWithDefaults instantiates a new OHLCVTimeseriesItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTimePeriodStart

`func (o *OHLCVTimeseriesItem) GetTimePeriodStart() time.Time`

GetTimePeriodStart returns the TimePeriodStart field if non-nil, zero value otherwise.

### GetTimePeriodStartOk

`func (o *OHLCVTimeseriesItem) GetTimePeriodStartOk() (*time.Time, bool)`

GetTimePeriodStartOk returns a tuple with the TimePeriodStart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimePeriodStart

`func (o *OHLCVTimeseriesItem) SetTimePeriodStart(v time.Time)`

SetTimePeriodStart sets TimePeriodStart field to given value.

### HasTimePeriodStart

`func (o *OHLCVTimeseriesItem) HasTimePeriodStart() bool`

HasTimePeriodStart returns a boolean if a field has been set.

### GetTimePeriodEnd

`func (o *OHLCVTimeseriesItem) GetTimePeriodEnd() time.Time`

GetTimePeriodEnd returns the TimePeriodEnd field if non-nil, zero value otherwise.

### GetTimePeriodEndOk

`func (o *OHLCVTimeseriesItem) GetTimePeriodEndOk() (*time.Time, bool)`

GetTimePeriodEndOk returns a tuple with the TimePeriodEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimePeriodEnd

`func (o *OHLCVTimeseriesItem) SetTimePeriodEnd(v time.Time)`

SetTimePeriodEnd sets TimePeriodEnd field to given value.

### HasTimePeriodEnd

`func (o *OHLCVTimeseriesItem) HasTimePeriodEnd() bool`

HasTimePeriodEnd returns a boolean if a field has been set.

### GetTimeOpen

`func (o *OHLCVTimeseriesItem) GetTimeOpen() time.Time`

GetTimeOpen returns the TimeOpen field if non-nil, zero value otherwise.

### GetTimeOpenOk

`func (o *OHLCVTimeseriesItem) GetTimeOpenOk() (*time.Time, bool)`

GetTimeOpenOk returns a tuple with the TimeOpen field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeOpen

`func (o *OHLCVTimeseriesItem) SetTimeOpen(v time.Time)`

SetTimeOpen sets TimeOpen field to given value.

### HasTimeOpen

`func (o *OHLCVTimeseriesItem) HasTimeOpen() bool`

HasTimeOpen returns a boolean if a field has been set.

### SetTimeOpenNil

`func (o *OHLCVTimeseriesItem) SetTimeOpenNil(b bool)`

 SetTimeOpenNil sets the value for TimeOpen to be an explicit nil

### UnsetTimeOpen
`func (o *OHLCVTimeseriesItem) UnsetTimeOpen()`

UnsetTimeOpen ensures that no value is present for TimeOpen, not even an explicit nil
### GetTimeClose

`func (o *OHLCVTimeseriesItem) GetTimeClose() time.Time`

GetTimeClose returns the TimeClose field if non-nil, zero value otherwise.

### GetTimeCloseOk

`func (o *OHLCVTimeseriesItem) GetTimeCloseOk() (*time.Time, bool)`

GetTimeCloseOk returns a tuple with the TimeClose field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeClose

`func (o *OHLCVTimeseriesItem) SetTimeClose(v time.Time)`

SetTimeClose sets TimeClose field to given value.

### HasTimeClose

`func (o *OHLCVTimeseriesItem) HasTimeClose() bool`

HasTimeClose returns a boolean if a field has been set.

### SetTimeCloseNil

`func (o *OHLCVTimeseriesItem) SetTimeCloseNil(b bool)`

 SetTimeCloseNil sets the value for TimeClose to be an explicit nil

### UnsetTimeClose
`func (o *OHLCVTimeseriesItem) UnsetTimeClose()`

UnsetTimeClose ensures that no value is present for TimeClose, not even an explicit nil
### GetPriceOpen

`func (o *OHLCVTimeseriesItem) GetPriceOpen() float64`

GetPriceOpen returns the PriceOpen field if non-nil, zero value otherwise.

### GetPriceOpenOk

`func (o *OHLCVTimeseriesItem) GetPriceOpenOk() (*float64, bool)`

GetPriceOpenOk returns a tuple with the PriceOpen field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceOpen

`func (o *OHLCVTimeseriesItem) SetPriceOpen(v float64)`

SetPriceOpen sets PriceOpen field to given value.

### HasPriceOpen

`func (o *OHLCVTimeseriesItem) HasPriceOpen() bool`

HasPriceOpen returns a boolean if a field has been set.

### SetPriceOpenNil

`func (o *OHLCVTimeseriesItem) SetPriceOpenNil(b bool)`

 SetPriceOpenNil sets the value for PriceOpen to be an explicit nil

### UnsetPriceOpen
`func (o *OHLCVTimeseriesItem) UnsetPriceOpen()`

UnsetPriceOpen ensures that no value is present for PriceOpen, not even an explicit nil
### GetPriceHigh

`func (o *OHLCVTimeseriesItem) GetPriceHigh() float64`

GetPriceHigh returns the PriceHigh field if non-nil, zero value otherwise.

### GetPriceHighOk

`func (o *OHLCVTimeseriesItem) GetPriceHighOk() (*float64, bool)`

GetPriceHighOk returns a tuple with the PriceHigh field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceHigh

`func (o *OHLCVTimeseriesItem) SetPriceHigh(v float64)`

SetPriceHigh sets PriceHigh field to given value.

### HasPriceHigh

`func (o *OHLCVTimeseriesItem) HasPriceHigh() bool`

HasPriceHigh returns a boolean if a field has been set.

### SetPriceHighNil

`func (o *OHLCVTimeseriesItem) SetPriceHighNil(b bool)`

 SetPriceHighNil sets the value for PriceHigh to be an explicit nil

### UnsetPriceHigh
`func (o *OHLCVTimeseriesItem) UnsetPriceHigh()`

UnsetPriceHigh ensures that no value is present for PriceHigh, not even an explicit nil
### GetPriceLow

`func (o *OHLCVTimeseriesItem) GetPriceLow() float64`

GetPriceLow returns the PriceLow field if non-nil, zero value otherwise.

### GetPriceLowOk

`func (o *OHLCVTimeseriesItem) GetPriceLowOk() (*float64, bool)`

GetPriceLowOk returns a tuple with the PriceLow field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceLow

`func (o *OHLCVTimeseriesItem) SetPriceLow(v float64)`

SetPriceLow sets PriceLow field to given value.

### HasPriceLow

`func (o *OHLCVTimeseriesItem) HasPriceLow() bool`

HasPriceLow returns a boolean if a field has been set.

### SetPriceLowNil

`func (o *OHLCVTimeseriesItem) SetPriceLowNil(b bool)`

 SetPriceLowNil sets the value for PriceLow to be an explicit nil

### UnsetPriceLow
`func (o *OHLCVTimeseriesItem) UnsetPriceLow()`

UnsetPriceLow ensures that no value is present for PriceLow, not even an explicit nil
### GetPriceClose

`func (o *OHLCVTimeseriesItem) GetPriceClose() float64`

GetPriceClose returns the PriceClose field if non-nil, zero value otherwise.

### GetPriceCloseOk

`func (o *OHLCVTimeseriesItem) GetPriceCloseOk() (*float64, bool)`

GetPriceCloseOk returns a tuple with the PriceClose field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceClose

`func (o *OHLCVTimeseriesItem) SetPriceClose(v float64)`

SetPriceClose sets PriceClose field to given value.

### HasPriceClose

`func (o *OHLCVTimeseriesItem) HasPriceClose() bool`

HasPriceClose returns a boolean if a field has been set.

### SetPriceCloseNil

`func (o *OHLCVTimeseriesItem) SetPriceCloseNil(b bool)`

 SetPriceCloseNil sets the value for PriceClose to be an explicit nil

### UnsetPriceClose
`func (o *OHLCVTimeseriesItem) UnsetPriceClose()`

UnsetPriceClose ensures that no value is present for PriceClose, not even an explicit nil
### GetVolumeTraded

`func (o *OHLCVTimeseriesItem) GetVolumeTraded() float64`

GetVolumeTraded returns the VolumeTraded field if non-nil, zero value otherwise.

### GetVolumeTradedOk

`func (o *OHLCVTimeseriesItem) GetVolumeTradedOk() (*float64, bool)`

GetVolumeTradedOk returns a tuple with the VolumeTraded field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeTraded

`func (o *OHLCVTimeseriesItem) SetVolumeTraded(v float64)`

SetVolumeTraded sets VolumeTraded field to given value.

### HasVolumeTraded

`func (o *OHLCVTimeseriesItem) HasVolumeTraded() bool`

HasVolumeTraded returns a boolean if a field has been set.

### GetTradesCount

`func (o *OHLCVTimeseriesItem) GetTradesCount() int64`

GetTradesCount returns the TradesCount field if non-nil, zero value otherwise.

### GetTradesCountOk

`func (o *OHLCVTimeseriesItem) GetTradesCountOk() (*int64, bool)`

GetTradesCountOk returns a tuple with the TradesCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTradesCount

`func (o *OHLCVTimeseriesItem) SetTradesCount(v int64)`

SetTradesCount sets TradesCount field to given value.

### HasTradesCount

`func (o *OHLCVTimeseriesItem) HasTradesCount() bool`

HasTradesCount returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


