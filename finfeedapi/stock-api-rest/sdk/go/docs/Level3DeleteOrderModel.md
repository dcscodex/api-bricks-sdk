# Level3DeleteOrderModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | Pointer to **NullableString** | The stock symbol | [optional] 
**TimestampNanos** | Pointer to **int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | Pointer to **time.Time** | Time when the order was deleted as DateTime | [optional] 
**OrderIdReference** | Pointer to **int64** | Order identifier reference | [optional] 

## Methods

### NewLevel3DeleteOrderModel

`func NewLevel3DeleteOrderModel() *Level3DeleteOrderModel`

NewLevel3DeleteOrderModel instantiates a new Level3DeleteOrderModel object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLevel3DeleteOrderModelWithDefaults

`func NewLevel3DeleteOrderModelWithDefaults() *Level3DeleteOrderModel`

NewLevel3DeleteOrderModelWithDefaults instantiates a new Level3DeleteOrderModel object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *Level3DeleteOrderModel) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *Level3DeleteOrderModel) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *Level3DeleteOrderModel) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *Level3DeleteOrderModel) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### SetSymbolNil

`func (o *Level3DeleteOrderModel) SetSymbolNil(b bool)`

 SetSymbolNil sets the value for Symbol to be an explicit nil

### UnsetSymbol
`func (o *Level3DeleteOrderModel) UnsetSymbol()`

UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
### GetTimestampNanos

`func (o *Level3DeleteOrderModel) GetTimestampNanos() int64`

GetTimestampNanos returns the TimestampNanos field if non-nil, zero value otherwise.

### GetTimestampNanosOk

`func (o *Level3DeleteOrderModel) GetTimestampNanosOk() (*int64, bool)`

GetTimestampNanosOk returns a tuple with the TimestampNanos field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestampNanos

`func (o *Level3DeleteOrderModel) SetTimestampNanos(v int64)`

SetTimestampNanos sets TimestampNanos field to given value.

### HasTimestampNanos

`func (o *Level3DeleteOrderModel) HasTimestampNanos() bool`

HasTimestampNanos returns a boolean if a field has been set.

### GetTimestamp

`func (o *Level3DeleteOrderModel) GetTimestamp() time.Time`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *Level3DeleteOrderModel) GetTimestampOk() (*time.Time, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *Level3DeleteOrderModel) SetTimestamp(v time.Time)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *Level3DeleteOrderModel) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### GetOrderIdReference

`func (o *Level3DeleteOrderModel) GetOrderIdReference() int64`

GetOrderIdReference returns the OrderIdReference field if non-nil, zero value otherwise.

### GetOrderIdReferenceOk

`func (o *Level3DeleteOrderModel) GetOrderIdReferenceOk() (*int64, bool)`

GetOrderIdReferenceOk returns a tuple with the OrderIdReference field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderIdReference

`func (o *Level3DeleteOrderModel) SetOrderIdReference(v int64)`

SetOrderIdReference sets OrderIdReference field to given value.

### HasOrderIdReference

`func (o *Level3DeleteOrderModel) HasOrderIdReference() bool`

HasOrderIdReference returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


