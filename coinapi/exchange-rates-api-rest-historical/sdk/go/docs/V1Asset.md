# V1Asset

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetId** | Pointer to **NullableString** | Gets or sets the asset ID. | [optional] 
**Name** | Pointer to **NullableString** | Gets or sets the name of the asset. | [optional] 
**TypeIsCrypto** | Pointer to **int32** | Gets or sets a value indicating whether the asset is a cryptocurrency. | [optional] 
**DataQuoteStart** | Pointer to **NullableTime** | Gets or sets the start date of quote data. | [optional] 
**DataQuoteEnd** | Pointer to **NullableTime** | Gets or sets the end date of quote data. | [optional] 
**DataOrderbookStart** | Pointer to **NullableTime** | Gets or sets the start date of order book data. | [optional] 
**DataOrderbookEnd** | Pointer to **NullableTime** | Gets or sets the end date of order book data. | [optional] 
**DataTradeStart** | Pointer to **NullableTime** | Gets or sets the start date of trade data. | [optional] 
**DataTradeEnd** | Pointer to **NullableTime** | Gets or sets the end date of trade data. | [optional] 
**DataSymbolsCount** | Pointer to **NullableInt64** | Gets or sets the number of symbols. | [optional] 
**Volume1hrsUsd** | Pointer to **NullableFloat64** | Gets or sets the USD volume in the last 1 hour. | [optional] 
**Volume1dayUsd** | Pointer to **NullableFloat64** | Gets or sets the USD volume in the last 1 day. | [optional] 
**Volume1mthUsd** | Pointer to **NullableFloat64** | Gets or sets the USD volume in the last 1 month. | [optional] 
**PriceUsd** | Pointer to **NullableFloat64** | Gets or sets the USD price of the asset. | [optional] 
**IdIcon** | Pointer to **NullableString** | Gets or sets the ID of the icon for the asset. | [optional] 
**SupplyCurrent** | Pointer to **NullableFloat64** | Gets or sets the current supply of the asset. | [optional] 
**SupplyTotal** | Pointer to **NullableFloat64** | Gets or sets the total supply of the asset. | [optional] 
**SupplyMax** | Pointer to **NullableFloat64** | Gets or sets the maximum supply of the asset. | [optional] 
**ChainAddresses** | Pointer to [**[]V1ChainNetworkAddress**](V1ChainNetworkAddress.md) |  | [optional] 
**DataStart** | Pointer to **NullableString** |  | [optional] [readonly] 
**DataEnd** | Pointer to **NullableString** |  | [optional] [readonly] 

## Methods

### NewV1Asset

`func NewV1Asset() *V1Asset`

NewV1Asset instantiates a new V1Asset object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewV1AssetWithDefaults

`func NewV1AssetWithDefaults() *V1Asset`

NewV1AssetWithDefaults instantiates a new V1Asset object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAssetId

`func (o *V1Asset) GetAssetId() string`

GetAssetId returns the AssetId field if non-nil, zero value otherwise.

### GetAssetIdOk

`func (o *V1Asset) GetAssetIdOk() (*string, bool)`

GetAssetIdOk returns a tuple with the AssetId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetId

`func (o *V1Asset) SetAssetId(v string)`

SetAssetId sets AssetId field to given value.

### HasAssetId

`func (o *V1Asset) HasAssetId() bool`

HasAssetId returns a boolean if a field has been set.

### SetAssetIdNil

`func (o *V1Asset) SetAssetIdNil(b bool)`

 SetAssetIdNil sets the value for AssetId to be an explicit nil

### UnsetAssetId
`func (o *V1Asset) UnsetAssetId()`

UnsetAssetId ensures that no value is present for AssetId, not even an explicit nil
### GetName

