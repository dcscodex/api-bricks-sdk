# Level3ExecutedOrderModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | Pointer to **NullableString** | The stock symbol | [optional] 
**TimestampNanos** | Pointer to **int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | Pointer to **time.Time** | Time when the order was executed as DateTime | [optional] 
**OrderIdReference** | Pointer to **int64** | Order identifier reference | [optional] 
**SaleConditionFlags** | Pointer to **int32** | Sale condition flags for the execution as byte value | [optional] 
**IsIntermarketSweep** | Pointer to **bool** | Bit 7 (Mask 0x80): Intermarket Sweep Flag  True: Intermarket Sweep Order (\&quot;ISO\&quot;)  False: Non-Intermarket Sweep Order | [optional] 
**IsExtendedHoursTrade** | Pointer to **bool** | Bit 6 (Mask 0x40): Extended Hours Flag  True: Extended Hours Trade (i.e., Form T sale condition)  False: Regular Market Session Trade | [optional] 
**IsOddLotTrade** | Pointer to **bool** | Bit 5 (Mask 0x20): Odd Lot Flag  True: Odd Lot Trade  False: Round or Mixed Lot Trade | [optional] 
**IsTradeThroughExempt** | Pointer to **bool** | Bit 4 (Mask 0x10): Trade Through Exempt Flag  True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS  False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS | [optional] 
**IsSinglePriceCrossTrade** | Pointer to **bool** | Bit 3 (Mask 0x08): Single-price Cross Trade Flag  True: Trade resulting from a single-price cross  False: Execution during continuous trading | [optional] 
**Size** | Pointer to **int32** | Trade volume in number of shares | [optional] 
**Price** | Pointer to **float64** | Execution price as decimal | [optional] 
**TradeId** | Pointer to **int64** | IEX trade identifier | [optional] 

## Methods

### NewLevel3ExecutedOrderModel

`func NewLevel3ExecutedOrderModel() *Level3ExecutedOrderModel`

NewLevel3ExecutedOrderModel instantiates a new Level3ExecutedOrderModel object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLevel3ExecutedOrderModelWithDefaults

`func NewLevel3ExecutedOrderModelWithDefaults() *Level3ExecutedOrderModel`

NewLevel3ExecutedOrderModelWithDefaults instantiates a new Level3ExecutedOrderModel object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *Level3ExecutedOrderModel) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *Level3ExecutedOrderModel) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *Level3ExecutedOrderModel) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *Level3ExecutedOrderModel) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### SetSymbolNil

`func (o *Level3ExecutedOrderModel) SetSymbolNil(b bool)`

 SetSymbolNil sets the value for Symbol to be an explicit nil

### UnsetSymbol
`func (o *Level3ExecutedOrderModel) UnsetSymbol()`

UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
### GetTimestampNanos

`func (o *Level3ExecutedOrderModel) GetTimestampNanos() int64`

GetTimestampNanos returns the TimestampNanos field if non-nil, zero value otherwise.

### GetTimestampNanosOk

`func (o *Level3ExecutedOrderModel) GetTimestampNanosOk() (*int64, bool)`

GetTimestampNanosOk returns a tuple with the TimestampNanos field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestampNanos

`func (o *Level3ExecutedOrderModel) SetTimestampNanos(v int64)`

SetTimestampNanos sets TimestampNanos field to given value.

### HasTimestampNanos

`func (o *Level3ExecutedOrderModel) HasTimestampNanos() bool`

HasTimestampNanos returns a boolean if a field has been set.

### GetTimestamp

`func (o *Level3ExecutedOrderModel) GetTimestamp() time.Time`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *Level3ExecutedOrderModel) GetTimestampOk() (*time.Time, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *Level3ExecutedOrderModel) SetTimestamp(v time.Time)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *Level3ExecutedOrderModel) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### GetOrderIdReference

`func (o *Level3ExecutedOrderModel) GetOrderIdReference() int64`

GetOrderIdReference returns the OrderIdReference field if non-nil, zero value otherwise.

### GetOrderIdReferenceOk

`func (o *Level3ExecutedOrderModel) GetOrderIdReferenceOk() (*int64, bool)`

GetOrderIdReferenceOk returns a tuple with the OrderIdReference field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderIdReference

`func (o *Level3ExecutedOrderModel) SetOrderIdReference(v int64)`

SetOrderIdReference sets OrderIdReference field to given value.

### HasOrderIdReference

`func (o *Level3ExecutedOrderModel) HasOrderIdReference() bool`

HasOrderIdReference returns a boolean if a field has been set.

### GetSaleConditionFlags

`func (o *Level3ExecutedOrderModel) GetSaleConditionFlags() int32`

GetSaleConditionFlags returns the SaleConditionFlags field if non-nil, zero value otherwise.

### GetSaleConditionFlagsOk

`func (o *Level3ExecutedOrderModel) GetSaleConditionFlagsOk() (*int32, bool)`

GetSaleConditionFlagsOk returns a tuple with the SaleConditionFlags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSaleConditionFlags

`func (o *Level3ExecutedOrderModel) SetSaleConditionFlags(v int32)`

SetSaleConditionFlags sets SaleConditionFlags field to given value.

### HasSaleConditionFlags

`func (o *Level3ExecutedOrderModel) HasSaleConditionFlags() bool`

HasSaleConditionFlags returns a boolean if a field has been set.

### GetIsIntermarketSweep

`func (o *Level3ExecutedOrderModel) GetIsIntermarketSweep() bool`

GetIsIntermarketSweep returns the IsIntermarketSweep field if non-nil, zero value otherwise.

