# V1Symbol

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SymbolId** | Pointer to **NullableString** | The symbol identifier. | [optional] 
**ExchangeId** | Pointer to **NullableString** | The exchange identifier. | [optional] 
**SymbolType** | Pointer to **NullableString** | The symbol type. | [optional] 
**AssetIdBase** | Pointer to **NullableString** | The base asset identifier. | [optional] 
**AssetIdQuote** | Pointer to **NullableString** | The quote asset identifier. | [optional] 
**AssetIdUnit** | Pointer to **NullableString** | The unit asset identifier. | [optional] 
**FutureContractUnit** | Pointer to **NullableFloat64** | The contract unit for futures. | [optional] 
**FutureContractUnitAsset** | Pointer to **NullableString** | The asset used as the unit for futures contract. | [optional] 
**FutureDeliveryTime** | Pointer to **NullableTime** | The future delivery time for futures contract. | [optional] 
**OptionTypeIsCall** | Pointer to **NullableBool** | Indicates whether the option type is a call. | [optional] 
**OptionStrikePrice** | Pointer to **NullableFloat64** | The strike price for options. | [optional] 
**OptionContractUnit** | Pointer to **NullableFloat64** | The contract unit for options. | [optional] 
**OptionExerciseStyle** | Pointer to **NullableString** | The exercise style for options. | [optional] 
**OptionExpirationTime** | Pointer to **NullableTime** | The expiration time for options. | [optional] 
**ContractDeliveryTime** | Pointer to **NullableTime** | The delivery time for contracts. | [optional] 
**ContractUnit** | Pointer to **NullableFloat64** | The contract unit for contracts. | [optional] 
**ContractUnitAsset** | Pointer to **NullableString** | The asset used as the unit for contracts. | [optional] 
**ContractId** | Pointer to **NullableString** | The contract identifier. | [optional] 
**ContractDisplayName** | Pointer to **NullableString** | The display name of the contract. | [optional] 
**ContractDisplayDescription** | Pointer to **NullableString** | The display description of the contract. | [optional] 
**DataStart** | Pointer to **NullableString** |  | [optional] [readonly] 
**DataEnd** | Pointer to **NullableString** |  | [optional] [readonly] 
**DataQuoteStart** | Pointer to **NullableTime** | The start date of quote data. | [optional] 
**DataQuoteEnd** | Pointer to **NullableTime** | The end date of quote data. | [optional] 
**DataOrderbookStart** | Pointer to **NullableTime** | The start date of order book data. | [optional] 
**DataOrderbookEnd** | Pointer to **NullableTime** | The end date of order book data. | [optional] 
**DataTradeStart** | Pointer to **NullableTime** | The start date of trade data. | [optional] 
**DataTradeEnd** | Pointer to **NullableTime** | The end date of trade data. | [optional] 
**IndexId** | Pointer to **NullableString** | The index identifier. | [optional] 
**IndexDisplayName** | Pointer to **NullableString** | The display name of the index. | [optional] 
**IndexDisplayDescription** | Pointer to **NullableString** | The display description of the index. | [optional] 
**Volume1hrs** | Pointer to **NullableFloat64** | The volume in the last 1 hour. | [optional] 
**Volume1hrsUsd** | Pointer to **NullableFloat64** | The volume in USD in the last 1 hour. | [optional] 
**Volume1day** | Pointer to **NullableFloat64** | The volume in the last 1 day. | [optional] 
**Volume1dayUsd** | Pointer to **NullableFloat64** | The volume in USD in the last 1 day. | [optional] 
**Volume1mth** | Pointer to **NullableFloat64** | The volume in the last 1 month. | [optional] 
**Volume1mthUsd** | Pointer to **NullableFloat64** | The volume in USD in the last 1 month. | [optional] 
**Price** | Pointer to **NullableFloat64** | The price. | [optional] 
**SymbolIdExchange** | Pointer to **NullableString** | The symbol identifier in the exchange. | [optional] 
**AssetIdBaseExchange** | Pointer to **NullableString** | The base asset identifier in the exchange. | [optional] 
**AssetIdQuoteExchange** | Pointer to **NullableString** | The quote asset identifier in the exchange. | [optional] 
**PricePrecision** | Pointer to **NullableFloat64** | The price precision. | [optional] 
**SizePrecision** | Pointer to **NullableFloat64** | The size precision. | [optional] 
**RawKvp** | Pointer to **map[string]string** | Not normalized raw kvp data. | [optional] 
**VolumeToUsd** | Pointer to **NullableFloat64** | Volume unit in USD. | [optional] 

## Methods

### NewV1Symbol

`func NewV1Symbol() *V1Symbol`

NewV1Symbol instantiates a new V1Symbol object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewV1SymbolWithDefaults

`func NewV1SymbolWithDefaults() *V1Symbol`

NewV1SymbolWithDefaults instantiates a new V1Symbol object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbolId

`func (o *V1Symbol) GetSymbolId() string`

GetSymbolId returns the SymbolId field if non-nil, zero value otherwise.

### GetSymbolIdOk

`func (o *V1Symbol) GetSymbolIdOk() (*string, bool)`

GetSymbolIdOk returns a tuple with the SymbolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolId

`func (o *V1Symbol) SetSymbolId(v string)`

SetSymbolId sets SymbolId field to given value.

### HasSymbolId

`func (o *V1Symbol) HasSymbolId() bool`

HasSymbolId returns a boolean if a field has been set.

### SetSymbolIdNil

`func (o *V1Symbol) SetSymbolIdNil(b bool)`

 SetSymbolIdNil sets the value for SymbolId to be an explicit nil

### UnsetSymbolId
`func (o *V1Symbol) UnsetSymbolId()`

UnsetSymbolId ensures that no value is present for SymbolId, not even an explicit nil
### GetExchangeId

`func (o *V1Symbol) GetExchangeId() string`

GetExchangeId returns the ExchangeId field if non-nil, zero value otherwise.

### GetExchangeIdOk

`func (o *V1Symbol) GetExchangeIdOk() (*string, bool)`

GetExchangeIdOk returns a tuple with the ExchangeId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeId

`func (o *V1Symbol) SetExchangeId(v string)`

SetExchangeId sets ExchangeId field to given value.

### HasExchangeId

`func (o *V1Symbol) HasExchangeId() bool`

HasExchangeId returns a boolean if a field has been set.

### SetExchangeIdNil

`func (o *V1Symbol) SetExchangeIdNil(b bool)`

 SetExchangeIdNil sets the value for ExchangeId to be an explicit nil

### UnsetExchangeId
`func (o *V1Symbol) UnsetExchangeId()`

