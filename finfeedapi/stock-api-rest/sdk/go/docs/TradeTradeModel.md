# TradeTradeModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsTradeBreak** | Pointer to **bool** | Indicates if this record represents a trade break (true) or a trade report (false). | [optional] 
**Symbol** | Pointer to **NullableString** | The stock symbol. | [optional] 
**TimestampNanos** | Pointer to **int64** | Original timestamp in nanoseconds since epoch. | [optional] 
**Timestamp** | Pointer to **time.Time** | Time when the event was recorded as DateTime (UTC). | [optional] 
**Size** | Pointer to **int32** | Trade volume (or break volume) in number of shares. | [optional] 
**Price** | Pointer to **float64** | Trade price (or break price) as decimal. | [optional] 
**TradeId** | Pointer to **int64** | IEX trade identifier (same for report and its corresponding break). | [optional] 
**IsIntermarketSweep** | Pointer to **bool** | Bit 7 (Mask 0x80): Intermarket Sweep Flag. True: Intermarket Sweep Order (\&quot;ISO\&quot;). False: Non-Intermarket Sweep Order. | [optional] 
**IsExtendedHoursTrade** | Pointer to **bool** | Bit 6 (Mask 0x40): Extended Hours Flag. True: Extended Hours Trade (i.e., Form T sale condition). False: Regular Market Session Trade. | [optional] 
**IsOddLotTrade** | Pointer to **bool** | Bit 5 (Mask 0x20): Odd Lot Flag. True: Odd Lot Trade. False: Round or Mixed Lot Trade. | [optional] 
**IsTradeThroughExempt** | Pointer to **bool** | Bit 4 (Mask 0x10): Trade Through Exempt Flag. True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS. False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS. Applied when the taking order was an ISO that traded through a protected quotation, OR the NBBO was crossed at the time of the trade, OR the trade occurred through a self-helped venue&#39;s quotation, OR the trade was a single-price cross. | [optional] 
**IsSinglePriceCrossTrade** | Pointer to **bool** | Bit 3 (Mask 0x08): Single-price Cross Trade Flag. True: Trade resulting from a single-price cross. False: Execution during continuous trading. | [optional] 

## Methods

### NewTradeTradeModel

`func NewTradeTradeModel() *TradeTradeModel`

NewTradeTradeModel instantiates a new TradeTradeModel object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTradeTradeModelWithDefaults

`func NewTradeTradeModelWithDefaults() *TradeTradeModel`

NewTradeTradeModelWithDefaults instantiates a new TradeTradeModel object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetIsTradeBreak

`func (o *TradeTradeModel) GetIsTradeBreak() bool`

GetIsTradeBreak returns the IsTradeBreak field if non-nil, zero value otherwise.

### GetIsTradeBreakOk

`func (o *TradeTradeModel) GetIsTradeBreakOk() (*bool, bool)`

GetIsTradeBreakOk returns a tuple with the IsTradeBreak field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsTradeBreak

`func (o *TradeTradeModel) SetIsTradeBreak(v bool)`

SetIsTradeBreak sets IsTradeBreak field to given value.

### HasIsTradeBreak

`func (o *TradeTradeModel) HasIsTradeBreak() bool`

HasIsTradeBreak returns a boolean if a field has been set.

### GetSymbol

`func (o *TradeTradeModel) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *TradeTradeModel) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *TradeTradeModel) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *TradeTradeModel) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### SetSymbolNil

`func (o *TradeTradeModel) SetSymbolNil(b bool)`

 SetSymbolNil sets the value for Symbol to be an explicit nil

### UnsetSymbol
`func (o *TradeTradeModel) UnsetSymbol()`

UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
### GetTimestampNanos

`func (o *TradeTradeModel) GetTimestampNanos() int64`

GetTimestampNanos returns the TimestampNanos field if non-nil, zero value otherwise.

### GetTimestampNanosOk

`func (o *TradeTradeModel) GetTimestampNanosOk() (*int64, bool)`

GetTimestampNanosOk returns a tuple with the TimestampNanos field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestampNanos

`func (o *TradeTradeModel) SetTimestampNanos(v int64)`

SetTimestampNanos sets TimestampNanos field to given value.

### HasTimestampNanos

`func (o *TradeTradeModel) HasTimestampNanos() bool`

HasTimestampNanos returns a boolean if a field has been set.

### GetTimestamp

`func (o *TradeTradeModel) GetTimestamp() time.Time`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *TradeTradeModel) GetTimestampOk() (*time.Time, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *TradeTradeModel) SetTimestamp(v time.Time)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *TradeTradeModel) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### GetSize

`func (o *TradeTradeModel) GetSize() int32`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *TradeTradeModel) GetSizeOk() (*int32, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *TradeTradeModel) SetSize(v int32)`

SetSize sets Size field to given value.

### HasSize

`func (o *TradeTradeModel) HasSize() bool`

HasSize returns a boolean if a field has been set.

### GetPrice