`func (o *V1Asset) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *V1Asset) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *V1Asset) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *V1Asset) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *V1Asset) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *V1Asset) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetTypeIsCrypto

`func (o *V1Asset) GetTypeIsCrypto() int32`

GetTypeIsCrypto returns the TypeIsCrypto field if non-nil, zero value otherwise.

### GetTypeIsCryptoOk

`func (o *V1Asset) GetTypeIsCryptoOk() (*int32, bool)`

GetTypeIsCryptoOk returns a tuple with the TypeIsCrypto field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTypeIsCrypto

`func (o *V1Asset) SetTypeIsCrypto(v int32)`

SetTypeIsCrypto sets TypeIsCrypto field to given value.

### HasTypeIsCrypto

`func (o *V1Asset) HasTypeIsCrypto() bool`

HasTypeIsCrypto returns a boolean if a field has been set.

### GetDataQuoteStart

`func (o *V1Asset) GetDataQuoteStart() time.Time`

GetDataQuoteStart returns the DataQuoteStart field if non-nil, zero value otherwise.

### GetDataQuoteStartOk

`func (o *V1Asset) GetDataQuoteStartOk() (*time.Time, bool)`

GetDataQuoteStartOk returns a tuple with the DataQuoteStart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataQuoteStart

`func (o *V1Asset) SetDataQuoteStart(v time.Time)`

SetDataQuoteStart sets DataQuoteStart field to given value.

### HasDataQuoteStart

`func (o *V1Asset) HasDataQuoteStart() bool`

HasDataQuoteStart returns a boolean if a field has been set.

### SetDataQuoteStartNil

`func (o *V1Asset) SetDataQuoteStartNil(b bool)`

 SetDataQuoteStartNil sets the value for DataQuoteStart to be an explicit nil

### UnsetDataQuoteStart
`func (o *V1Asset) UnsetDataQuoteStart()`

UnsetDataQuoteStart ensures that no value is present for DataQuoteStart, not even an explicit nil
### GetDataQuoteEnd

`func (o *V1Asset) GetDataQuoteEnd() time.Time`

GetDataQuoteEnd returns the DataQuoteEnd field if non-nil, zero value otherwise.

### GetDataQuoteEndOk

`func (o *V1Asset) GetDataQuoteEndOk() (*time.Time, bool)`

GetDataQuoteEndOk returns a tuple with the DataQuoteEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataQuoteEnd

`func (o *V1Asset) SetDataQuoteEnd(v time.Time)`

SetDataQuoteEnd sets DataQuoteEnd field to given value.

### HasDataQuoteEnd

`func (o *V1Asset) HasDataQuoteEnd() bool`

HasDataQuoteEnd returns a boolean if a field has been set.

### SetDataQuoteEndNil

`func (o *V1Asset) SetDataQuoteEndNil(b bool)`

 SetDataQuoteEndNil sets the value for DataQuoteEnd to be an explicit nil

### UnsetDataQuoteEnd
`func (o *V1Asset) UnsetDataQuoteEnd()`

UnsetDataQuoteEnd ensures that no value is present for DataQuoteEnd, not even an explicit nil
### GetDataOrderbookStart

`func (o *V1Asset) GetDataOrderbookStart() time.Time`

GetDataOrderbookStart returns the DataOrderbookStart field if non-nil, zero value otherwise.

### GetDataOrderbookStartOk

`func (o *V1Asset) GetDataOrderbookStartOk() (*time.Time, bool)`

GetDataOrderbookStartOk returns a tuple with the DataOrderbookStart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataOrderbookStart

`func (o *V1Asset) SetDataOrderbookStart(v time.Time)`

SetDataOrderbookStart sets DataOrderbookStart field to given value.

### HasDataOrderbookStart

`func (o *V1Asset) HasDataOrderbookStart() bool`

HasDataOrderbookStart returns a boolean if a field has been set.

### SetDataOrderbookStartNil

`func (o *V1Asset) SetDataOrderbookStartNil(b bool)`

 SetDataOrderbookStartNil sets the value for DataOrderbookStart to be an explicit nil

### UnsetDataOrderbookStart
`func (o *V1Asset) UnsetDataOrderbookStart()`

UnsetDataOrderbookStart ensures that no value is present for DataOrderbookStart, not even an explicit nil
### GetDataOrderbookEnd

`func (o *V1Asset) GetDataOrderbookEnd() time.Time`

GetDataOrderbookEnd returns the DataOrderbookEnd field if non-nil, zero value otherwise.

### GetDataOrderbookEndOk

`func (o *V1Asset) GetDataOrderbookEndOk() (*time.Time, bool)`

GetDataOrderbookEndOk returns a tuple with the DataOrderbookEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataOrderbookEnd

`func (o *V1Asset) SetDataOrderbookEnd(v time.Time)`

SetDataOrderbookEnd sets DataOrderbookEnd field to given value.

### HasDataOrderbookEnd

`func (o *V1Asset) HasDataOrderbookEnd() bool`

HasDataOrderbookEnd returns a boolean if a field has been set.

### SetDataOrderbookEndNil

`func (o *V1Asset) SetDataOrderbookEndNil(b bool)`

 SetDataOrderbookEndNil sets the value for DataOrderbookEnd to be an explicit nil

### UnsetDataOrderbookEnd
`func (o *V1Asset) UnsetDataOrderbookEnd()`

UnsetDataOrderbookEnd ensures that no value is present for DataOrderbookEnd, not even an explicit nil
### GetDataTradeStart

`func (o *V1Asset) GetDataTradeStart() time.Time`

GetDataTradeStart returns the DataTradeStart field if non-nil, zero value otherwise.

### GetDataTradeStartOk

`func (o *V1Asset) GetDataTradeStartOk() (*time.Time, bool)`

GetDataTradeStartOk returns a tuple with the DataTradeStart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataTradeStart

`func (o *V1Asset) SetDataTradeStart(v time.Time)`

SetDataTradeStart sets DataTradeStart field to given value.

### HasDataTradeStart

`func (o *V1Asset) HasDataTradeStart() bool`

HasDataTradeStart returns a boolean if a field has been set.

### SetDataTradeStartNil

`func (o *V1Asset) SetDataTradeStartNil(b bool)`

 SetDataTradeStartNil sets the value for DataTradeStart to be an explicit nil

### UnsetDataTradeStart
`func (o *V1Asset) UnsetDataTradeStart()`

UnsetDataTradeStart ensures that no value is present for DataTradeStart, not even an explicit nil
### GetDataTradeEnd

`func (o *V1Asset) GetDataTradeEnd() time.Time`

GetDataTradeEnd returns the DataTradeEnd field if non-nil, zero value otherwise.

### GetDataTradeEndOk

`func (o *V1Asset) GetDataTradeEndOk() (*time.Time, bool)`

GetDataTradeEndOk returns a tuple with the DataTradeEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataTradeEnd

`func (o *V1Asset) SetDataTradeEnd(v time.Time)`

SetDataTradeEnd sets DataTradeEnd field to given value.

### HasDataTradeEnd

`func (o *V1Asset) HasDataTradeEnd() bool`

HasDataTradeEnd returns a boolean if a field has been set.

### SetDataTradeEndNil

`func (o *V1Asset) SetDataTradeEndNil(b bool)`

 SetDataTradeEndNil sets the value for DataTradeEnd to be an explicit nil

### UnsetDataTradeEnd
`func (o *V1Asset) UnsetDataTradeEnd()`

UnsetDataTradeEnd ensures that no value is present for DataTradeEnd, not even an explicit nil
### GetDataSymbolsCount

`func (o *V1Asset) GetDataSymbolsCount() int64`

GetDataSymbolsCount returns the DataSymbolsCount field if non-nil, zero value otherwise.

### GetDataSymbolsCountOk

`func (o *V1Asset) GetDataSymbolsCountOk() (*int64, bool)`

GetDataSymbolsCountOk returns a tuple with the DataSymbolsCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataSymbolsCount

`func (o *V1Asset) SetDataSymbolsCount(v int64)`

SetDataSymbolsCount sets DataSymbolsCount field to given value.

### HasDataSymbolsCount

`func (o *V1Asset) HasDataSymbolsCount() bool`

HasDataSymbolsCount returns a boolean if a field has been set.

### SetDataSymbolsCountNil

`func (o *V1Asset) SetDataSymbolsCountNil(b bool)`

 SetDataSymbolsCountNil sets the value for DataSymbolsCount to be an explicit nil

### UnsetDataSymbolsCount
`func (o *V1Asset) UnsetDataSymbolsCount()`

UnsetDataSymbolsCount ensures that no value is present for DataSymbolsCount, not even an explicit nil
### GetVolume1hrsUsd

`func (o *V1Asset) GetVolume1hrsUsd() float64`

GetVolume1hrsUsd returns the Volume1hrsUsd field if non-nil, zero value otherwise.

### GetVolume1hrsUsdOk

`func (o *V1Asset) GetVolume1hrsUsdOk() (*float64, bool)`

GetVolume1hrsUsdOk returns a tuple with the Volume1hrsUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolume1hrsUsd

`func (o *V1Asset) SetVolume1hrsUsd(v float64)`

SetVolume1hrsUsd sets Volume1hrsUsd field to given value.

### HasVolume1hrsUsd

`func (o *V1Asset) HasVolume1hrsUsd() bool`

HasVolume1hrsUsd returns a boolean if a field has been set.

### SetVolume1hrsUsdNil

`func (o *V1Asset) SetVolume1hrsUsdNil(b bool)`

 SetVolume1hrsUsdNil sets the value for Volume1hrsUsd to be an explicit nil

### UnsetVolume1hrsUsd
`func (o *V1Asset) UnsetVolume1hrsUsd()`

UnsetVolume1hrsUsd ensures that no value is present for Volume1hrsUsd, not even an explicit nil
### GetVolume1dayUsd

`func (o *V1Asset) GetVolume1dayUsd() float64`

GetVolume1dayUsd returns the Volume1dayUsd field if non-nil, zero value otherwise.

### GetVolume1dayUsdOk

`func (o *V1Asset) GetVolume1dayUsdOk() (*float64, bool)`

GetVolume1dayUsdOk returns a tuple with the Volume1dayUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolume1dayUsd

`func (o *V1Asset) SetVolume1dayUsd(v float64)`

SetVolume1dayUsd sets Volume1dayUsd field to given value.

### HasVolume1dayUsd

`func (o *V1Asset) HasVolume1dayUsd() bool`

HasVolume1dayUsd returns a boolean if a field has been set.

### SetVolume1dayUsdNil

`func (o *V1Asset) SetVolume1dayUsdNil(b bool)`

 SetVolume1dayUsdNil sets the value for Volume1dayUsd to be an explicit nil

### UnsetVolume1dayUsd
`func (o *V1Asset) UnsetVolume1dayUsd()`

UnsetVolume1dayUsd ensures that no value is present for Volume1dayUsd, not even an explicit nil
### GetVolume1mthUsd

`func (o *V1Asset) GetVolume1mthUsd() float64`

GetVolume1mthUsd returns the Volume1mthUsd field if non-nil, zero value otherwise.

### GetVolume1mthUsdOk

`func (o *V1Asset) GetVolume1mthUsdOk() (*float64, bool)`

GetVolume1mthUsdOk returns a tuple with the Volume1mthUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolume1mthUsd

`func (o *V1Asset) SetVolume1mthUsd(v float64)`

SetVolume1mthUsd sets Volume1mthUsd field to given value.

### HasVolume1mthUsd

`func (o *V1Asset) HasVolume1mthUsd() bool`

HasVolume1mthUsd returns a boolean if a field has been set.

### SetVolume1mthUsdNil

`func (o *V1Asset) SetVolume1mthUsdNil(b bool)`

 SetVolume1mthUsdNil sets the value for Volume1mthUsd to be an explicit nil

### UnsetVolume1mthUsd
`func (o *V1Asset) UnsetVolume1mthUsd()`

UnsetVolume1mthUsd ensures that no value is present for Volume1mthUsd, not even an explicit nil
### GetPriceUsd

`func (o *V1Asset) GetPriceUsd() float64`

GetPriceUsd returns the PriceUsd field if non-nil, zero value otherwise.

### GetPriceUsdOk

`func (o *V1Asset) GetPriceUsdOk() (*float64, bool)`

GetPriceUsdOk returns a tuple with the PriceUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceUsd

`func (o *V1Asset) SetPriceUsd(v float64)`

SetPriceUsd sets PriceUsd field to given value.

### HasPriceUsd

`func (o *V1Asset) HasPriceUsd() bool`

HasPriceUsd returns a boolean if a field has been set.

### SetPriceUsdNil

`func (o *V1Asset) SetPriceUsdNil(b bool)`

 SetPriceUsdNil sets the value for PriceUsd to be an explicit nil

### UnsetPriceUsd
`func (o *V1Asset) UnsetPriceUsd()`

UnsetPriceUsd ensures that no value is present for PriceUsd, not even an explicit nil
### GetIdIcon

`func (o *V1Asset) GetIdIcon() string`

GetIdIcon returns the IdIcon field if non-nil, zero value otherwise.

### GetIdIconOk

`func (o *V1Asset) GetIdIconOk() (*string, bool)`

GetIdIconOk returns a tuple with the IdIcon field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIdIcon

`func (o *V1Asset) SetIdIcon(v string)`

SetIdIcon sets IdIcon field to given value.

### HasIdIcon

`func (o *V1Asset) HasIdIcon() bool`

HasIdIcon returns a boolean if a field has been set.

### SetIdIconNil

`func (o *V1Asset) SetIdIconNil(b bool)`

 SetIdIconNil sets the value for IdIcon to be an explicit nil

### UnsetIdIcon
`func (o *V1Asset) UnsetIdIcon()`

UnsetIdIcon ensures that no value is present for IdIcon, not even an explicit nil
### GetSupplyCurrent

`func (o *V1Asset) GetSupplyCurrent() float64`

GetSupplyCurrent returns the SupplyCurrent field if non-nil, zero value otherwise.

### GetSupplyCurrentOk

`func (o *V1Asset) GetSupplyCurrentOk() (*float64, bool)`

GetSupplyCurrentOk returns a tuple with the SupplyCurrent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSupplyCurrent

`func (o *V1Asset) SetSupplyCurrent(v float64)`

SetSupplyCurrent sets SupplyCurrent field to given value.

### HasSupplyCurrent

`func (o *V1Asset) HasSupplyCurrent() bool`

HasSupplyCurrent returns a boolean if a field has been set.

### SetSupplyCurrentNil

`func (o *V1Asset) SetSupplyCurrentNil(b bool)`

 SetSupplyCurrentNil sets the value for SupplyCurrent to be an explicit nil

### UnsetSupplyCurrent
`func (o *V1Asset) UnsetSupplyCurrent()`

UnsetSupplyCurrent ensures that no value is present for SupplyCurrent, not even an explicit nil
### GetSupplyTotal

`func (o *V1Asset) GetSupplyTotal() float64`

GetSupplyTotal returns the SupplyTotal field if non-nil, zero value otherwise.

### GetSupplyTotalOk

`func (o *V1Asset) GetSupplyTotalOk() (*float64, bool)`

GetSupplyTotalOk returns a tuple with the SupplyTotal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSupplyTotal

`func (o *V1Asset) SetSupplyTotal(v float64)`

SetSupplyTotal sets SupplyTotal field to given value.

### HasSupplyTotal

`func (o *V1Asset) HasSupplyTotal() bool`

HasSupplyTotal returns a boolean if a field has been set.

### SetSupplyTotalNil

`func (o *V1Asset) SetSupplyTotalNil(b bool)`

 SetSupplyTotalNil sets the value for SupplyTotal to be an explicit nil

### UnsetSupplyTotal
`func (o *V1Asset) UnsetSupplyTotal()`

UnsetSupplyTotal ensures that no value is present for SupplyTotal, not even an explicit nil
### GetSupplyMax

`func (o *V1Asset) GetSupplyMax() float64`

GetSupplyMax returns the SupplyMax field if non-nil, zero value otherwise.

### GetSupplyMaxOk

`func (o *V1Asset) GetSupplyMaxOk() (*float64, bool)`

GetSupplyMaxOk returns a tuple with the SupplyMax field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSupplyMax

`func (o *V1Asset) SetSupplyMax(v float64)`

SetSupplyMax sets SupplyMax field to given value.

### HasSupplyMax

`func (o *V1Asset) HasSupplyMax() bool`

HasSupplyMax returns a boolean if a field has been set.

### SetSupplyMaxNil

`func (o *V1Asset) SetSupplyMaxNil(b bool)`

 SetSupplyMaxNil sets the value for SupplyMax to be an explicit nil

### UnsetSupplyMax
`func (o *V1Asset) UnsetSupplyMax()`

UnsetSupplyMax ensures that no value is present for SupplyMax, not even an explicit nil
### GetChainAddresses

`func (o *V1Asset) GetChainAddresses() []V1ChainNetworkAddress`

GetChainAddresses returns the ChainAddresses field if non-nil, zero value otherwise.

### GetChainAddressesOk

`func (o *V1Asset) GetChainAddressesOk() (*[]V1ChainNetworkAddress, bool)`

GetChainAddressesOk returns a tuple with the ChainAddresses field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChainAddresses

`func (o *V1Asset) SetChainAddresses(v []V1ChainNetworkAddress)`

SetChainAddresses sets ChainAddresses field to given value.

### HasChainAddresses

`func (o *V1Asset) HasChainAddresses() bool`

HasChainAddresses returns a boolean if a field has been set.

### SetChainAddressesNil

`func (o *V1Asset) SetChainAddressesNil(b bool)`

 SetChainAddressesNil sets the value for ChainAddresses to be an explicit nil

### UnsetChainAddresses
`func (o *V1Asset) UnsetChainAddresses()`

UnsetChainAddresses ensures that no value is present for ChainAddresses, not even an explicit nil
### GetDataStart

`func (o *V1Asset) GetDataStart() string`

GetDataStart returns the DataStart field if non-nil, zero value otherwise.

### GetDataStartOk

`func (o *V1Asset) GetDataStartOk() (*string, bool)`

GetDataStartOk returns a tuple with the DataStart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataStart

`func (o *V1Asset) SetDataStart(v string)`

SetDataStart sets DataStart field to given value.

### HasDataStart

`func (o *V1Asset) HasDataStart() bool`

HasDataStart returns a boolean if a field has been set.

### SetDataStartNil

`func (o *V1Asset) SetDataStartNil(b bool)`

 SetDataStartNil sets the value for DataStart to be an explicit nil

### UnsetDataStart
`func (o *V1Asset) UnsetDataStart()`

UnsetDataStart ensures that no value is present for DataStart, not even an explicit nil
### GetDataEnd

`func (o *V1Asset) GetDataEnd() string`

GetDataEnd returns the DataEnd field if non-nil, zero value otherwise.

### GetDataEndOk

`func (o *V1Asset) GetDataEndOk() (*string, bool)`

GetDataEndOk returns a tuple with the DataEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataEnd

`func (o *V1Asset) SetDataEnd(v string)`

SetDataEnd sets DataEnd field to given value.

### HasDataEnd

`func (o *V1Asset) HasDataEnd() bool`

HasDataEnd returns a boolean if a field has been set.

### SetDataEndNil

`func (o *V1Asset) SetDataEndNil(b bool)`

 SetDataEndNil sets the value for DataEnd to be an explicit nil

### UnsetDataEnd
`func (o *V1Asset) UnsetDataEnd()`

UnsetDataEnd ensures that no value is present for DataEnd, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