UnsetExchangeId ensures that no value is present for ExchangeId, not even an explicit nil
### GetSymbolType

`func (o *V1Symbol) GetSymbolType() string`

GetSymbolType returns the SymbolType field if non-nil, zero value otherwise.

### GetSymbolTypeOk

`func (o *V1Symbol) GetSymbolTypeOk() (*string, bool)`

GetSymbolTypeOk returns a tuple with the SymbolType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolType

`func (o *V1Symbol) SetSymbolType(v string)`

SetSymbolType sets SymbolType field to given value.

### HasSymbolType

`func (o *V1Symbol) HasSymbolType() bool`

HasSymbolType returns a boolean if a field has been set.

### SetSymbolTypeNil

`func (o *V1Symbol) SetSymbolTypeNil(b bool)`

 SetSymbolTypeNil sets the value for SymbolType to be an explicit nil

### UnsetSymbolType
`func (o *V1Symbol) UnsetSymbolType()`

UnsetSymbolType ensures that no value is present for SymbolType, not even an explicit nil
### GetAssetIdBase

`func (o *V1Symbol) GetAssetIdBase() string`

GetAssetIdBase returns the AssetIdBase field if non-nil, zero value otherwise.

### GetAssetIdBaseOk

`func (o *V1Symbol) GetAssetIdBaseOk() (*string, bool)`

GetAssetIdBaseOk returns a tuple with the AssetIdBase field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetIdBase

`func (o *V1Symbol) SetAssetIdBase(v string)`

SetAssetIdBase sets AssetIdBase field to given value.

### HasAssetIdBase

`func (o *V1Symbol) HasAssetIdBase() bool`

HasAssetIdBase returns a boolean if a field has been set.

### SetAssetIdBaseNil

`func (o *V1Symbol) SetAssetIdBaseNil(b bool)`

 SetAssetIdBaseNil sets the value for AssetIdBase to be an explicit nil

### UnsetAssetIdBase
`func (o *V1Symbol) UnsetAssetIdBase()`

UnsetAssetIdBase ensures that no value is present for AssetIdBase, not even an explicit nil
### GetAssetIdQuote

`func (o *V1Symbol) GetAssetIdQuote() string`

GetAssetIdQuote returns the AssetIdQuote field if non-nil, zero value otherwise.

### GetAssetIdQuoteOk

`func (o *V1Symbol) GetAssetIdQuoteOk() (*string, bool)`

GetAssetIdQuoteOk returns a tuple with the AssetIdQuote field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetIdQuote

`func (o *V1Symbol) SetAssetIdQuote(v string)`

SetAssetIdQuote sets AssetIdQuote field to given value.

### HasAssetIdQuote

`func (o *V1Symbol) HasAssetIdQuote() bool`

HasAssetIdQuote returns a boolean if a field has been set.

### SetAssetIdQuoteNil

`func (o *V1Symbol) SetAssetIdQuoteNil(b bool)`

 SetAssetIdQuoteNil sets the value for AssetIdQuote to be an explicit nil

### UnsetAssetIdQuote
`func (o *V1Symbol) UnsetAssetIdQuote()`

UnsetAssetIdQuote ensures that no value is present for AssetIdQuote, not even an explicit nil
### GetAssetIdUnit

`func (o *V1Symbol) GetAssetIdUnit() string`

GetAssetIdUnit returns the AssetIdUnit field if non-nil, zero value otherwise.

### GetAssetIdUnitOk

`func (o *V1Symbol) GetAssetIdUnitOk() (*string, bool)`

GetAssetIdUnitOk returns a tuple with the AssetIdUnit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetIdUnit

`func (o *V1Symbol) SetAssetIdUnit(v string)`

SetAssetIdUnit sets AssetIdUnit field to given value.

### HasAssetIdUnit

`func (o *V1Symbol) HasAssetIdUnit() bool`

HasAssetIdUnit returns a boolean if a field has been set.

### SetAssetIdUnitNil

`func (o *V1Symbol) SetAssetIdUnitNil(b bool)`

 SetAssetIdUnitNil sets the value for AssetIdUnit to be an explicit nil

### UnsetAssetIdUnit
`func (o *V1Symbol) UnsetAssetIdUnit()`

UnsetAssetIdUnit ensures that no value is present for AssetIdUnit, not even an explicit nil
### GetFutureContractUnit

`func (o *V1Symbol) GetFutureContractUnit() float64`

GetFutureContractUnit returns the FutureContractUnit field if non-nil, zero value otherwise.

### GetFutureContractUnitOk

`func (o *V1Symbol) GetFutureContractUnitOk() (*float64, bool)`

GetFutureContractUnitOk returns a tuple with the FutureContractUnit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFutureContractUnit

`func (o *V1Symbol) SetFutureContractUnit(v float64)`

SetFutureContractUnit sets FutureContractUnit field to given value.

### HasFutureContractUnit

`func (o *V1Symbol) HasFutureContractUnit() bool`

HasFutureContractUnit returns a boolean if a field has been set.

### SetFutureContractUnitNil

`func (o *V1Symbol) SetFutureContractUnitNil(b bool)`

 SetFutureContractUnitNil sets the value for FutureContractUnit to be an explicit nil

### UnsetFutureContractUnit
`func (o *V1Symbol) UnsetFutureContractUnit()`

UnsetFutureContractUnit ensures that no value is present for FutureContractUnit, not even an explicit nil
### GetFutureContractUnitAsset

`func (o *V1Symbol) GetFutureContractUnitAsset() string`

GetFutureContractUnitAsset returns the FutureContractUnitAsset field if non-nil, zero value otherwise.

### GetFutureContractUnitAssetOk

`func (o *V1Symbol) GetFutureContractUnitAssetOk() (*string, bool)`

GetFutureContractUnitAssetOk returns a tuple with the FutureContractUnitAsset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFutureContractUnitAsset

`func (o *V1Symbol) SetFutureContractUnitAsset(v string)`

SetFutureContractUnitAsset sets FutureContractUnitAsset field to given value.

### HasFutureContractUnitAsset

`func (o *V1Symbol) HasFutureContractUnitAsset() bool`

HasFutureContractUnitAsset returns a boolean if a field has been set.

### SetFutureContractUnitAssetNil

`func (o *V1Symbol) SetFutureContractUnitAssetNil(b bool)`

 SetFutureContractUnitAssetNil sets the value for FutureContractUnitAsset to be an explicit nil

### UnsetFutureContractUnitAsset
`func (o *V1Symbol) UnsetFutureContractUnitAsset()`

UnsetFutureContractUnitAsset ensures that no value is present for FutureContractUnitAsset, not even an explicit nil
### GetFutureDeliveryTime