`func (o *TradeTradeModel) GetPrice() float64`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *TradeTradeModel) GetPriceOk() (*float64, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *TradeTradeModel) SetPrice(v float64)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *TradeTradeModel) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### GetTradeId

`func (o *TradeTradeModel) GetTradeId() int64`

GetTradeId returns the TradeId field if non-nil, zero value otherwise.

### GetTradeIdOk

`func (o *TradeTradeModel) GetTradeIdOk() (*int64, bool)`

GetTradeIdOk returns a tuple with the TradeId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTradeId

`func (o *TradeTradeModel) SetTradeId(v int64)`

SetTradeId sets TradeId field to given value.

### HasTradeId

`func (o *TradeTradeModel) HasTradeId() bool`

HasTradeId returns a boolean if a field has been set.

### GetIsIntermarketSweep

`func (o *TradeTradeModel) GetIsIntermarketSweep() bool`

GetIsIntermarketSweep returns the IsIntermarketSweep field if non-nil, zero value otherwise.

### GetIsIntermarketSweepOk

`func (o *TradeTradeModel) GetIsIntermarketSweepOk() (*bool, bool)`

GetIsIntermarketSweepOk returns a tuple with the IsIntermarketSweep field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsIntermarketSweep

`func (o *TradeTradeModel) SetIsIntermarketSweep(v bool)`

SetIsIntermarketSweep sets IsIntermarketSweep field to given value.

### HasIsIntermarketSweep

`func (o *TradeTradeModel) HasIsIntermarketSweep() bool`

HasIsIntermarketSweep returns a boolean if a field has been set.

### GetIsExtendedHoursTrade

`func (o *TradeTradeModel) GetIsExtendedHoursTrade() bool`

GetIsExtendedHoursTrade returns the IsExtendedHoursTrade field if non-nil, zero value otherwise.

### GetIsExtendedHoursTradeOk

`func (o *TradeTradeModel) GetIsExtendedHoursTradeOk() (*bool, bool)`

GetIsExtendedHoursTradeOk returns a tuple with the IsExtendedHoursTrade field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsExtendedHoursTrade

`func (o *TradeTradeModel) SetIsExtendedHoursTrade(v bool)`

SetIsExtendedHoursTrade sets IsExtendedHoursTrade field to given value.

### HasIsExtendedHoursTrade

`func (o *TradeTradeModel) HasIsExtendedHoursTrade() bool`

HasIsExtendedHoursTrade returns a boolean if a field has been set.

### GetIsOddLotTrade

`func (o *TradeTradeModel) GetIsOddLotTrade() bool`

GetIsOddLotTrade returns the IsOddLotTrade field if non-nil, zero value otherwise.

### GetIsOddLotTradeOk

`func (o *TradeTradeModel) GetIsOddLotTradeOk() (*bool, bool)`

GetIsOddLotTradeOk returns a tuple with the IsOddLotTrade field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsOddLotTrade

`func (o *TradeTradeModel) SetIsOddLotTrade(v bool)`

SetIsOddLotTrade sets IsOddLotTrade field to given value.

### HasIsOddLotTrade

`func (o *TradeTradeModel) HasIsOddLotTrade() bool`

HasIsOddLotTrade returns a boolean if a field has been set.

### GetIsTradeThroughExempt

`func (o *TradeTradeModel) GetIsTradeThroughExempt() bool`

GetIsTradeThroughExempt returns the IsTradeThroughExempt field if non-nil, zero value otherwise.

### GetIsTradeThroughExemptOk

`func (o *TradeTradeModel) GetIsTradeThroughExemptOk() (*bool, bool)`

GetIsTradeThroughExemptOk returns a tuple with the IsTradeThroughExempt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsTradeThroughExempt

`func (o *TradeTradeModel) SetIsTradeThroughExempt(v bool)`

SetIsTradeThroughExempt sets IsTradeThroughExempt field to given value.

### HasIsTradeThroughExempt

`func (o *TradeTradeModel) HasIsTradeThroughExempt() bool`

HasIsTradeThroughExempt returns a boolean if a field has been set.

### GetIsSinglePriceCrossTrade

`func (o *TradeTradeModel) GetIsSinglePriceCrossTrade() bool`

GetIsSinglePriceCrossTrade returns the IsSinglePriceCrossTrade field if non-nil, zero value otherwise.

### GetIsSinglePriceCrossTradeOk

`func (o *TradeTradeModel) GetIsSinglePriceCrossTradeOk() (*bool, bool)`

GetIsSinglePriceCrossTradeOk returns a tuple with the IsSinglePriceCrossTrade field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsSinglePriceCrossTrade

`func (o *TradeTradeModel) SetIsSinglePriceCrossTrade(v bool)`

SetIsSinglePriceCrossTrade sets IsSinglePriceCrossTrade field to given value.

### HasIsSinglePriceCrossTrade

`func (o *TradeTradeModel) HasIsSinglePriceCrossTrade() bool`

HasIsSinglePriceCrossTrade returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


