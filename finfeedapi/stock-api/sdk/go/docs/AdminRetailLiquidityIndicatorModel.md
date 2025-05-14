# AdminRetailLiquidityIndicatorModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | Pointer to **NullableString** | The stock symbol | [optional] 
**TimestampNanos** | Pointer to **int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | Pointer to **time.Time** | Time when the retail liquidity indicator was recorded as DateTime | [optional] 
**RetailLiquidityIndicator** | Pointer to **int32** | Retail liquidity indicator as byte value | [optional] 
**RetailLiquidityIndicatorCode** | Pointer to **NullableString** | Retail liquidity indicator as character string | [optional] 
**RetailLiquidityIndicatorText** | Pointer to **NullableString** | Human-readable description of the retail liquidity indicator | [optional] 
**IsRetailIndicatorNotApplicable** | Pointer to **bool** | Indicates if the indicator is &#39;Not Applicable&#39; (&#39; &#39;/0x20). | [optional] 
**IsRetailIndicatorBuyInterest** | Pointer to **bool** | Indicates if there is &#39;Buy interest for Retail&#39; (&#39;A&#39;/0x41). | [optional] 
**IsRetailIndicatorSellInterest** | Pointer to **bool** | Indicates if there is &#39;Sell interest for Retail&#39; (&#39;B&#39;/0x42). | [optional] 
**IsRetailIndicatorBuyAndSellInterest** | Pointer to **bool** | Indicates if there is &#39;Buy and sell interest for Retail&#39; (&#39;C&#39;/0x43). | [optional] 

## Methods

### NewAdminRetailLiquidityIndicatorModel

`func NewAdminRetailLiquidityIndicatorModel() *AdminRetailLiquidityIndicatorModel`

NewAdminRetailLiquidityIndicatorModel instantiates a new AdminRetailLiquidityIndicatorModel object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminRetailLiquidityIndicatorModelWithDefaults

`func NewAdminRetailLiquidityIndicatorModelWithDefaults() *AdminRetailLiquidityIndicatorModel`

NewAdminRetailLiquidityIndicatorModelWithDefaults instantiates a new AdminRetailLiquidityIndicatorModel object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *AdminRetailLiquidityIndicatorModel) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *AdminRetailLiquidityIndicatorModel) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *AdminRetailLiquidityIndicatorModel) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *AdminRetailLiquidityIndicatorModel) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### SetSymbolNil

`func (o *AdminRetailLiquidityIndicatorModel) SetSymbolNil(b bool)`

 SetSymbolNil sets the value for Symbol to be an explicit nil

### UnsetSymbol
`func (o *AdminRetailLiquidityIndicatorModel) UnsetSymbol()`

UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
### GetTimestampNanos

`func (o *AdminRetailLiquidityIndicatorModel) GetTimestampNanos() int64`

GetTimestampNanos returns the TimestampNanos field if non-nil, zero value otherwise.

### GetTimestampNanosOk

`func (o *AdminRetailLiquidityIndicatorModel) GetTimestampNanosOk() (*int64, bool)`

GetTimestampNanosOk returns a tuple with the TimestampNanos field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestampNanos

`func (o *AdminRetailLiquidityIndicatorModel) SetTimestampNanos(v int64)`

SetTimestampNanos sets TimestampNanos field to given value.

### HasTimestampNanos

`func (o *AdminRetailLiquidityIndicatorModel) HasTimestampNanos() bool`

HasTimestampNanos returns a boolean if a field has been set.

### GetTimestamp

`func (o *AdminRetailLiquidityIndicatorModel) GetTimestamp() time.Time`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *AdminRetailLiquidityIndicatorModel) GetTimestampOk() (*time.Time, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *AdminRetailLiquidityIndicatorModel) SetTimestamp(v time.Time)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *AdminRetailLiquidityIndicatorModel) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### GetRetailLiquidityIndicator

`func (o *AdminRetailLiquidityIndicatorModel) GetRetailLiquidityIndicator() int32`

GetRetailLiquidityIndicator returns the RetailLiquidityIndicator field if non-nil, zero value otherwise.

### GetRetailLiquidityIndicatorOk

`func (o *AdminRetailLiquidityIndicatorModel) GetRetailLiquidityIndicatorOk() (*int32, bool)`