`func (o *V1Symbol) GetFutureDeliveryTime() time.Time`

GetFutureDeliveryTime returns the FutureDeliveryTime field if non-nil, zero value otherwise.

### GetFutureDeliveryTimeOk

`func (o *V1Symbol) GetFutureDeliveryTimeOk() (*time.Time, bool)`

GetFutureDeliveryTimeOk returns a tuple with the FutureDeliveryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFutureDeliveryTime

`func (o *V1Symbol) SetFutureDeliveryTime(v time.Time)`

SetFutureDeliveryTime sets FutureDeliveryTime field to given value.

### HasFutureDeliveryTime

`func (o *V1Symbol) HasFutureDeliveryTime() bool`

HasFutureDeliveryTime returns a boolean if a field has been set.

### SetFutureDeliveryTimeNil

`func (o *V1Symbol) SetFutureDeliveryTimeNil(b bool)`

 SetFutureDeliveryTimeNil sets the value for FutureDeliveryTime to be an explicit nil

### UnsetFutureDeliveryTime
`func (o *V1Symbol) UnsetFutureDeliveryTime()`

UnsetFutureDeliveryTime ensures that no value is present for FutureDeliveryTime, not even an explicit nil
### GetOptionTypeIsCall

`func (o *V1Symbol) GetOptionTypeIsCall() bool`

GetOptionTypeIsCall returns the OptionTypeIsCall field if non-nil, zero value otherwise.

### GetOptionTypeIsCallOk

`func (o *V1Symbol) GetOptionTypeIsCallOk() (*bool, bool)`

GetOptionTypeIsCallOk returns a tuple with the OptionTypeIsCall field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOptionTypeIsCall

`func (o *V1Symbol) SetOptionTypeIsCall(v bool)`

SetOptionTypeIsCall sets OptionTypeIsCall field to given value.

### HasOptionTypeIsCall

`func (o *V1Symbol) HasOptionTypeIsCall() bool`

HasOptionTypeIsCall returns a boolean if a field has been set.

### SetOptionTypeIsCallNil

`func (o *V1Symbol) SetOptionTypeIsCallNil(b bool)`

 SetOptionTypeIsCallNil sets the value for OptionTypeIsCall to be an explicit nil

### UnsetOptionTypeIsCall
`func (o *V1Symbol) UnsetOptionTypeIsCall()`

UnsetOptionTypeIsCall ensures that no value is present for OptionTypeIsCall, not even an explicit nil
### GetOptionStrikePrice

`func (o *V1Symbol) GetOptionStrikePrice() float64`

GetOptionStrikePrice returns the OptionStrikePrice field if non-nil, zero value otherwise.

### GetOptionStrikePriceOk

`func (o *V1Symbol) GetOptionStrikePriceOk() (*float64, bool)`

GetOptionStrikePriceOk returns a tuple with the OptionStrikePrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOptionStrikePrice

`func (o *V1Symbol) SetOptionStrikePrice(v float64)`

SetOptionStrikePrice sets OptionStrikePrice field to given value.

### HasOptionStrikePrice

`func (o *V1Symbol) HasOptionStrikePrice() bool`

HasOptionStrikePrice returns a boolean if a field has been set.

### SetOptionStrikePriceNil

`func (o *V1Symbol) SetOptionStrikePriceNil(b bool)`

 SetOptionStrikePriceNil sets the value for OptionStrikePrice to be an explicit nil

### UnsetOptionStrikePrice
`func (o *V1Symbol) UnsetOptionStrikePrice()`

UnsetOptionStrikePrice ensures that no value is present for OptionStrikePrice, not even an explicit nil
### GetOptionContractUnit

`func (o *V1Symbol) GetOptionContractUnit() float64`

GetOptionContractUnit returns the OptionContractUnit field if non-nil, zero value otherwise.

### GetOptionContractUnitOk

`func (o *V1Symbol) GetOptionContractUnitOk() (*float64, bool)`

GetOptionContractUnitOk returns a tuple with the OptionContractUnit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOptionContractUnit

`func (o *V1Symbol) SetOptionContractUnit(v float64)`

SetOptionContractUnit sets OptionContractUnit field to given value.

### HasOptionContractUnit

`func (o *V1Symbol) HasOptionContractUnit() bool`

HasOptionContractUnit returns a boolean if a field has been set.

### SetOptionContractUnitNil

`func (o *V1Symbol) SetOptionContractUnitNil(b bool)`

 SetOptionContractUnitNil sets the value for OptionContractUnit to be an explicit nil

### UnsetOptionContractUnit
`func (o *V1Symbol) UnsetOptionContractUnit()`

UnsetOptionContractUnit ensures that no value is present for OptionContractUnit, not even an explicit nil
### GetOptionExerciseStyle

`func (o *V1Symbol) GetOptionExerciseStyle() string`

GetOptionExerciseStyle returns the OptionExerciseStyle field if non-nil, zero value otherwise.

### GetOptionExerciseStyleOk

`func (o *V1Symbol) GetOptionExerciseStyleOk() (*string, bool)`

GetOptionExerciseStyleOk returns a tuple with the OptionExerciseStyle field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOptionExerciseStyle

`func (o *V1Symbol) SetOptionExerciseStyle(v string)`

SetOptionExerciseStyle sets OptionExerciseStyle field to given value.

### HasOptionExerciseStyle

`func (o *V1Symbol) HasOptionExerciseStyle() bool`

HasOptionExerciseStyle returns a boolean if a field has been set.

### SetOptionExerciseStyleNil

`func (o *V1Symbol) SetOptionExerciseStyleNil(b bool)`

 SetOptionExerciseStyleNil sets the value for OptionExerciseStyle to be an explicit nil

### UnsetOptionExerciseStyle
`func (o *V1Symbol) UnsetOptionExerciseStyle()`

UnsetOptionExerciseStyle ensures that no value is present for OptionExerciseStyle, not even an explicit nil
### GetOptionExpirationTime

`func (o *V1Symbol) GetOptionExpirationTime() time.Time`

GetOptionExpirationTime returns the OptionExpirationTime field if non-nil, zero value otherwise.

### GetOptionExpirationTimeOk

`func (o *V1Symbol) GetOptionExpirationTimeOk() (*time.Time, bool)`

GetOptionExpirationTimeOk returns a tuple with the OptionExpirationTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOptionExpirationTime

`func (o *V1Symbol) SetOptionExpirationTime(v time.Time)`

SetOptionExpirationTime sets OptionExpirationTime field to given value.

### HasOptionExpirationTime

`func (o *V1Symbol) HasOptionExpirationTime() bool`

HasOptionExpirationTime returns a boolean if a field has been set.

### SetOptionExpirationTimeNil

