# AdminOfficialPriceModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | Pointer to **NullableString** | The stock symbol | [optional] 
**TimestampNanos** | Pointer to **int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | Pointer to **time.Time** | Time when the official price was recorded as DateTime | [optional] 
**PriceType** | Pointer to **int32** | Type of price as byte value | [optional] 
**PriceTypeCode** | Pointer to **NullableString** | Type of price as character string | [optional] 
**PriceTypeText** | Pointer to **NullableString** | Human-readable description of the price type | [optional] 
**IsPriceTypeOpening** | Pointer to **bool** | Indicates if the price type is &#39;IEX Official Opening Price&#39; (&#39;Q&#39;/0x51). | [optional] 
**IsPriceTypeClosing** | Pointer to **bool** | Indicates if the price type is &#39;IEX Official Closing Price&#39; (&#39;M&#39;/0x4d). | [optional] 
**OfficialPrice** | Pointer to **float64** | Official price as decimal | [optional] 

## Methods

### NewAdminOfficialPriceModel

`func NewAdminOfficialPriceModel() *AdminOfficialPriceModel`

NewAdminOfficialPriceModel instantiates a new AdminOfficialPriceModel object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminOfficialPriceModelWithDefaults

`func NewAdminOfficialPriceModelWithDefaults() *AdminOfficialPriceModel`

NewAdminOfficialPriceModelWithDefaults instantiates a new AdminOfficialPriceModel object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *AdminOfficialPriceModel) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *AdminOfficialPriceModel) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *AdminOfficialPriceModel) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *AdminOfficialPriceModel) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### SetSymbolNil

`func (o *AdminOfficialPriceModel) SetSymbolNil(b bool)`

 SetSymbolNil sets the value for Symbol to be an explicit nil

### UnsetSymbol
`func (o *AdminOfficialPriceModel) UnsetSymbol()`

UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
### GetTimestampNanos

`func (o *AdminOfficialPriceModel) GetTimestampNanos() int64`

GetTimestampNanos returns the TimestampNanos field if non-nil, zero value otherwise.

### GetTimestampNanosOk

`func (o *AdminOfficialPriceModel) GetTimestampNanosOk() (*int64, bool)`

GetTimestampNanosOk returns a tuple with the TimestampNanos field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestampNanos

`func (o *AdminOfficialPriceModel) SetTimestampNanos(v int64)`

SetTimestampNanos sets TimestampNanos field to given value.

### HasTimestampNanos

`func (o *AdminOfficialPriceModel) HasTimestampNanos() bool`

HasTimestampNanos returns a boolean if a field has been set.

### GetTimestamp

`func (o *AdminOfficialPriceModel) GetTimestamp() time.Time`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *AdminOfficialPriceModel) GetTimestampOk() (*time.Time, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *AdminOfficialPriceModel) SetTimestamp(v time.Time)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *AdminOfficialPriceModel) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### GetPriceType

`func (o *AdminOfficialPriceModel) GetPriceType() int32`

GetPriceType returns the PriceType field if non-nil, zero value otherwise.

### GetPriceTypeOk

`func (o *AdminOfficialPriceModel) GetPriceTypeOk() (*int32, bool)`

GetPriceTypeOk returns a tuple with the PriceType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceType

`func (o *AdminOfficialPriceModel) SetPriceType(v int32)`

SetPriceType sets PriceType field to given value.

### HasPriceType

`func (o *AdminOfficialPriceModel) HasPriceType() bool`

HasPriceType returns a boolean if a field has been set.

### GetPriceTypeCode

`func (o *AdminOfficialPriceModel) GetPriceTypeCode() string`

GetPriceTypeCode returns the PriceTypeCode field if non-nil, zero value otherwise.

### GetPriceTypeCodeOk

`func (o *AdminOfficialPriceModel) GetPriceTypeCodeOk() (*string, bool)`

GetPriceTypeCodeOk returns a tuple with the PriceTypeCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceTypeCode

`func (o *AdminOfficialPriceModel) SetPriceTypeCode(v string)`

SetPriceTypeCode sets PriceTypeCode field to given value.

### HasPriceTypeCode