GetRetailLiquidityIndicatorOk returns a tuple with the RetailLiquidityIndicator field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRetailLiquidityIndicator

`func (o *AdminRetailLiquidityIndicatorModel) SetRetailLiquidityIndicator(v int32)`

SetRetailLiquidityIndicator sets RetailLiquidityIndicator field to given value.

### HasRetailLiquidityIndicator

`func (o *AdminRetailLiquidityIndicatorModel) HasRetailLiquidityIndicator() bool`

HasRetailLiquidityIndicator returns a boolean if a field has been set.

### GetRetailLiquidityIndicatorCode

`func (o *AdminRetailLiquidityIndicatorModel) GetRetailLiquidityIndicatorCode() string`

GetRetailLiquidityIndicatorCode returns the RetailLiquidityIndicatorCode field if non-nil, zero value otherwise.

### GetRetailLiquidityIndicatorCodeOk

`func (o *AdminRetailLiquidityIndicatorModel) GetRetailLiquidityIndicatorCodeOk() (*string, bool)`

GetRetailLiquidityIndicatorCodeOk returns a tuple with the RetailLiquidityIndicatorCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRetailLiquidityIndicatorCode

`func (o *AdminRetailLiquidityIndicatorModel) SetRetailLiquidityIndicatorCode(v string)`

SetRetailLiquidityIndicatorCode sets RetailLiquidityIndicatorCode field to given value.

### HasRetailLiquidityIndicatorCode

`func (o *AdminRetailLiquidityIndicatorModel) HasRetailLiquidityIndicatorCode() bool`

HasRetailLiquidityIndicatorCode returns a boolean if a field has been set.

### SetRetailLiquidityIndicatorCodeNil

`func (o *AdminRetailLiquidityIndicatorModel) SetRetailLiquidityIndicatorCodeNil(b bool)`

 SetRetailLiquidityIndicatorCodeNil sets the value for RetailLiquidityIndicatorCode to be an explicit nil

### UnsetRetailLiquidityIndicatorCode
`func (o *AdminRetailLiquidityIndicatorModel) UnsetRetailLiquidityIndicatorCode()`

UnsetRetailLiquidityIndicatorCode ensures that no value is present for RetailLiquidityIndicatorCode, not even an explicit nil
### GetRetailLiquidityIndicatorText

`func (o *AdminRetailLiquidityIndicatorModel) GetRetailLiquidityIndicatorText() string`

GetRetailLiquidityIndicatorText returns the RetailLiquidityIndicatorText field if non-nil, zero value otherwise.

### GetRetailLiquidityIndicatorTextOk

`func (o *AdminRetailLiquidityIndicatorModel) GetRetailLiquidityIndicatorTextOk() (*string, bool)`

GetRetailLiquidityIndicatorTextOk returns a tuple with the RetailLiquidityIndicatorText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRetailLiquidityIndicatorText

`func (o *AdminRetailLiquidityIndicatorModel) SetRetailLiquidityIndicatorText(v string)`

SetRetailLiquidityIndicatorText sets RetailLiquidityIndicatorText field to given value.

### HasRetailLiquidityIndicatorText

`func (o *AdminRetailLiquidityIndicatorModel) HasRetailLiquidityIndicatorText() bool`

HasRetailLiquidityIndicatorText returns a boolean if a field has been set.

### SetRetailLiquidityIndicatorTextNil

`func (o *AdminRetailLiquidityIndicatorModel) SetRetailLiquidityIndicatorTextNil(b bool)`

 SetRetailLiquidityIndicatorTextNil sets the value for RetailLiquidityIndicatorText to be an explicit nil

### UnsetRetailLiquidityIndicatorText
`func (o *AdminRetailLiquidityIndicatorModel) UnsetRetailLiquidityIndicatorText()`

UnsetRetailLiquidityIndicatorText ensures that no value is present for RetailLiquidityIndicatorText, not even an explicit nil
### GetIsRetailIndicatorNotApplicable

`func (o *AdminRetailLiquidityIndicatorModel) GetIsRetailIndicatorNotApplicable() bool`

GetIsRetailIndicatorNotApplicable returns the IsRetailIndicatorNotApplicable field if non-nil, zero value otherwise.

### GetIsRetailIndicatorNotApplicableOk