`func (o *V1Symbol) SetOptionExpirationTimeNil(b bool)`

 SetOptionExpirationTimeNil sets the value for OptionExpirationTime to be an explicit nil

### UnsetOptionExpirationTime
`func (o *V1Symbol) UnsetOptionExpirationTime()`

UnsetOptionExpirationTime ensures that no value is present for OptionExpirationTime, not even an explicit nil
### GetContractDeliveryTime

`func (o *V1Symbol) GetContractDeliveryTime() time.Time`

GetContractDeliveryTime returns the ContractDeliveryTime field if non-nil, zero value otherwise.

### GetContractDeliveryTimeOk

`func (o *V1Symbol) GetContractDeliveryTimeOk() (*time.Time, bool)`

GetContractDeliveryTimeOk returns a tuple with the ContractDeliveryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContractDeliveryTime

`func (o *V1Symbol) SetContractDeliveryTime(v time.Time)`

SetContractDeliveryTime sets ContractDeliveryTime field to given value.

### HasContractDeliveryTime

`func (o *V1Symbol) HasContractDeliveryTime() bool`

HasContractDeliveryTime returns a boolean if a field has been set.

### SetContractDeliveryTimeNil

`func (o *V1Symbol) SetContractDeliveryTimeNil(b bool)`

 SetContractDeliveryTimeNil sets the value for ContractDeliveryTime to be an explicit nil

### UnsetContractDeliveryTime
`func (o *V1Symbol) UnsetContractDeliveryTime()`

UnsetContractDeliveryTime ensures that no value is present for ContractDeliveryTime, not even an explicit nil
### GetContractUnit

`func (o *V1Symbol) GetContractUnit() float64`

GetContractUnit returns the ContractUnit field if non-nil, zero value otherwise.

### GetContractUnitOk

`func (o *V1Symbol) GetContractUnitOk() (*float64, bool)`

GetContractUnitOk returns a tuple with the ContractUnit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContractUnit

`func (o *V1Symbol) SetContractUnit(v float64)`

SetContractUnit sets ContractUnit field to given value.

### HasContractUnit

`func (o *V1Symbol) HasContractUnit() bool`

HasContractUnit returns a boolean if a field has been set.

### SetContractUnitNil

`func (o *V1Symbol) SetContractUnitNil(b bool)`

 SetContractUnitNil sets the value for ContractUnit to be an explicit nil

### UnsetContractUnit
`func (o *V1Symbol) UnsetContractUnit()`

UnsetContractUnit ensures that no value is present for ContractUnit, not even an explicit nil
### GetContractUnitAsset

`func (o *V1Symbol) GetContractUnitAsset() string`

GetContractUnitAsset returns the ContractUnitAsset field if non-nil, zero value otherwise.

### GetContractUnitAssetOk

`func (o *V1Symbol) GetContractUnitAssetOk() (*string, bool)`

GetContractUnitAssetOk returns a tuple with the ContractUnitAsset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContractUnitAsset

`func (o *V1Symbol) SetContractUnitAsset(v string)`

SetContractUnitAsset sets ContractUnitAsset field to given value.

### HasContractUnitAsset

`func (o *V1Symbol) HasContractUnitAsset() bool`

HasContractUnitAsset returns a boolean if a field has been set.

### SetContractUnitAssetNil

`func (o *V1Symbol) SetContractUnitAssetNil(b bool)`

 SetContractUnitAssetNil sets the value for ContractUnitAsset to be an explicit nil

### UnsetContractUnitAsset
`func (o *V1Symbol) UnsetContractUnitAsset()`

UnsetContractUnitAsset ensures that no value is present for ContractUnitAsset, not even an explicit nil
### GetContractId

`func (o *V1Symbol) GetContractId() string`

GetContractId returns the ContractId field if non-nil, zero value otherwise.

### GetContractIdOk

`func (o *V1Symbol) GetContractIdOk() (*string, bool)`

GetContractIdOk returns a tuple with the ContractId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContractId

`func (o *V1Symbol) SetContractId(v string)`

SetContractId sets ContractId field to given value.

### HasContractId

`func (o *V1Symbol) HasContractId() bool`

HasContractId returns a boolean if a field has been set.

### SetContractIdNil

`func (o *V1Symbol) SetContractIdNil(b bool)`

 SetContractIdNil sets the value for ContractId to be an explicit nil

### UnsetContractId
`func (o *V1Symbol) UnsetContractId()`

UnsetContractId ensures that no value is present for ContractId, not even an explicit nil
### GetContractDisplayName

`func (o *V1Symbol) GetContractDisplayName() string`

GetContractDisplayName returns the ContractDisplayName field if non-nil, zero value otherwise.

### GetContractDisplayNameOk

`func (o *V1Symbol) GetContractDisplayNameOk() (*string, bool)`

GetContractDisplayNameOk returns a tuple with the ContractDisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContractDisplayName

`func (o *V1Symbol) SetContractDisplayName(v string)`

SetContractDisplayName sets ContractDisplayName field to given value.

### HasContractDisplayName

`func (o *V1Symbol) HasContractDisplayName() bool`

HasContractDisplayName returns a boolean if a field has been set.

### SetContractDisplayNameNil

`func (o *V1Symbol) SetContractDisplayNameNil(b bool)`

 SetContractDisplayNameNil sets the value for ContractDisplayName to be an explicit nil

### UnsetContractDisplayName
`func (o *V1Symbol) UnsetContractDisplayName()`

UnsetContractDisplayName ensures that no value is present for ContractDisplayName, not even an explicit nil
### GetContractDisplayDescription

`func (o *V1Symbol) GetContractDisplayDescription() string`

GetContractDisplayDescription returns the ContractDisplayDescription field if non-nil, zero value otherwise.

### GetContractDisplayDescriptionOk

`func (o *V1Symbol) GetContractDisplayDescriptionOk() (*string, bool)`

GetContractDisplayDescriptionOk returns a tuple with the ContractDisplayDescription field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContractDisplayDescription

`func (o *V1Symbol) SetContractDisplayDescription(v string)`

SetContractDisplayDescription sets ContractDisplayDescription field to given value.

### HasContractDisplayDescription

`func (o *V1Symbol) HasContractDisplayDescription() bool`

HasContractDisplayDescription returns a boolean if a field has been set.

### SetContractDisplayDescriptionNil

`func (o *V1Symbol) SetContractDisplayDescriptionNil(b bool)`

 SetContractDisplayDescriptionNil sets the value for ContractDisplayDescription to be an explicit nil

### UnsetContractDisplayDescription
`func (o *V1Symbol) UnsetContractDisplayDescription()`