### GetIsIntermarketSweepOk

`func (o *Level3ExecutedOrderModel) GetIsIntermarketSweepOk() (*bool, bool)`

GetIsIntermarketSweepOk returns a tuple with the IsIntermarketSweep field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsIntermarketSweep

`func (o *Level3ExecutedOrderModel) SetIsIntermarketSweep(v bool)`

SetIsIntermarketSweep sets IsIntermarketSweep field to given value.

### HasIsIntermarketSweep

`func (o *Level3ExecutedOrderModel) HasIsIntermarketSweep() bool`

HasIsIntermarketSweep returns a boolean if a field has been set.

### GetIsExtendedHoursTrade

`func (o *Level3ExecutedOrderModel) GetIsExtendedHoursTrade() bool`

GetIsExtendedHoursTrade returns the IsExtendedHoursTrade field if non-nil, zero value otherwise.

### GetIsExtendedHoursTradeOk

`func (o *Level3ExecutedOrderModel) GetIsExtendedHoursTradeOk() (*bool, bool)`

GetIsExtendedHoursTradeOk returns a tuple with the IsExtendedHoursTrade field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsExtendedHoursTrade

`func (o *Level3ExecutedOrderModel) SetIsExtendedHoursTrade(v bool)`

SetIsExtendedHoursTrade sets IsExtendedHoursTrade field to given value.

### HasIsExtendedHoursTrade

`func (o *Level3ExecutedOrderModel) HasIsExtendedHoursTrade() bool`

HasIsExtendedHoursTrade returns a boolean if a field has been set.

### GetIsOddLotTrade

`func (o *Level3ExecutedOrderModel) GetIsOddLotTrade() bool`

GetIsOddLotTrade returns the IsOddLotTrade field if non-nil, zero value otherwise.

### GetIsOddLotTradeOk

`func (o *Level3ExecutedOrderModel) GetIsOddLotTradeOk() (*bool, bool)`

GetIsOddLotTradeOk returns a tuple with the IsOddLotTrade field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsOddLotTrade

`func (o *Level3ExecutedOrderModel) SetIsOddLotTrade(v bool)`

SetIsOddLotTrade sets IsOddLotTrade field to given value.

### HasIsOddLotTrade

`func (o *Level3ExecutedOrderModel) HasIsOddLotTrade() bool`

HasIsOddLotTrade returns a boolean if a field has been set.

### GetIsTradeThroughExempt

`func (o *Level3ExecutedOrderModel) GetIsTradeThroughExempt() bool`

GetIsTradeThroughExempt returns the IsTradeThroughExempt field if non-nil, zero value otherwise.

### GetIsTradeThroughExemptOk

`func (o *Level3ExecutedOrderModel) GetIsTradeThroughExemptOk() (*bool, bool)`

GetIsTradeThroughExemptOk returns a tuple with the IsTradeThroughExempt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsTradeThroughExempt

`func (o *Level3ExecutedOrderModel) SetIsTradeThroughExempt(v bool)`

SetIsTradeThroughExempt sets IsTradeThroughExempt field to given value.

### HasIsTradeThroughExempt

`func (o *Level3ExecutedOrderModel) HasIsTradeThroughExempt() bool`

HasIsTradeThroughExempt returns a boolean if a field has been set.

### GetIsSinglePriceCrossTrade

`func (o *Level3ExecutedOrderModel) GetIsSinglePriceCrossTrade() bool`

GetIsSinglePriceCrossTrade returns the IsSinglePriceCrossTrade field if non-nil, zero value otherwise.

### GetIsSinglePriceCrossTradeOk

`func (o *Level3ExecutedOrderModel) GetIsSinglePriceCrossTradeOk() (*bool, bool)`

GetIsSinglePriceCrossTradeOk returns a tuple with the IsSinglePriceCrossTrade field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsSinglePriceCrossTrade

`func (o *Level3ExecutedOrderModel) SetIsSinglePriceCrossTrade(v bool)`

SetIsSinglePriceCrossTrade sets IsSinglePriceCrossTrade field to given value.

### HasIsSinglePriceCrossTrade

`func (o *Level3ExecutedOrderModel) HasIsSinglePriceCrossTrade() bool`

HasIsSinglePriceCrossTrade returns a boolean if a field has been set.

### GetSize

`func (o *Level3ExecutedOrderModel) GetSize() int32`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *Level3ExecutedOrderModel) GetSizeOk() (*int32, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *Level3ExecutedOrderModel) SetSize(v int32)`

SetSize sets Size field to given value.

### HasSize

`func (o *Level3ExecutedOrderModel) HasSize() bool`

HasSize returns a boolean if a field has been set.

### GetPrice

`func (o *Level3ExecutedOrderModel) GetPrice() float64`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *Level3ExecutedOrderModel) GetPriceOk() (*float64, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *Level3ExecutedOrderModel) SetPrice(v float64)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *Level3ExecutedOrderModel) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### GetTradeId

`func (o *Level3ExecutedOrderModel) GetTradeId() int64`

GetTradeId returns the TradeId field if non-nil, zero value otherwise.

### GetTradeIdOk

`func (o *Level3ExecutedOrderModel) GetTradeIdOk() (*int64, bool)`

GetTradeIdOk returns a tuple with the TradeId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTradeId

`func (o *Level3ExecutedOrderModel) SetTradeId(v int64)`

SetTradeId sets TradeId field to given value.

### HasTradeId

`func (o *Level3ExecutedOrderModel) HasTradeId() bool`

HasTradeId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