`func (o *AdminRetailLiquidityIndicatorModel) GetIsRetailIndicatorNotApplicableOk() (*bool, bool)`

GetIsRetailIndicatorNotApplicableOk returns a tuple with the IsRetailIndicatorNotApplicable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsRetailIndicatorNotApplicable

`func (o *AdminRetailLiquidityIndicatorModel) SetIsRetailIndicatorNotApplicable(v bool)`

SetIsRetailIndicatorNotApplicable sets IsRetailIndicatorNotApplicable field to given value.

### HasIsRetailIndicatorNotApplicable

`func (o *AdminRetailLiquidityIndicatorModel) HasIsRetailIndicatorNotApplicable() bool`

HasIsRetailIndicatorNotApplicable returns a boolean if a field has been set.

### GetIsRetailIndicatorBuyInterest

`func (o *AdminRetailLiquidityIndicatorModel) GetIsRetailIndicatorBuyInterest() bool`

GetIsRetailIndicatorBuyInterest returns the IsRetailIndicatorBuyInterest field if non-nil, zero value otherwise.

### GetIsRetailIndicatorBuyInterestOk

`func (o *AdminRetailLiquidityIndicatorModel) GetIsRetailIndicatorBuyInterestOk() (*bool, bool)`

GetIsRetailIndicatorBuyInterestOk returns a tuple with the IsRetailIndicatorBuyInterest field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsRetailIndicatorBuyInterest

`func (o *AdminRetailLiquidityIndicatorModel) SetIsRetailIndicatorBuyInterest(v bool)`

SetIsRetailIndicatorBuyInterest sets IsRetailIndicatorBuyInterest field to given value.

### HasIsRetailIndicatorBuyInterest

`func (o *AdminRetailLiquidityIndicatorModel) HasIsRetailIndicatorBuyInterest() bool`

HasIsRetailIndicatorBuyInterest returns a boolean if a field has been set.

### GetIsRetailIndicatorSellInterest

`func (o *AdminRetailLiquidityIndicatorModel) GetIsRetailIndicatorSellInterest() bool`

GetIsRetailIndicatorSellInterest returns the IsRetailIndicatorSellInterest field if non-nil, zero value otherwise.

### GetIsRetailIndicatorSellInterestOk

`func (o *AdminRetailLiquidityIndicatorModel) GetIsRetailIndicatorSellInterestOk() (*bool, bool)`

GetIsRetailIndicatorSellInterestOk returns a tuple with the IsRetailIndicatorSellInterest field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsRetailIndicatorSellInterest

`func (o *AdminRetailLiquidityIndicatorModel) SetIsRetailIndicatorSellInterest(v bool)`

SetIsRetailIndicatorSellInterest sets IsRetailIndicatorSellInterest field to given value.

### HasIsRetailIndicatorSellInterest

`func (o *AdminRetailLiquidityIndicatorModel) HasIsRetailIndicatorSellInterest() bool`

HasIsRetailIndicatorSellInterest returns a boolean if a field has been set.

### GetIsRetailIndicatorBuyAndSellInterest

`func (o *AdminRetailLiquidityIndicatorModel) GetIsRetailIndicatorBuyAndSellInterest() bool`

GetIsRetailIndicatorBuyAndSellInterest returns the IsRetailIndicatorBuyAndSellInterest field if non-nil, zero value otherwise.

### GetIsRetailIndicatorBuyAndSellInterestOk

`func (o *AdminRetailLiquidityIndicatorModel) GetIsRetailIndicatorBuyAndSellInterestOk() (*bool, bool)`

GetIsRetailIndicatorBuyAndSellInterestOk returns a tuple with the IsRetailIndicatorBuyAndSellInterest field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsRetailIndicatorBuyAndSellInterest

`func (o *AdminRetailLiquidityIndicatorModel) SetIsRetailIndicatorBuyAndSellInterest(v bool)`

SetIsRetailIndicatorBuyAndSellInterest sets IsRetailIndicatorBuyAndSellInterest field to given value.

### HasIsRetailIndicatorBuyAndSellInterest

`func (o *AdminRetailLiquidityIndicatorModel) HasIsRetailIndicatorBuyAndSellInterest() bool`

HasIsRetailIndicatorBuyAndSellInterest returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