UnsetContractDisplayDescription ensures that no value is present for ContractDisplayDescription, not even an explicit nil
### GetDataStart

`func (o *V1Symbol) GetDataStart() string`

GetDataStart returns the DataStart field if non-nil, zero value otherwise.

### GetDataStartOk

`func (o *V1Symbol) GetDataStartOk() (*string, bool)`

GetDataStartOk returns a tuple with the DataStart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataStart

`func (o *V1Symbol) SetDataStart(v string)`

SetDataStart sets DataStart field to given value.

### HasDataStart

`func (o *V1Symbol) HasDataStart() bool`

HasDataStart returns a boolean if a field has been set.

### SetDataStartNil

`func (o *V1Symbol) SetDataStartNil(b bool)`

 SetDataStartNil sets the value for DataStart to be an explicit nil

### UnsetDataStart
`func (o *V1Symbol) UnsetDataStart()`

UnsetDataStart ensures that no value is present for DataStart, not even an explicit nil
### GetDataEnd

`func (o *V1Symbol) GetDataEnd() string`

GetDataEnd returns the DataEnd field if non-nil, zero value otherwise.

### GetDataEndOk

`func (o *V1Symbol) GetDataEndOk() (*string, bool)`

GetDataEndOk returns a tuple with the DataEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataEnd

`func (o *V1Symbol) SetDataEnd(v string)`

SetDataEnd sets DataEnd field to given value.

### HasDataEnd

`func (o *V1Symbol) HasDataEnd() bool`

HasDataEnd returns a boolean if a field has been set.

### SetDataEndNil

`func (o *V1Symbol) SetDataEndNil(b bool)`

 SetDataEndNil sets the value for DataEnd to be an explicit nil

### UnsetDataEnd
`func (o *V1Symbol) UnsetDataEnd()`

UnsetDataEnd ensures that no value is present for DataEnd, not even an explicit nil
### GetDataQuoteStart

`func (o *V1Symbol) GetDataQuoteStart() time.Time`

GetDataQuoteStart returns the DataQuoteStart field if non-nil, zero value otherwise.

### GetDataQuoteStartOk

`func (o *V1Symbol) GetDataQuoteStartOk() (*time.Time, bool)`

GetDataQuoteStartOk returns a tuple with the DataQuoteStart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataQuoteStart

`func (o *V1Symbol) SetDataQuoteStart(v time.Time)`

SetDataQuoteStart sets DataQuoteStart field to given value.

### HasDataQuoteStart

`func (o *V1Symbol) HasDataQuoteStart() bool`

HasDataQuoteStart returns a boolean if a field has been set.

### SetDataQuoteStartNil

`func (o *V1Symbol) SetDataQuoteStartNil(b bool)`

 SetDataQuoteStartNil sets the value for DataQuoteStart to be an explicit nil

### UnsetDataQuoteStart
`func (o *V1Symbol) UnsetDataQuoteStart()`

UnsetDataQuoteStart ensures that no value is present for DataQuoteStart, not even an explicit nil
### GetDataQuoteEnd

`func (o *V1Symbol) GetDataQuoteEnd() time.Time`

GetDataQuoteEnd returns the DataQuoteEnd field if non-nil, zero value otherwise.

### GetDataQuoteEndOk

`func (o *V1Symbol) GetDataQuoteEndOk() (*time.Time, bool)`

GetDataQuoteEndOk returns a tuple with the DataQuoteEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataQuoteEnd

`func (o *V1Symbol) SetDataQuoteEnd(v time.Time)`

SetDataQuoteEnd sets DataQuoteEnd field to given value.

### HasDataQuoteEnd

`func (o *V1Symbol) HasDataQuoteEnd() bool`

HasDataQuoteEnd returns a boolean if a field has been set.

### SetDataQuoteEndNil

`func (o *V1Symbol) SetDataQuoteEndNil(b bool)`

 SetDataQuoteEndNil sets the value for DataQuoteEnd to be an explicit nil

### UnsetDataQuoteEnd
`func (o *V1Symbol) UnsetDataQuoteEnd()`

UnsetDataQuoteEnd ensures that no value is present for DataQuoteEnd, not even an explicit nil
### GetDataOrderbookStart

`func (o *V1Symbol) GetDataOrderbookStart() time.Time`

GetDataOrderbookStart returns the DataOrderbookStart field if non-nil, zero value otherwise.

### GetDataOrderbookStartOk

`func (o *V1Symbol) GetDataOrderbookStartOk() (*time.Time, bool)`

GetDataOrderbookStartOk returns a tuple with the DataOrderbookStart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataOrderbookStart

`func (o *V1Symbol) SetDataOrderbookStart(v time.Time)`

SetDataOrderbookStart sets DataOrderbookStart field to given value.

### HasDataOrderbookStart

`func (o *V1Symbol) HasDataOrderbookStart() bool`

HasDataOrderbookStart returns a boolean if a field has been set.

### SetDataOrderbookStartNil

`func (o *V1Symbol) SetDataOrderbookStartNil(b bool)`

 SetDataOrderbookStartNil sets the value for DataOrderbookStart to be an explicit nil

### UnsetDataOrderbookStart
`func (o *V1Symbol) UnsetDataOrderbookStart()`

UnsetDataOrderbookStart ensures that no value is present for DataOrderbookStart, not even an explicit nil
### GetDataOrderbookEnd

`func (o *V1Symbol) GetDataOrderbookEnd() time.Time`

GetDataOrderbookEnd returns the DataOrderbookEnd field if non-nil, zero value otherwise.

### GetDataOrderbookEndOk

`func (o *V1Symbol) GetDataOrderbookEndOk() (*time.Time, bool)`

GetDataOrderbookEndOk returns a tuple with the DataOrderbookEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataOrderbookEnd

`func (o *V1Symbol) SetDataOrderbookEnd(v time.Time)`

SetDataOrderbookEnd sets DataOrderbookEnd field to given value.

### HasDataOrderbookEnd

`func (o *V1Symbol) HasDataOrderbookEnd() bool`

HasDataOrderbookEnd returns a boolean if a field has been set.

### SetDataOrderbookEndNil

`func (o *V1Symbol) SetDataOrderbookEndNil(b bool)`

 SetDataOrderbookEndNil sets the value for DataOrderbookEnd to be an explicit nil

### UnsetDataOrderbookEnd
`func (o *V1Symbol) UnsetDataOrderbookEnd()`

UnsetDataOrderbookEnd ensures that no value is present for DataOrderbookEnd, not even an explicit nil
### GetDataTradeStart

`func (o *V1Symbol) GetDataTradeStart() time.Time`

GetDataTradeStart returns the DataTradeStart field if non-nil, zero value otherwise.

