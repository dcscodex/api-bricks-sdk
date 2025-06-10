# V1TimeseriesItem

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

## Methods

### NewV1TimeseriesItem

`func NewV1TimeseriesItem() *V1TimeseriesItem`

NewV1TimeseriesItem instantiates a new V1TimeseriesItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewV1TimeseriesItemWithDefaults

`func NewV1TimeseriesItemWithDefaults() *V1TimeseriesItem`

NewV1TimeseriesItemWithDefaults instantiates a new V1TimeseriesItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTimePeriodStart

`func (o *V1TimeseriesItem) GetTimePeriodStart() time.Time`

GetTimePeriodStart returns the TimePeriodStart field if non-nil, zero value otherwise.

### GetTimePeriodStartOk

`func (o *V1TimeseriesItem) GetTimePeriodStartOk() (*time.Time, bool)`

GetTimePeriodStartOk returns a tuple with the TimePeriodStart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimePeriodStart

`func (o *V1TimeseriesItem) SetTimePeriodStart(v time.Time)`

SetTimePeriodStart sets TimePeriodStart field to given value.

### HasTimePeriodStart

`func (o *V1TimeseriesItem) HasTimePeriodStart() bool`

HasTimePeriodStart returns a boolean if a field has been set.

### GetTimePeriodEnd

`func (o *V1TimeseriesItem) GetTimePeriodEnd() time.Time`

GetTimePeriodEnd returns the TimePeriodEnd field if non-nil, zero value otherwise.

### GetTimePeriodEndOk

`func (o *V1TimeseriesItem) GetTimePeriodEndOk() (*time.Time, bool)`

GetTimePeriodEndOk returns a tuple with the TimePeriodEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimePeriodEnd

`func (o *V1TimeseriesItem) SetTimePeriodEnd(v time.Time)`

SetTimePeriodEnd sets TimePeriodEnd field to given value.

### HasTimePeriodEnd

`func (o *V1TimeseriesItem) HasTimePeriodEnd() bool`

HasTimePeriodEnd returns a boolean if a field has been set.

### GetTimeOpen

`func (o *V1TimeseriesItem) GetTimeOpen() time.Time`

GetTimeOpen returns the TimeOpen field if non-nil, zero value otherwise.

### GetTimeOpenOk

`func (o *V1TimeseriesItem) GetTimeOpenOk() (*time.Time, bool)`

GetTimeOpenOk returns a tuple with the TimeOpen field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeOpen

`func (o *V1TimeseriesItem) SetTimeOpen(v time.Time)`

SetTimeOpen sets TimeOpen field to given value.

### HasTimeOpen

`func (o *V1TimeseriesItem) HasTimeOpen() bool`

HasTimeOpen returns a boolean if a field has been set.

### SetTimeOpenNil

`func (o *V1TimeseriesItem) SetTimeOpenNil(b bool)`

 SetTimeOpenNil sets the value for TimeOpen to be an explicit nil

### UnsetTimeOpen
`func (o *V1TimeseriesItem) UnsetTimeOpen()`

UnsetTimeOpen ensures that no value is present for TimeOpen, not even an explicit nil
### GetTimeClose

`func (o *V1TimeseriesItem) GetTimeClose() time.Time`

GetTimeClose returns the TimeClose field if non-nil, zero value otherwise.

### GetTimeCloseOk

`func (o *V1TimeseriesItem) GetTimeCloseOk() (*time.Time, bool)`

GetTimeCloseOk returns a tuple with the TimeClose field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeClose

`func (o *V1TimeseriesItem) SetTimeClose(v time.Time)`

SetTimeClose sets TimeClose field to given value.

### HasTimeClose

`func (o *V1TimeseriesItem) HasTimeClose() bool`

HasTimeClose returns a boolean if a field has been set.

### SetTimeCloseNil

`func (o *V1TimeseriesItem) SetTimeCloseNil(b bool)`

 SetTimeCloseNil sets the value for TimeClose to be an explicit nil

### UnsetTimeClose
`func (o *V1TimeseriesItem) UnsetTimeClose()`

UnsetTimeClose ensures that no value is present for TimeClose, not even an explicit nil
### GetPriceOpen

`func (o *V1TimeseriesItem) GetPriceOpen() float64`

GetPriceOpen returns the PriceOpen field if non-nil, zero value otherwise.

### GetPriceOpenOk

`func (o *V1TimeseriesItem) GetPriceOpenOk() (*float64, bool)`

GetPriceOpenOk returns a tuple with the PriceOpen field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceOpen

`func (o *V1TimeseriesItem) SetPriceOpen(v float64)`

SetPriceOpen sets PriceOpen field to given value.

### HasPriceOpen

`func (o *V1TimeseriesItem) HasPriceOpen() bool`

