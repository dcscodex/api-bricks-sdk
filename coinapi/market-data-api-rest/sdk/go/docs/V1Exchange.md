# V1Exchange

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | Pointer to **NullableString** | Gets or sets the exchange ID. | [optional] 
**Website** | Pointer to **NullableString** | Gets or sets the website URL of the exchange. | [optional] 
**Name** | Pointer to **NullableString** | Gets or sets the name of the exchange. | [optional] 
**DataStart** | Pointer to **NullableString** |  | [optional] [readonly] 
**DataEnd** | Pointer to **NullableString** |  | [optional] [readonly] 
**DataQuoteStart** | Pointer to **NullableTime** | Gets or sets the start date of quote data. | [optional] 
**DataQuoteEnd** | Pointer to **NullableTime** | Gets or sets the end date of quote data. | [optional] 
**DataOrderbookStart** | Pointer to **NullableTime** | Gets or sets the start date of order book data. | [optional] 
**DataOrderbookEnd** | Pointer to **NullableTime** | Gets or sets the end date of order book data. | [optional] 
**DataTradeStart** | Pointer to **NullableTime** | Gets or sets the start date of trade data. | [optional] 
**DataTradeEnd** | Pointer to **NullableTime** | Gets or sets the end date of trade data. | [optional] 
**DataTradeCount** | Pointer to **NullableInt64** | Gets or sets the number of trades. | [optional] 
**DataSymbolsCount** | Pointer to **NullableInt64** | Gets or sets the number of symbols. | [optional] 
**Volume1hrsUsd** | Pointer to **NullableFloat64** | Gets or sets the USD volume in the last 1 hour. | [optional] 
**Volume1dayUsd** | Pointer to **NullableFloat64** | Gets or sets the USD volume in the last 1 day. | [optional] 
**Volume1mthUsd** | Pointer to **NullableFloat64** | Gets or sets the USD volume in the last 1 month. | [optional] 
**MetricId** | Pointer to **[]string** | Gets or sets the list of metric IDs. | [optional] 
**Icons** | Pointer to [**[]V1Icon**](V1Icon.md) | Gets or sets the list of icons for the exchange. | [optional] [readonly] 
**Rank** | Pointer to **float64** | Rank of the exchange. | [optional] 
**IntegrationStatus** | Pointer to **NullableString** | Status of the integration | [optional] 

## Methods

### NewV1Exchange

`func NewV1Exchange() *V1Exchange`

NewV1Exchange instantiates a new V1Exchange object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewV1ExchangeWithDefaults

`func NewV1ExchangeWithDefaults() *V1Exchange`

NewV1ExchangeWithDefaults instantiates a new V1Exchange object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetExchangeId

`func (o *V1Exchange) GetExchangeId() string`

GetExchangeId returns the ExchangeId field if non-nil, zero value otherwise.

### GetExchangeIdOk

`func (o *V1Exchange) GetExchangeIdOk() (*string, bool)`

GetExchangeIdOk returns a tuple with the ExchangeId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeId

`func (o *V1Exchange) SetExchangeId(v string)`

SetExchangeId sets ExchangeId field to given value.

### HasExchangeId

`func (o *V1Exchange) HasExchangeId() bool`

HasExchangeId returns a boolean if a field has been set.

### SetExchangeIdNil

`func (o *V1Exchange) SetExchangeIdNil(b bool)`

 SetExchangeIdNil sets the value for ExchangeId to be an explicit nil

### UnsetExchangeId
`func (o *V1Exchange) UnsetExchangeId()`

UnsetExchangeId ensures that no value is present for ExchangeId, not even an explicit nil
### GetWebsite

`func (o *V1Exchange) GetWebsite() string`

GetWebsite returns the Website field if non-nil, zero value otherwise.

### GetWebsiteOk

`func (o *V1Exchange) GetWebsiteOk() (*string, bool)`

GetWebsiteOk returns a tuple with the Website field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWebsite

`func (o *V1Exchange) SetWebsite(v string)`

SetWebsite sets Website field to given value.

### HasWebsite

`func (o *V1Exchange) HasWebsite() bool`

HasWebsite returns a boolean if a field has been set.

### SetWebsiteNil

`func (o *V1Exchange) SetWebsiteNil(b bool)`

 SetWebsiteNil sets the value for Website to be an explicit nil

### UnsetWebsite
`func (o *V1Exchange) UnsetWebsite()`

UnsetWebsite ensures that no value is present for Website, not even an explicit nil
### GetName