### GetDataTradeStartOk

`func (o *V1Symbol) GetDataTradeStartOk() (*time.Time, bool)`

GetDataTradeStartOk returns a tuple with the DataTradeStart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataTradeStart

`func (o *V1Symbol) SetDataTradeStart(v time.Time)`

SetDataTradeStart sets DataTradeStart field to given value.

### HasDataTradeStart

`func (o *V1Symbol) HasDataTradeStart() bool`

HasDataTradeStart returns a boolean if a field has been set.

### SetDataTradeStartNil

`func (o *V1Symbol) SetDataTradeStartNil(b bool)`

 SetDataTradeStartNil sets the value for DataTradeStart to be an explicit nil

### UnsetDataTradeStart
`func (o *V1Symbol) UnsetDataTradeStart()`

UnsetDataTradeStart ensures that no value is present for DataTradeStart, not even an explicit nil
### GetDataTradeEnd

`func (o *V1Symbol) GetDataTradeEnd() time.Time`

GetDataTradeEnd returns the DataTradeEnd field if non-nil, zero value otherwise.

### GetDataTradeEndOk

`func (o *V1Symbol) GetDataTradeEndOk() (*time.Time, bool)`

GetDataTradeEndOk returns a tuple with the DataTradeEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataTradeEnd

`func (o *V1Symbol) SetDataTradeEnd(v time.Time)`

SetDataTradeEnd sets DataTradeEnd field to given value.

### HasDataTradeEnd

`func (o *V1Symbol) HasDataTradeEnd() bool`

HasDataTradeEnd returns a boolean if a field has been set.

### SetDataTradeEndNil

`func (o *V1Symbol) SetDataTradeEndNil(b bool)`

 SetDataTradeEndNil sets the value for DataTradeEnd to be an explicit nil

### UnsetDataTradeEnd
`func (o *V1Symbol) UnsetDataTradeEnd()`

UnsetDataTradeEnd ensures that no value is present for DataTradeEnd, not even an explicit nil
### GetIndexId

`func (o *V1Symbol) GetIndexId() string`

GetIndexId returns the IndexId field if non-nil, zero value otherwise.

### GetIndexIdOk

`func (o *V1Symbol) GetIndexIdOk() (*string, bool)`

GetIndexIdOk returns a tuple with the IndexId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIndexId

`func (o *V1Symbol) SetIndexId(v string)`

SetIndexId sets IndexId field to given value.

### HasIndexId

`func (o *V1Symbol) HasIndexId() bool`

HasIndexId returns a boolean if a field has been set.

### SetIndexIdNil

`func (o *V1Symbol) SetIndexIdNil(b bool)`

 SetIndexIdNil sets the value for IndexId to be an explicit nil

### UnsetIndexId
`func (o *V1Symbol) UnsetIndexId()`

UnsetIndexId ensures that no value is present for IndexId, not even an explicit nil
### GetIndexDisplayName

`func (o *V1Symbol) GetIndexDisplayName() string`

GetIndexDisplayName returns the IndexDisplayName field if non-nil, zero value otherwise.

### GetIndexDisplayNameOk

`func (o *V1Symbol) GetIndexDisplayNameOk() (*string, bool)`

GetIndexDisplayNameOk returns a tuple with the IndexDisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIndexDisplayName

`func (o *V1Symbol) SetIndexDisplayName(v string)`

SetIndexDisplayName sets IndexDisplayName field to given value.

### HasIndexDisplayName

`func (o *V1Symbol) HasIndexDisplayName() bool`

HasIndexDisplayName returns a boolean if a field has been set.

### SetIndexDisplayNameNil

`func (o *V1Symbol) SetIndexDisplayNameNil(b bool)`

 SetIndexDisplayNameNil sets the value for IndexDisplayName to be an explicit nil

### UnsetIndexDisplayName
`func (o *V1Symbol) UnsetIndexDisplayName()`

UnsetIndexDisplayName ensures that no value is present for IndexDisplayName, not even an explicit nil
### GetIndexDisplayDescription

`func (o *V1Symbol) GetIndexDisplayDescription() string`

GetIndexDisplayDescription returns the IndexDisplayDescription field if non-nil, zero value otherwise.

### GetIndexDisplayDescriptionOk

`func (o *V1Symbol) GetIndexDisplayDescriptionOk() (*string, bool)`

GetIndexDisplayDescriptionOk returns a tuple with the IndexDisplayDescription field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIndexDisplayDescription

`func (o *V1Symbol) SetIndexDisplayDescription(v string)`

SetIndexDisplayDescription sets IndexDisplayDescription field to given value.

### HasIndexDisplayDescription

`func (o *V1Symbol) HasIndexDisplayDescription() bool`

HasIndexDisplayDescription returns a boolean if a field has been set.

### SetIndexDisplayDescriptionNil

`func (o *V1Symbol) SetIndexDisplayDescriptionNil(b bool)`

 SetIndexDisplayDescriptionNil sets the value for IndexDisplayDescription to be an explicit nil

### UnsetIndexDisplayDescription
`func (o *V1Symbol) UnsetIndexDisplayDescription()`

UnsetIndexDisplayDescription ensures that no value is present for IndexDisplayDescription, not even an explicit nil
### GetVolume1hrs

`func (o *V1Symbol) GetVolume1hrs() float64`

GetVolume1hrs returns the Volume1hrs field if non-nil, zero value otherwise.

### GetVolume1hrsOk

`func (o *V1Symbol) GetVolume1hrsOk() (*float64, bool)`

GetVolume1hrsOk returns a tuple with the Volume1hrs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolume1hrs

`func (o *V1Symbol) SetVolume1hrs(v float64)`

SetVolume1hrs sets Volume1hrs field to given value.

### HasVolume1hrs

`func (o *V1Symbol) HasVolume1hrs() bool`

HasVolume1hrs returns a boolean if a field has been set.

### SetVolume1hrsNil

`func (o *V1Symbol) SetVolume1hrsNil(b bool)`

 SetVolume1hrsNil sets the value for Volume1hrs to be an explicit nil

### UnsetVolume1hrs
`func (o *V1Symbol) UnsetVolume1hrs()`

UnsetVolume1hrs ensures that no value is present for Volume1hrs, not even an explicit nil
### GetVolume1hrsUsd

`func (o *V1Symbol) GetVolume1hrsUsd() float64`

GetVolume1hrsUsd returns the Volume1hrsUsd field if non-nil, zero value otherwise.

### GetVolume1hrsUsdOk

`func (o *V1Symbol) GetVolume1hrsUsdOk() (*float64, bool)`

GetVolume1hrsUsdOk returns a tuple with the Volume1hrsUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolume1hrsUsd