HasPriceOpen returns a boolean if a field has been set.

### SetPriceOpenNil

`func (o *V1TimeseriesItem) SetPriceOpenNil(b bool)`

 SetPriceOpenNil sets the value for PriceOpen to be an explicit nil

### UnsetPriceOpen
`func (o *V1TimeseriesItem) UnsetPriceOpen()`

UnsetPriceOpen ensures that no value is present for PriceOpen, not even an explicit nil
### GetPriceHigh

`func (o *V1TimeseriesItem) GetPriceHigh() float64`

GetPriceHigh returns the PriceHigh field if non-nil, zero value otherwise.

### GetPriceHighOk

`func (o *V1TimeseriesItem) GetPriceHighOk() (*float64, bool)`

GetPriceHighOk returns a tuple with the PriceHigh field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceHigh

`func (o *V1TimeseriesItem) SetPriceHigh(v float64)`

SetPriceHigh sets PriceHigh field to given value.

### HasPriceHigh

`func (o *V1TimeseriesItem) HasPriceHigh() bool`

HasPriceHigh returns a boolean if a field has been set.

### SetPriceHighNil

`func (o *V1TimeseriesItem) SetPriceHighNil(b bool)`

 SetPriceHighNil sets the value for PriceHigh to be an explicit nil

### UnsetPriceHigh
`func (o *V1TimeseriesItem) UnsetPriceHigh()`

UnsetPriceHigh ensures that no value is present for PriceHigh, not even an explicit nil
### GetPriceLow

`func (o *V1TimeseriesItem) GetPriceLow() float64`

GetPriceLow returns the PriceLow field if non-nil, zero value otherwise.

### GetPriceLowOk

`func (o *V1TimeseriesItem) GetPriceLowOk() (*float64, bool)`

GetPriceLowOk returns a tuple with the PriceLow field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceLow

`func (o *V1TimeseriesItem) SetPriceLow(v float64)`

SetPriceLow sets PriceLow field to given value.

### HasPriceLow

`func (o *V1TimeseriesItem) HasPriceLow() bool`

HasPriceLow returns a boolean if a field has been set.

### SetPriceLowNil

`func (o *V1TimeseriesItem) SetPriceLowNil(b bool)`

 SetPriceLowNil sets the value for PriceLow to be an explicit nil

### UnsetPriceLow
`func (o *V1TimeseriesItem) UnsetPriceLow()`

UnsetPriceLow ensures that no value is present for PriceLow, not even an explicit nil
### GetPriceClose

`func (o *V1TimeseriesItem) GetPriceClose() float64`

GetPriceClose returns the PriceClose field if non-nil, zero value otherwise.

### GetPriceCloseOk

`func (o *V1TimeseriesItem) GetPriceCloseOk() (*float64, bool)`

GetPriceCloseOk returns a tuple with the PriceClose field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceClose

`func (o *V1TimeseriesItem) SetPriceClose(v float64)`

SetPriceClose sets PriceClose field to given value.

### HasPriceClose

`func (o *V1TimeseriesItem) HasPriceClose() bool`

HasPriceClose returns a boolean if a field has been set.

### SetPriceCloseNil

`func (o *V1TimeseriesItem) SetPriceCloseNil(b bool)`

 SetPriceCloseNil sets the value for PriceClose to be an explicit nil

### UnsetPriceClose
`func (o *V1TimeseriesItem) UnsetPriceClose()`

UnsetPriceClose ensures that no value is present for PriceClose, not even an explicit nil
### GetVolumeTraded

`func (o *V1TimeseriesItem) GetVolumeTraded() float64`

GetVolumeTraded returns the VolumeTraded field if non-nil, zero value otherwise.

### GetVolumeTradedOk

`func (o *V1TimeseriesItem) GetVolumeTradedOk() (*float64, bool)`

GetVolumeTradedOk returns a tuple with the VolumeTraded field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeTraded

`func (o *V1TimeseriesItem) SetVolumeTraded(v float64)`

SetVolumeTraded sets VolumeTraded field to given value.

### HasVolumeTraded

`func (o *V1TimeseriesItem) HasVolumeTraded() bool`

HasVolumeTraded returns a boolean if a field has been set.

### GetTradesCount

`func (o *V1TimeseriesItem) GetTradesCount() int64`

GetTradesCount returns the TradesCount field if non-nil, zero value otherwise.

### GetTradesCountOk

`func (o *V1TimeseriesItem) GetTradesCountOk() (*int64, bool)`

GetTradesCountOk returns a tuple with the TradesCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTradesCount

`func (o *V1TimeseriesItem) SetTradesCount(v int64)`

SetTradesCount sets TradesCount field to given value.

### HasTradesCount

`func (o *V1TimeseriesItem) HasTradesCount() bool`

HasTradesCount returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


