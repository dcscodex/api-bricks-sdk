# Level3AddOrderModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | Pointer to **NullableString** | The stock symbol | [optional] 
**TimestampNanos** | Pointer to **int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | Pointer to **time.Time** | Time when the order was added as DateTime (UTC) | [optional] 
**IsSideBuy** | Pointer to **bool** | Indicates if this is a Buy order (&#39;8&#39;/0x38). | [optional] 
**Size** | Pointer to **int32** | Quoted size in number of shares | [optional] 
**Price** | Pointer to **float64** | Price as decimal | [optional] 
**OrderId** | Pointer to **int64** | Order identifier | [optional] 

## Methods

### NewLevel3AddOrderModel

`func NewLevel3AddOrderModel() *Level3AddOrderModel`

NewLevel3AddOrderModel instantiates a new Level3AddOrderModel object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLevel3AddOrderModelWithDefaults

`func NewLevel3AddOrderModelWithDefaults() *Level3AddOrderModel`

NewLevel3AddOrderModelWithDefaults instantiates a new Level3AddOrderModel object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *Level3AddOrderModel) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *Level3AddOrderModel) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *Level3AddOrderModel) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *Level3AddOrderModel) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### SetSymbolNil

`func (o *Level3AddOrderModel) SetSymbolNil(b bool)`

 SetSymbolNil sets the value for Symbol to be an explicit nil

### UnsetSymbol
`func (o *Level3AddOrderModel) UnsetSymbol()`

UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
### GetTimestampNanos

`func (o *Level3AddOrderModel) GetTimestampNanos() int64`

GetTimestampNanos returns the TimestampNanos field if non-nil, zero value otherwise.

### GetTimestampNanosOk

`func (o *Level3AddOrderModel) GetTimestampNanosOk() (*int64, bool)`

GetTimestampNanosOk returns a tuple with the TimestampNanos field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestampNanos

`func (o *Level3AddOrderModel) SetTimestampNanos(v int64)`

SetTimestampNanos sets TimestampNanos field to given value.

### HasTimestampNanos

`func (o *Level3AddOrderModel) HasTimestampNanos() bool`

HasTimestampNanos returns a boolean if a field has been set.

### GetTimestamp

`func (o *Level3AddOrderModel) GetTimestamp() time.Time`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *Level3AddOrderModel) GetTimestampOk() (*time.Time, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *Level3AddOrderModel) SetTimestamp(v time.Time)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *Level3AddOrderModel) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### GetIsSideBuy

`func (o *Level3AddOrderModel) GetIsSideBuy() bool`

GetIsSideBuy returns the IsSideBuy field if non-nil, zero value otherwise.

### GetIsSideBuyOk

`func (o *Level3AddOrderModel) GetIsSideBuyOk() (*bool, bool)`

GetIsSideBuyOk returns a tuple with the IsSideBuy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsSideBuy

`func (o *Level3AddOrderModel) SetIsSideBuy(v bool)`

SetIsSideBuy sets IsSideBuy field to given value.

### HasIsSideBuy

`func (o *Level3AddOrderModel) HasIsSideBuy() bool`

HasIsSideBuy returns a boolean if a field has been set.

### GetSize

`func (o *Level3AddOrderModel) GetSize() int32`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *Level3AddOrderModel) GetSizeOk() (*int32, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *Level3AddOrderModel) SetSize(v int32)`

SetSize sets Size field to given value.

### HasSize

`func (o *Level3AddOrderModel) HasSize() bool`

HasSize returns a boolean if a field has been set.

### GetPrice

`func (o *Level3AddOrderModel) GetPrice() float64`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *Level3AddOrderModel) GetPriceOk() (*float64, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *Level3AddOrderModel) SetPrice(v float64)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *Level3AddOrderModel) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### GetOrderId

`func (o *Level3AddOrderModel) GetOrderId() int64`

GetOrderId returns the OrderId field if non-nil, zero value otherwise.

### GetOrderIdOk

`func (o *Level3AddOrderModel) GetOrderIdOk() (*int64, bool)`

GetOrderIdOk returns a tuple with the OrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderId

`func (o *Level3AddOrderModel) SetOrderId(v int64)`

SetOrderId sets OrderId field to given value.

### HasOrderId

`func (o *Level3AddOrderModel) HasOrderId() bool`

HasOrderId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