`func (o *V1Symbol) SetVolume1hrsUsd(v float64)`

SetVolume1hrsUsd sets Volume1hrsUsd field to given value.

### HasVolume1hrsUsd

`func (o *V1Symbol) HasVolume1hrsUsd() bool`

HasVolume1hrsUsd returns a boolean if a field has been set.

### SetVolume1hrsUsdNil

`func (o *V1Symbol) SetVolume1hrsUsdNil(b bool)`

 SetVolume1hrsUsdNil sets the value for Volume1hrsUsd to be an explicit nil

### UnsetVolume1hrsUsd
`func (o *V1Symbol) UnsetVolume1hrsUsd()`

UnsetVolume1hrsUsd ensures that no value is present for Volume1hrsUsd, not even an explicit nil
### GetVolume1day

`func (o *V1Symbol) GetVolume1day() float64`

GetVolume1day returns the Volume1day field if non-nil, zero value otherwise.

### GetVolume1dayOk

`func (o *V1Symbol) GetVolume1dayOk() (*float64, bool)`

GetVolume1dayOk returns a tuple with the Volume1day field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolume1day

`func (o *V1Symbol) SetVolume1day(v float64)`

SetVolume1day sets Volume1day field to given value.

### HasVolume1day

`func (o *V1Symbol) HasVolume1day() bool`

HasVolume1day returns a boolean if a field has been set.

### SetVolume1dayNil

`func (o *V1Symbol) SetVolume1dayNil(b bool)`

 SetVolume1dayNil sets the value for Volume1day to be an explicit nil

### UnsetVolume1day
`func (o *V1Symbol) UnsetVolume1day()`

UnsetVolume1day ensures that no value is present for Volume1day, not even an explicit nil
### GetVolume1dayUsd

`func (o *V1Symbol) GetVolume1dayUsd() float64`

GetVolume1dayUsd returns the Volume1dayUsd field if non-nil, zero value otherwise.

### GetVolume1dayUsdOk

`func (o *V1Symbol) GetVolume1dayUsdOk() (*float64, bool)`

GetVolume1dayUsdOk returns a tuple with the Volume1dayUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolume1dayUsd

`func (o *V1Symbol) SetVolume1dayUsd(v float64)`

SetVolume1dayUsd sets Volume1dayUsd field to given value.

### HasVolume1dayUsd

`func (o *V1Symbol) HasVolume1dayUsd() bool`

HasVolume1dayUsd returns a boolean if a field has been set.

### SetVolume1dayUsdNil

`func (o *V1Symbol) SetVolume1dayUsdNil(b bool)`

 SetVolume1dayUsdNil sets the value for Volume1dayUsd to be an explicit nil

### UnsetVolume1dayUsd
`func (o *V1Symbol) UnsetVolume1dayUsd()`

UnsetVolume1dayUsd ensures that no value is present for Volume1dayUsd, not even an explicit nil
### GetVolume1mth

`func (o *V1Symbol) GetVolume1mth() float64`

GetVolume1mth returns the Volume1mth field if non-nil, zero value otherwise.

### GetVolume1mthOk

`func (o *V1Symbol) GetVolume1mthOk() (*float64, bool)`

GetVolume1mthOk returns a tuple with the Volume1mth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolume1mth

`func (o *V1Symbol) SetVolume1mth(v float64)`

SetVolume1mth sets Volume1mth field to given value.

### HasVolume1mth

`func (o *V1Symbol) HasVolume1mth() bool`

HasVolume1mth returns a boolean if a field has been set.

### SetVolume1mthNil

`func (o *V1Symbol) SetVolume1mthNil(b bool)`

 SetVolume1mthNil sets the value for Volume1mth to be an explicit nil

### UnsetVolume1mth
`func (o *V1Symbol) UnsetVolume1mth()`

UnsetVolume1mth ensures that no value is present for Volume1mth, not even an explicit nil
### GetVolume1mthUsd

`func (o *V1Symbol) GetVolume1mthUsd() float64`

GetVolume1mthUsd returns the Volume1mthUsd field if non-nil, zero value otherwise.

### GetVolume1mthUsdOk

`func (o *V1Symbol) GetVolume1mthUsdOk() (*float64, bool)`

GetVolume1mthUsdOk returns a tuple with the Volume1mthUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolume1mthUsd

`func (o *V1Symbol) SetVolume1mthUsd(v float64)`

SetVolume1mthUsd sets Volume1mthUsd field to given value.

### HasVolume1mthUsd

`func (o *V1Symbol) HasVolume1mthUsd() bool`

HasVolume1mthUsd returns a boolean if a field has been set.

### SetVolume1mthUsdNil

`func (o *V1Symbol) SetVolume1mthUsdNil(b bool)`

 SetVolume1mthUsdNil sets the value for Volume1mthUsd to be an explicit nil

### UnsetVolume1mthUsd
`func (o *V1Symbol) UnsetVolume1mthUsd()`

UnsetVolume1mthUsd ensures that no value is present for Volume1mthUsd, not even an explicit nil
### GetPrice

`func (o *V1Symbol) GetPrice() float64`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *V1Symbol) GetPriceOk() (*float64, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *V1Symbol) SetPrice(v float64)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *V1Symbol) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### SetPriceNil

`func (o *V1Symbol) SetPriceNil(b bool)`

 SetPriceNil sets the value for Price to be an explicit nil

### UnsetPrice
`func (o *V1Symbol) UnsetPrice()`

UnsetPrice ensures that no value is present for Price, not even an explicit nil
### GetSymbolIdExchange

`func (o *V1Symbol) GetSymbolIdExchange() string`

GetSymbolIdExchange returns the SymbolIdExchange field if non-nil, zero value otherwise.

### GetSymbolIdExchangeOk

`func (o *V1Symbol) GetSymbolIdExchangeOk() (*string, bool)`

GetSymbolIdExchangeOk returns a tuple with the SymbolIdExchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolIdExchange

`func (o *V1Symbol) SetSymbolIdExchange(v string)`

SetSymbolIdExchange sets SymbolIdExchange field to given value.

### HasSymbolIdExchange

`func (o *V1Symbol) HasSymbolIdExchange() bool`

HasSymbolIdExchange returns a boolean if a field has been set.

### SetSymbolIdExchangeNil

`func (o *V1Symbol) SetSymbolIdExchangeNil(b bool)`

 SetSymbolIdExchangeNil sets the value for SymbolIdExchange to be an explicit nil

### UnsetSymbolIdExchange
`func (o *V1Symbol) UnsetSymbolIdExchange()`

UnsetSymbolIdExchange ensures that no value is present for SymbolIdExchange, not even an explicit nil
### GetAssetIdBaseExchange