`func (o *V1Exchange) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *V1Exchange) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *V1Exchange) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *V1Exchange) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *V1Exchange) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *V1Exchange) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetDataStart

`func (o *V1Exchange) GetDataStart() string`

GetDataStart returns the DataStart field if non-nil, zero value otherwise.

### GetDataStartOk

`func (o *V1Exchange) GetDataStartOk() (*string, bool)`

GetDataStartOk returns a tuple with the DataStart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataStart

`func (o *V1Exchange) SetDataStart(v string)`

SetDataStart sets DataStart field to given value.

### HasDataStart

`func (o *V1Exchange) HasDataStart() bool`

HasDataStart returns a boolean if a field has been set.

### SetDataStartNil

`func (o *V1Exchange) SetDataStartNil(b bool)`

 SetDataStartNil sets the value for DataStart to be an explicit nil

### UnsetDataStart
`func (o *V1Exchange) UnsetDataStart()`

UnsetDataStart ensures that no value is present for DataStart, not even an explicit nil
### GetDataEnd

`func (o *V1Exchange) GetDataEnd() string`

GetDataEnd returns the DataEnd field if non-nil, zero value otherwise.

### GetDataEndOk

`func (o *V1Exchange) GetDataEndOk() (*string, bool)`

GetDataEndOk returns a tuple with the DataEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataEnd

`func (o *V1Exchange) SetDataEnd(v string)`

SetDataEnd sets DataEnd field to given value.

### HasDataEnd

`func (o *V1Exchange) HasDataEnd() bool`

HasDataEnd returns a boolean if a field has been set.

### SetDataEndNil

`func (o *V1Exchange) SetDataEndNil(b bool)`

 SetDataEndNil sets the value for DataEnd to be an explicit nil

### UnsetDataEnd
`func (o *V1Exchange) UnsetDataEnd()`

UnsetDataEnd ensures that no value is present for DataEnd, not even an explicit nil
### GetDataQuoteStart

`func (o *V1Exchange) GetDataQuoteStart() time.Time`

GetDataQuoteStart returns the DataQuoteStart field if non-nil, zero value otherwise.

### GetDataQuoteStartOk

`func (o *V1Exchange) GetDataQuoteStartOk() (*time.Time, bool)`

GetDataQuoteStartOk returns a tuple with the DataQuoteStart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataQuoteStart

`func (o *V1Exchange) SetDataQuoteStart(v time.Time)`

SetDataQuoteStart sets DataQuoteStart field to given value.

### HasDataQuoteStart

`func (o *V1Exchange) HasDataQuoteStart() bool`

HasDataQuoteStart returns a boolean if a field has been set.

### SetDataQuoteStartNil

`func (o *V1Exchange) SetDataQuoteStartNil(b bool)`

 SetDataQuoteStartNil sets the value for DataQuoteStart to be an explicit nil

### UnsetDataQuoteStart
`func (o *V1Exchange) UnsetDataQuoteStart()`

UnsetDataQuoteStart ensures that no value is present for DataQuoteStart, not even an explicit nil
### GetDataQuoteEnd

`func (o *V1Exchange) GetDataQuoteEnd() time.Time`

GetDataQuoteEnd returns the DataQuoteEnd field if non-nil, zero value otherwise.

### GetDataQuoteEndOk

`func (o *V1Exchange) GetDataQuoteEndOk() (*time.Time, bool)`

GetDataQuoteEndOk returns a tuple with the DataQuoteEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataQuoteEnd

`func (o *V1Exchange) SetDataQuoteEnd(v time.Time)`

SetDataQuoteEnd sets DataQuoteEnd field to given value.

### HasDataQuoteEnd

`func (o *V1Exchange) HasDataQuoteEnd() bool`

HasDataQuoteEnd returns a boolean if a field has been set.

### SetDataQuoteEndNil

`func (o *V1Exchange) SetDataQuoteEndNil(b bool)`

 SetDataQuoteEndNil sets the value for DataQuoteEnd to be an explicit nil

### UnsetDataQuoteEnd
`func (o *V1Exchange) UnsetDataQuoteEnd()`

UnsetDataQuoteEnd ensures that no value is present for DataQuoteEnd, not even an explicit nil
### GetDataOrderbookStart

`func (o *V1Exchange) GetDataOrderbookStart() time.Time`

GetDataOrderbookStart returns the DataOrderbookStart field if non-nil, zero value otherwise.

### GetDataOrderbookStartOk

`func (o *V1Exchange) GetDataOrderbookStartOk() (*time.Time, bool)`

GetDataOrderbookStartOk returns a tuple with the DataOrderbookStart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataOrderbookStart

`func (o *V1Exchange) SetDataOrderbookStart(v time.Time)`

SetDataOrderbookStart sets DataOrderbookStart field to given value.

### HasDataOrderbookStart

`func (o *V1Exchange) HasDataOrderbookStart() bool`

HasDataOrderbookStart returns a boolean if a field has been set.

### SetDataOrderbookStartNil

`func (o *V1Exchange) SetDataOrderbookStartNil(b bool)`

 SetDataOrderbookStartNil sets the value for DataOrderbookStart to be an explicit nil

### UnsetDataOrderbookStart
`func (o *V1Exchange) UnsetDataOrderbookStart()`

UnsetDataOrderbookStart ensures that no value is present for DataOrderbookStart, not even an explicit nil
### GetDataOrderbookEnd

`func (o *V1Exchange) GetDataOrderbookEnd() time.Time`

GetDataOrderbookEnd returns the DataOrderbookEnd field if non-nil, zero value otherwise.

### GetDataOrderbookEndOk

`func (o *V1Exchange) GetDataOrderbookEndOk() (*time.Time, bool)`

GetDataOrderbookEndOk returns a tuple with the DataOrderbookEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataOrderbookEnd

`func (o *V1Exchange) SetDataOrderbookEnd(v time.Time)`

SetDataOrderbookEnd sets DataOrderbookEnd field to given value.

### HasDataOrderbookEnd

`func (o *V1Exchange) HasDataOrderbookEnd() bool`

HasDataOrderbookEnd returns a boolean if a field has been set.

### SetDataOrderbookEndNil

`func (o *V1Exchange) SetDataOrderbookEndNil(b bool)`

 SetDataOrderbookEndNil sets the value for DataOrderbookEnd to be an explicit nil

### UnsetDataOrderbookEnd
`func (o *V1Exchange) UnsetDataOrderbookEnd()`

UnsetDataOrderbookEnd ensures that no value is present for DataOrderbookEnd, not even an explicit nil
### GetDataTradeStart

`func (o *V1Exchange) GetDataTradeStart() time.Time`

GetDataTradeStart returns the DataTradeStart field if non-nil, zero value otherwise.

### GetDataTradeStartOk

`func (o *V1Exchange) GetDataTradeStartOk() (*time.Time, bool)`

GetDataTradeStartOk returns a tuple with the DataTradeStart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataTradeStart

`func (o *V1Exchange) SetDataTradeStart(v time.Time)`

SetDataTradeStart sets DataTradeStart field to given value.

### HasDataTradeStart

`func (o *V1Exchange) HasDataTradeStart() bool`

HasDataTradeStart returns a boolean if a field has been set.

### SetDataTradeStartNil

`func (o *V1Exchange) SetDataTradeStartNil(b bool)`

 SetDataTradeStartNil sets the value for DataTradeStart to be an explicit nil

### UnsetDataTradeStart
`func (o *V1Exchange) UnsetDataTradeStart()`

UnsetDataTradeStart ensures that no value is present for DataTradeStart, not even an explicit nil
### GetDataTradeEnd

`func (o *V1Exchange) GetDataTradeEnd() time.Time`

GetDataTradeEnd returns the DataTradeEnd field if non-nil, zero value otherwise.

### GetDataTradeEndOk

`func (o *V1Exchange) GetDataTradeEndOk() (*time.Time, bool)`

GetDataTradeEndOk returns a tuple with the DataTradeEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataTradeEnd

`func (o *V1Exchange) SetDataTradeEnd(v time.Time)`

SetDataTradeEnd sets DataTradeEnd field to given value.

### HasDataTradeEnd

`func (o *V1Exchange) HasDataTradeEnd() bool`

HasDataTradeEnd returns a boolean if a field has been set.

### SetDataTradeEndNil

`func (o *V1Exchange) SetDataTradeEndNil(b bool)`

 SetDataTradeEndNil sets the value for DataTradeEnd to be an explicit nil

### UnsetDataTradeEnd
`func (o *V1Exchange) UnsetDataTradeEnd()`

UnsetDataTradeEnd ensures that no value is present for DataTradeEnd, not even an explicit nil
### GetDataTradeCount

`func (o *V1Exchange) GetDataTradeCount() int64`

GetDataTradeCount returns the DataTradeCount field if non-nil, zero value otherwise.

### GetDataTradeCountOk

`func (o *V1Exchange) GetDataTradeCountOk() (*int64, bool)`

GetDataTradeCountOk returns a tuple with the DataTradeCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataTradeCount

`func (o *V1Exchange) SetDataTradeCount(v int64)`

SetDataTradeCount sets DataTradeCount field to given value.

### HasDataTradeCount

`func (o *V1Exchange) HasDataTradeCount() bool`

HasDataTradeCount returns a boolean if a field has been set.

### SetDataTradeCountNil

`func (o *V1Exchange) SetDataTradeCountNil(b bool)`

 SetDataTradeCountNil sets the value for DataTradeCount to be an explicit nil

### UnsetDataTradeCount
`func (o *V1Exchange) UnsetDataTradeCount()`

UnsetDataTradeCount ensures that no value is present for DataTradeCount, not even an explicit nil
### GetDataSymbolsCount

`func (o *V1Exchange) GetDataSymbolsCount() int64`

GetDataSymbolsCount returns the DataSymbolsCount field if non-nil, zero value otherwise.

### GetDataSymbolsCountOk

`func (o *V1Exchange) GetDataSymbolsCountOk() (*int64, bool)`

GetDataSymbolsCountOk returns a tuple with the DataSymbolsCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataSymbolsCount

`func (o *V1Exchange) SetDataSymbolsCount(v int64)`

SetDataSymbolsCount sets DataSymbolsCount field to given value.

### HasDataSymbolsCount

`func (o *V1Exchange) HasDataSymbolsCount() bool`

HasDataSymbolsCount returns a boolean if a field has been set.

### SetDataSymbolsCountNil

`func (o *V1Exchange) SetDataSymbolsCountNil(b bool)`

 SetDataSymbolsCountNil sets the value for DataSymbolsCount to be an explicit nil

### UnsetDataSymbolsCount
`func (o *V1Exchange) UnsetDataSymbolsCount()`

UnsetDataSymbolsCount ensures that no value is present for DataSymbolsCount, not even an explicit nil
### GetVolume1hrsUsd

`func (o *V1Exchange) GetVolume1hrsUsd() float64`

GetVolume1hrsUsd returns the Volume1hrsUsd field if non-nil, zero value otherwise.

### GetVolume1hrsUsdOk

`func (o *V1Exchange) GetVolume1hrsUsdOk() (*float64, bool)`

GetVolume1hrsUsdOk returns a tuple with the Volume1hrsUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolume1hrsUsd

`func (o *V1Exchange) SetVolume1hrsUsd(v float64)`

SetVolume1hrsUsd sets Volume1hrsUsd field to given value.

### HasVolume1hrsUsd

`func (o *V1Exchange) HasVolume1hrsUsd() bool`

HasVolume1hrsUsd returns a boolean if a field has been set.

### SetVolume1hrsUsdNil

`func (o *V1Exchange) SetVolume1hrsUsdNil(b bool)`

 SetVolume1hrsUsdNil sets the value for Volume1hrsUsd to be an explicit nil

### UnsetVolume1hrsUsd
`func (o *V1Exchange) UnsetVolume1hrsUsd()`

UnsetVolume1hrsUsd ensures that no value is present for Volume1hrsUsd, not even an explicit nil
### GetVolume1dayUsd

`func (o *V1Exchange) GetVolume1dayUsd() float64`

GetVolume1dayUsd returns the Volume1dayUsd field if non-nil, zero value otherwise.

### GetVolume1dayUsdOk

`func (o *V1Exchange) GetVolume1dayUsdOk() (*float64, bool)`

GetVolume1dayUsdOk returns a tuple with the Volume1dayUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolume1dayUsd

`func (o *V1Exchange) SetVolume1dayUsd(v float64)`

SetVolume1dayUsd sets Volume1dayUsd field to given value.

### HasVolume1dayUsd

`func (o *V1Exchange) HasVolume1dayUsd() bool`

HasVolume1dayUsd returns a boolean if a field has been set.

### SetVolume1dayUsdNil

`func (o *V1Exchange) SetVolume1dayUsdNil(b bool)`

 SetVolume1dayUsdNil sets the value for Volume1dayUsd to be an explicit nil

### UnsetVolume1dayUsd
`func (o *V1Exchange) UnsetVolume1dayUsd()`

UnsetVolume1dayUsd ensures that no value is present for Volume1dayUsd, not even an explicit nil
### GetVolume1mthUsd

`func (o *V1Exchange) GetVolume1mthUsd() float64`

GetVolume1mthUsd returns the Volume1mthUsd field if non-nil, zero value otherwise.

### GetVolume1mthUsdOk

`func (o *V1Exchange) GetVolume1mthUsdOk() (*float64, bool)`

GetVolume1mthUsdOk returns a tuple with the Volume1mthUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolume1mthUsd

`func (o *V1Exchange) SetVolume1mthUsd(v float64)`

SetVolume1mthUsd sets Volume1mthUsd field to given value.

### HasVolume1mthUsd

`func (o *V1Exchange) HasVolume1mthUsd() bool`

HasVolume1mthUsd returns a boolean if a field has been set.

### SetVolume1mthUsdNil

`func (o *V1Exchange) SetVolume1mthUsdNil(b bool)`

 SetVolume1mthUsdNil sets the value for Volume1mthUsd to be an explicit nil

### UnsetVolume1mthUsd
`func (o *V1Exchange) UnsetVolume1mthUsd()`

UnsetVolume1mthUsd ensures that no value is present for Volume1mthUsd, not even an explicit nil
### GetMetricId

`func (o *V1Exchange) GetMetricId() []string`

GetMetricId returns the MetricId field if non-nil, zero value otherwise.

### GetMetricIdOk

`func (o *V1Exchange) GetMetricIdOk() (*[]string, bool)`

GetMetricIdOk returns a tuple with the MetricId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMetricId

`func (o *V1Exchange) SetMetricId(v []string)`

SetMetricId sets MetricId field to given value.

### HasMetricId

`func (o *V1Exchange) HasMetricId() bool`

HasMetricId returns a boolean if a field has been set.

### SetMetricIdNil

`func (o *V1Exchange) SetMetricIdNil(b bool)`

 SetMetricIdNil sets the value for MetricId to be an explicit nil

### UnsetMetricId
`func (o *V1Exchange) UnsetMetricId()`

UnsetMetricId ensures that no value is present for MetricId, not even an explicit nil
### GetIcons

`func (o *V1Exchange) GetIcons() []V1Icon`

GetIcons returns the Icons field if non-nil, zero value otherwise.

### GetIconsOk

`func (o *V1Exchange) GetIconsOk() (*[]V1Icon, bool)`

GetIconsOk returns a tuple with the Icons field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIcons

`func (o *V1Exchange) SetIcons(v []V1Icon)`

SetIcons sets Icons field to given value.

### HasIcons

`func (o *V1Exchange) HasIcons() bool`

HasIcons returns a boolean if a field has been set.

### SetIconsNil

`func (o *V1Exchange) SetIconsNil(b bool)`

 SetIconsNil sets the value for Icons to be an explicit nil

### UnsetIcons
`func (o *V1Exchange) UnsetIcons()`

UnsetIcons ensures that no value is present for Icons, not even an explicit nil
### GetRank

`func (o *V1Exchange) GetRank() float64`

GetRank returns the Rank field if non-nil, zero value otherwise.

### GetRankOk

`func (o *V1Exchange) GetRankOk() (*float64, bool)`

GetRankOk returns a tuple with the Rank field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRank

`func (o *V1Exchange) SetRank(v float64)`

SetRank sets Rank field to given value.

### HasRank

`func (o *V1Exchange) HasRank() bool`

HasRank returns a boolean if a field has been set.

### GetIntegrationStatus

`func (o *V1Exchange) GetIntegrationStatus() string`

GetIntegrationStatus returns the IntegrationStatus field if non-nil, zero value otherwise.

### GetIntegrationStatusOk

`func (o *V1Exchange) GetIntegrationStatusOk() (*string, bool)`

GetIntegrationStatusOk returns a tuple with the IntegrationStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIntegrationStatus

`func (o *V1Exchange) SetIntegrationStatus(v string)`

SetIntegrationStatus sets IntegrationStatus field to given value.

### HasIntegrationStatus

`func (o *V1Exchange) HasIntegrationStatus() bool`

HasIntegrationStatus returns a boolean if a field has been set.

### SetIntegrationStatusNil

`func (o *V1Exchange) SetIntegrationStatusNil(b bool)`

 SetIntegrationStatusNil sets the value for IntegrationStatus to be an explicit nil

### UnsetIntegrationStatus
`func (o *V1Exchange) UnsetIntegrationStatus()`

UnsetIntegrationStatus ensures that no value is present for IntegrationStatus, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


