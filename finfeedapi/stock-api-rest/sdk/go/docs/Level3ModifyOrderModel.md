# Level3ModifyOrderModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | Pointer to **NullableString** | The stock symbol | [optional] 
**TimestampNanos** | Pointer to **int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | Pointer to **time.Time** | Time when the order was modified as DateTime (UTC) | [optional] 
**OrderIdReference** | Pointer to **int64** | Order identifier reference | [optional] 
**IsPriorityReset** | Pointer to **bool** | Indicates if priority is reseted | [optional] 
**Size** | Pointer to **int32** | New total quoted size in number of shares | [optional] 
**Price** | Pointer to **float64** | Price as decimal | [optional] 

## Methods

### NewLevel3ModifyOrderModel

`func NewLevel3ModifyOrderModel() *Level3ModifyOrderModel`

NewLevel3ModifyOrderModel instantiates a new Level3ModifyOrderModel object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLevel3ModifyOrderModelWithDefaults

`func NewLevel3ModifyOrderModelWithDefaults() *Level3ModifyOrderModel`

NewLevel3ModifyOrderModelWithDefaults instantiates a new Level3ModifyOrderModel object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *Level3ModifyOrderModel) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *Level3ModifyOrderModel) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *Level3ModifyOrderModel) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *Level3ModifyOrderModel) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### SetSymbolNil

`func (o *Level3ModifyOrderModel) SetSymbolNil(b bool)`

 SetSymbolNil sets the value for Symbol to be an explicit nil

### UnsetSymbol
`func (o *Level3ModifyOrderModel) UnsetSymbol()`

UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
### GetTimestampNanos

`func (o *Level3ModifyOrderModel) GetTimestampNanos() int64`

GetTimestampNanos returns the TimestampNanos field if non-nil, zero value otherwise.

### GetTimestampNanosOk

`func (o *Level3ModifyOrderModel) GetTimestampNanosOk() (*int64, bool)`

GetTimestampNanosOk returns a tuple with the TimestampNanos field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestampNanos

`func (o *Level3ModifyOrderModel) SetTimestampNanos(v int64)`

SetTimestampNanos sets TimestampNanos field to given value.

### HasTimestampNanos

`func (o *Level3ModifyOrderModel) HasTimestampNanos() bool`

HasTimestampNanos returns a boolean if a field has been set.

### GetTimestamp

`func (o *Level3ModifyOrderModel) GetTimestamp() time.Time`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *Level3ModifyOrderModel) GetTimestampOk() (*time.Time, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *Level3ModifyOrderModel) SetTimestamp(v time.Time)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *Level3ModifyOrderModel) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### GetOrderIdReference

`func (o *Level3ModifyOrderModel) GetOrderIdReference() int64`

GetOrderIdReference returns the OrderIdReference field if non-nil, zero value otherwise.

### GetOrderIdReferenceOk

`func (o *Level3ModifyOrderModel) GetOrderIdReferenceOk() (*int64, bool)`

GetOrderIdReferenceOk returns a tuple with the OrderIdReference field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderIdReference

`func (o *Level3ModifyOrderModel) SetOrderIdReference(v int64)`

SetOrderIdReference sets OrderIdReference field to given value.

### HasOrderIdReference

`func (o *Level3ModifyOrderModel) HasOrderIdReference() bool`

HasOrderIdReference returns a boolean if a field has been set.

### GetIsPriorityReset

`func (o *Level3ModifyOrderModel) GetIsPriorityReset() bool`

GetIsPriorityReset returns the IsPriorityReset field if non-nil, zero value otherwise.

### GetIsPriorityResetOk

`func (o *Level3ModifyOrderModel) GetIsPriorityResetOk() (*bool, bool)`

GetIsPriorityResetOk returns a tuple with the IsPriorityReset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsPriorityReset

`func (o *Level3ModifyOrderModel) SetIsPriorityReset(v bool)`

SetIsPriorityReset sets IsPriorityReset field to given value.

### HasIsPriorityReset

`func (o *Level3ModifyOrderModel) HasIsPriorityReset() bool`

HasIsPriorityReset returns a boolean if a field has been set.

### GetSize

`func (o *Level3ModifyOrderModel) GetSize() int32`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *Level3ModifyOrderModel) GetSizeOk() (*int32, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *Level3ModifyOrderModel) SetSize(v int32)`

SetSize sets Size field to given value.

### HasSize

`func (o *Level3ModifyOrderModel) HasSize() bool`

HasSize returns a boolean if a field has been set.

### GetPrice

`func (o *Level3ModifyOrderModel) GetPrice() float64`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *Level3ModifyOrderModel) GetPriceOk() (*float64, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *Level3ModifyOrderModel) SetPrice(v float64)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *Level3ModifyOrderModel) HasPrice() bool`

HasPrice returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