`func (o *V1Symbol) GetAssetIdBaseExchange() string`

GetAssetIdBaseExchange returns the AssetIdBaseExchange field if non-nil, zero value otherwise.

### GetAssetIdBaseExchangeOk

`func (o *V1Symbol) GetAssetIdBaseExchangeOk() (*string, bool)`

GetAssetIdBaseExchangeOk returns a tuple with the AssetIdBaseExchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetIdBaseExchange

`func (o *V1Symbol) SetAssetIdBaseExchange(v string)`

SetAssetIdBaseExchange sets AssetIdBaseExchange field to given value.

### HasAssetIdBaseExchange

`func (o *V1Symbol) HasAssetIdBaseExchange() bool`

HasAssetIdBaseExchange returns a boolean if a field has been set.

### SetAssetIdBaseExchangeNil

`func (o *V1Symbol) SetAssetIdBaseExchangeNil(b bool)`

 SetAssetIdBaseExchangeNil sets the value for AssetIdBaseExchange to be an explicit nil

### UnsetAssetIdBaseExchange
`func (o *V1Symbol) UnsetAssetIdBaseExchange()`

UnsetAssetIdBaseExchange ensures that no value is present for AssetIdBaseExchange, not even an explicit nil
### GetAssetIdQuoteExchange

`func (o *V1Symbol) GetAssetIdQuoteExchange() string`

GetAssetIdQuoteExchange returns the AssetIdQuoteExchange field if non-nil, zero value otherwise.

### GetAssetIdQuoteExchangeOk

`func (o *V1Symbol) GetAssetIdQuoteExchangeOk() (*string, bool)`

GetAssetIdQuoteExchangeOk returns a tuple with the AssetIdQuoteExchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetIdQuoteExchange

`func (o *V1Symbol) SetAssetIdQuoteExchange(v string)`

SetAssetIdQuoteExchange sets AssetIdQuoteExchange field to given value.

### HasAssetIdQuoteExchange

`func (o *V1Symbol) HasAssetIdQuoteExchange() bool`

HasAssetIdQuoteExchange returns a boolean if a field has been set.

### SetAssetIdQuoteExchangeNil

`func (o *V1Symbol) SetAssetIdQuoteExchangeNil(b bool)`

 SetAssetIdQuoteExchangeNil sets the value for AssetIdQuoteExchange to be an explicit nil

### UnsetAssetIdQuoteExchange
`func (o *V1Symbol) UnsetAssetIdQuoteExchange()`

UnsetAssetIdQuoteExchange ensures that no value is present for AssetIdQuoteExchange, not even an explicit nil
### GetPricePrecision

`func (o *V1Symbol) GetPricePrecision() float64`

GetPricePrecision returns the PricePrecision field if non-nil, zero value otherwise.

### GetPricePrecisionOk

`func (o *V1Symbol) GetPricePrecisionOk() (*float64, bool)`

GetPricePrecisionOk returns a tuple with the PricePrecision field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPricePrecision

`func (o *V1Symbol) SetPricePrecision(v float64)`

SetPricePrecision sets PricePrecision field to given value.

### HasPricePrecision

`func (o *V1Symbol) HasPricePrecision() bool`

HasPricePrecision returns a boolean if a field has been set.

### SetPricePrecisionNil

`func (o *V1Symbol) SetPricePrecisionNil(b bool)`

 SetPricePrecisionNil sets the value for PricePrecision to be an explicit nil

### UnsetPricePrecision
`func (o *V1Symbol) UnsetPricePrecision()`

UnsetPricePrecision ensures that no value is present for PricePrecision, not even an explicit nil
### GetSizePrecision

`func (o *V1Symbol) GetSizePrecision() float64`

GetSizePrecision returns the SizePrecision field if non-nil, zero value otherwise.

### GetSizePrecisionOk

`func (o *V1Symbol) GetSizePrecisionOk() (*float64, bool)`

GetSizePrecisionOk returns a tuple with the SizePrecision field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSizePrecision

`func (o *V1Symbol) SetSizePrecision(v float64)`

SetSizePrecision sets SizePrecision field to given value.

### HasSizePrecision

`func (o *V1Symbol) HasSizePrecision() bool`

HasSizePrecision returns a boolean if a field has been set.

### SetSizePrecisionNil

`func (o *V1Symbol) SetSizePrecisionNil(b bool)`

 SetSizePrecisionNil sets the value for SizePrecision to be an explicit nil

### UnsetSizePrecision
`func (o *V1Symbol) UnsetSizePrecision()`

UnsetSizePrecision ensures that no value is present for SizePrecision, not even an explicit nil
### GetRawKvp

`func (o *V1Symbol) GetRawKvp() map[string]string`

GetRawKvp returns the RawKvp field if non-nil, zero value otherwise.

### GetRawKvpOk

`func (o *V1Symbol) GetRawKvpOk() (*map[string]string, bool)`

GetRawKvpOk returns a tuple with the RawKvp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRawKvp

`func (o *V1Symbol) SetRawKvp(v map[string]string)`

SetRawKvp sets RawKvp field to given value.

### HasRawKvp

`func (o *V1Symbol) HasRawKvp() bool`

HasRawKvp returns a boolean if a field has been set.

### SetRawKvpNil

`func (o *V1Symbol) SetRawKvpNil(b bool)`

 SetRawKvpNil sets the value for RawKvp to be an explicit nil

### UnsetRawKvp
`func (o *V1Symbol) UnsetRawKvp()`

UnsetRawKvp ensures that no value is present for RawKvp, not even an explicit nil
### GetVolumeToUsd

`func (o *V1Symbol) GetVolumeToUsd() float64`

GetVolumeToUsd returns the VolumeToUsd field if non-nil, zero value otherwise.

### GetVolumeToUsdOk

`func (o *V1Symbol) GetVolumeToUsdOk() (*float64, bool)`

GetVolumeToUsdOk returns a tuple with the VolumeToUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeToUsd

`func (o *V1Symbol) SetVolumeToUsd(v float64)`

SetVolumeToUsd sets VolumeToUsd field to given value.

### HasVolumeToUsd

`func (o *V1Symbol) HasVolumeToUsd() bool`

HasVolumeToUsd returns a boolean if a field has been set.

### SetVolumeToUsdNil

`func (o *V1Symbol) SetVolumeToUsdNil(b bool)`

 SetVolumeToUsdNil sets the value for VolumeToUsd to be an explicit nil

### UnsetVolumeToUsd
`func (o *V1Symbol) UnsetVolumeToUsd()`

UnsetVolumeToUsd ensures that no value is present for VolumeToUsd, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