`func (o *AdminOfficialPriceModel) HasPriceTypeCode() bool`

HasPriceTypeCode returns a boolean if a field has been set.

### SetPriceTypeCodeNil

`func (o *AdminOfficialPriceModel) SetPriceTypeCodeNil(b bool)`

 SetPriceTypeCodeNil sets the value for PriceTypeCode to be an explicit nil

### UnsetPriceTypeCode
`func (o *AdminOfficialPriceModel) UnsetPriceTypeCode()`

UnsetPriceTypeCode ensures that no value is present for PriceTypeCode, not even an explicit nil
### GetPriceTypeText

`func (o *AdminOfficialPriceModel) GetPriceTypeText() string`

GetPriceTypeText returns the PriceTypeText field if non-nil, zero value otherwise.

### GetPriceTypeTextOk

`func (o *AdminOfficialPriceModel) GetPriceTypeTextOk() (*string, bool)`

GetPriceTypeTextOk returns a tuple with the PriceTypeText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceTypeText

`func (o *AdminOfficialPriceModel) SetPriceTypeText(v string)`

SetPriceTypeText sets PriceTypeText field to given value.

### HasPriceTypeText

`func (o *AdminOfficialPriceModel) HasPriceTypeText() bool`

HasPriceTypeText returns a boolean if a field has been set.

### SetPriceTypeTextNil

`func (o *AdminOfficialPriceModel) SetPriceTypeTextNil(b bool)`

 SetPriceTypeTextNil sets the value for PriceTypeText to be an explicit nil

### UnsetPriceTypeText
`func (o *AdminOfficialPriceModel) UnsetPriceTypeText()`

UnsetPriceTypeText ensures that no value is present for PriceTypeText, not even an explicit nil
### GetIsPriceTypeOpening

`func (o *AdminOfficialPriceModel) GetIsPriceTypeOpening() bool`

GetIsPriceTypeOpening returns the IsPriceTypeOpening field if non-nil, zero value otherwise.

### GetIsPriceTypeOpeningOk

`func (o *AdminOfficialPriceModel) GetIsPriceTypeOpeningOk() (*bool, bool)`

GetIsPriceTypeOpeningOk returns a tuple with the IsPriceTypeOpening field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsPriceTypeOpening

`func (o *AdminOfficialPriceModel) SetIsPriceTypeOpening(v bool)`

SetIsPriceTypeOpening sets IsPriceTypeOpening field to given value.

### HasIsPriceTypeOpening

`func (o *AdminOfficialPriceModel) HasIsPriceTypeOpening() bool`

HasIsPriceTypeOpening returns a boolean if a field has been set.

### GetIsPriceTypeClosing

`func (o *AdminOfficialPriceModel) GetIsPriceTypeClosing() bool`

GetIsPriceTypeClosing returns the IsPriceTypeClosing field if non-nil, zero value otherwise.

### GetIsPriceTypeClosingOk

`func (o *AdminOfficialPriceModel) GetIsPriceTypeClosingOk() (*bool, bool)`

GetIsPriceTypeClosingOk returns a tuple with the IsPriceTypeClosing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsPriceTypeClosing

`func (o *AdminOfficialPriceModel) SetIsPriceTypeClosing(v bool)`

SetIsPriceTypeClosing sets IsPriceTypeClosing field to given value.

### HasIsPriceTypeClosing

`func (o *AdminOfficialPriceModel) HasIsPriceTypeClosing() bool`

HasIsPriceTypeClosing returns a boolean if a field has been set.

### GetOfficialPrice

`func (o *AdminOfficialPriceModel) GetOfficialPrice() float64`

GetOfficialPrice returns the OfficialPrice field if non-nil, zero value otherwise.

### GetOfficialPriceOk

`func (o *AdminOfficialPriceModel) GetOfficialPriceOk() (*float64, bool)`

GetOfficialPriceOk returns a tuple with the OfficialPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOfficialPrice

`func (o *AdminOfficialPriceModel) SetOfficialPrice(v float64)`

SetOfficialPrice sets OfficialPrice field to given value.

### HasOfficialPrice

`func (o *AdminOfficialPriceModel) HasOfficialPrice() bool`

HasOfficialPrice returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


