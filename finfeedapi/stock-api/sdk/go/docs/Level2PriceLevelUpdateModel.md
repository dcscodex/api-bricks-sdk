# Level2PriceLevelUpdateModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | Pointer to **NullableString** | The stock symbol | [optional] 
**TimestampNanos** | Pointer to **int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | Pointer to **time.Time** | Time when the price level update was recorded as DateTime | [optional] 
**IsSideBuy** | Pointer to **bool** | Indicates if this is a price level update for the Buy Side. | [optional] 
**IsEventProcessingComplete** | Pointer to **bool** | Indicates if event processing is complete. | [optional] 
**Size** | Pointer to **int32** | Aggregate quoted size at the price level | [optional] 
**Price** | Pointer to **float64** | Price level as decimal | [optional] 

## Methods

### NewLevel2PriceLevelUpdateModel

`func NewLevel2PriceLevelUpdateModel() *Level2PriceLevelUpdateModel`

NewLevel2PriceLevelUpdateModel instantiates a new Level2PriceLevelUpdateModel object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLevel2PriceLevelUpdateModelWithDefaults

`func NewLevel2PriceLevelUpdateModelWithDefaults() *Level2PriceLevelUpdateModel`

NewLevel2PriceLevelUpdateModelWithDefaults instantiates a new Level2PriceLevelUpdateModel object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *Level2PriceLevelUpdateModel) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *Level2PriceLevelUpdateModel) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *Level2PriceLevelUpdateModel) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *Level2PriceLevelUpdateModel) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### SetSymbolNil

`func (o *Level2PriceLevelUpdateModel) SetSymbolNil(b bool)`

 SetSymbolNil sets the value for Symbol to be an explicit nil

### UnsetSymbol
`func (o *Level2PriceLevelUpdateModel) UnsetSymbol()`

UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
### GetTimestampNanos

`func (o *Level2PriceLevelUpdateModel) GetTimestampNanos() int64`

GetTimestampNanos returns the TimestampNanos field if non-nil, zero value otherwise.

### GetTimestampNanosOk

`func (o *Level2PriceLevelUpdateModel) GetTimestampNanosOk() (*int64, bool)`

GetTimestampNanosOk returns a tuple with the TimestampNanos field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestampNanos

`func (o *Level2PriceLevelUpdateModel) SetTimestampNanos(v int64)`

SetTimestampNanos sets TimestampNanos field to given value.

### HasTimestampNanos

`func (o *Level2PriceLevelUpdateModel) HasTimestampNanos() bool`

HasTimestampNanos returns a boolean if a field has been set.

### GetTimestamp

`func (o *Level2PriceLevelUpdateModel) GetTimestamp() time.Time`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *Level2PriceLevelUpdateModel) GetTimestampOk() (*time.Time, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *Level2PriceLevelUpdateModel) SetTimestamp(v time.Time)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *Level2PriceLevelUpdateModel) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### GetIsSideBuy

`func (o *Level2PriceLevelUpdateModel) GetIsSideBuy() bool`

GetIsSideBuy returns the IsSideBuy field if non-nil, zero value otherwise.

### GetIsSideBuyOk

`func (o *Level2PriceLevelUpdateModel) GetIsSideBuyOk() (*bool, bool)`

GetIsSideBuyOk returns a tuple with the IsSideBuy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsSideBuy

`func (o *Level2PriceLevelUpdateModel) SetIsSideBuy(v bool)`

SetIsSideBuy sets IsSideBuy field to given value.

### HasIsSideBuy

`func (o *Level2PriceLevelUpdateModel) HasIsSideBuy() bool`

HasIsSideBuy returns a boolean if a field has been set.

### GetIsEventProcessingComplete

`func (o *Level2PriceLevelUpdateModel) GetIsEventProcessingComplete() bool`

GetIsEventProcessingComplete returns the IsEventProcessingComplete field if non-nil, zero value otherwise.

### GetIsEventProcessingCompleteOk

`func (o *Level2PriceLevelUpdateModel) GetIsEventProcessingCompleteOk() (*bool, bool)`

GetIsEventProcessingCompleteOk returns a tuple with the IsEventProcessingComplete field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsEventProcessingComplete

`func (o *Level2PriceLevelUpdateModel) SetIsEventProcessingComplete(v bool)`

SetIsEventProcessingComplete sets IsEventProcessingComplete field to given value.

### HasIsEventProcessingComplete

`func (o *Level2PriceLevelUpdateModel) HasIsEventProcessingComplete() bool`

HasIsEventProcessingComplete returns a boolean if a field has been set.

### GetSize

`func (o *Level2PriceLevelUpdateModel) GetSize() int32`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *Level2PriceLevelUpdateModel) GetSizeOk() (*int32, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *Level2PriceLevelUpdateModel) SetSize(v int32)`

SetSize sets Size field to given value.

### HasSize

`func (o *Level2PriceLevelUpdateModel) HasSize() bool`

HasSize returns a boolean if a field has been set.

### GetPrice

`func (o *Level2PriceLevelUpdateModel) GetPrice() float64`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *Level2PriceLevelUpdateModel) GetPriceOk() (*float64, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *Level2PriceLevelUpdateModel) SetPrice(v float64)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *Level2PriceLevelUpdateModel) HasPrice() bool`

HasPrice returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


