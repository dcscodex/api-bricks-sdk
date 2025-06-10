# V1GeneralData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** | Gets or sets the entry time for the data point. | [optional] 
**RecvTime** | Pointer to **time.Time** | Gets or sets the received time for the data point. | [optional] 
**ExchangeId** | Pointer to **NullableString** | Gets or sets the identifier for the exchange. | [optional] 
**AssetId** | Pointer to **NullableString** | Gets or sets the identifier for the asset. | [optional] 
**SymbolId** | Pointer to **NullableString** | Gets or sets the identifier for the symbol. | [optional] 
**MetricId** | Pointer to **NullableString** | Gets or sets the identifier for the metric. | [optional] 
**ValueDecimal** | Pointer to **NullableFloat64** | Gets or sets the decimal value for the metric. | [optional] 
**ValueText** | Pointer to **NullableString** | Gets or sets the textual representation of the value for the metric. | [optional] 
**ValueTime** | Pointer to **NullableTime** | Gets or sets the timestamp value for the metric. | [optional] 

## Methods

### NewV1GeneralData

`func NewV1GeneralData() *V1GeneralData`

NewV1GeneralData instantiates a new V1GeneralData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewV1GeneralDataWithDefaults

`func NewV1GeneralDataWithDefaults() *V1GeneralData`

NewV1GeneralDataWithDefaults instantiates a new V1GeneralData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *V1GeneralData) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *V1GeneralData) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *V1GeneralData) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *V1GeneralData) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *V1GeneralData) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *V1GeneralData) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *V1GeneralData) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *V1GeneralData) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetExchangeId

`func (o *V1GeneralData) GetExchangeId() string`

GetExchangeId returns the ExchangeId field if non-nil, zero value otherwise.

### GetExchangeIdOk

`func (o *V1GeneralData) GetExchangeIdOk() (*string, bool)`

GetExchangeIdOk returns a tuple with the ExchangeId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeId

`func (o *V1GeneralData) SetExchangeId(v string)`

SetExchangeId sets ExchangeId field to given value.

### HasExchangeId

`func (o *V1GeneralData) HasExchangeId() bool`

HasExchangeId returns a boolean if a field has been set.

### SetExchangeIdNil

`func (o *V1GeneralData) SetExchangeIdNil(b bool)`

 SetExchangeIdNil sets the value for ExchangeId to be an explicit nil

### UnsetExchangeId
`func (o *V1GeneralData) UnsetExchangeId()`

UnsetExchangeId ensures that no value is present for ExchangeId, not even an explicit nil
### GetAssetId

`func (o *V1GeneralData) GetAssetId() string`

GetAssetId returns the AssetId field if non-nil, zero value otherwise.

### GetAssetIdOk

`func (o *V1GeneralData) GetAssetIdOk() (*string, bool)`

GetAssetIdOk returns a tuple with the AssetId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetId

`func (o *V1GeneralData) SetAssetId(v string)`

SetAssetId sets AssetId field to given value.

### HasAssetId

`func (o *V1GeneralData) HasAssetId() bool`

HasAssetId returns a boolean if a field has been set.

### SetAssetIdNil

`func (o *V1GeneralData) SetAssetIdNil(b bool)`

 SetAssetIdNil sets the value for AssetId to be an explicit nil

### UnsetAssetId
`func (o *V1GeneralData) UnsetAssetId()`

UnsetAssetId ensures that no value is present for AssetId, not even an explicit nil
### GetSymbolId

`func (o *V1GeneralData) GetSymbolId() string`

GetSymbolId returns the SymbolId field if non-nil, zero value otherwise.

### GetSymbolIdOk

`func (o *V1GeneralData) GetSymbolIdOk() (*string, bool)`

GetSymbolIdOk returns a tuple with the SymbolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolId

`func (o *V1GeneralData) SetSymbolId(v string)`

SetSymbolId sets SymbolId field to given value.

### HasSymbolId

`func (o *V1GeneralData) HasSymbolId() bool`

HasSymbolId returns a boolean if a field has been set.

### SetSymbolIdNil

`func (o *V1GeneralData) SetSymbolIdNil(b bool)`

 SetSymbolIdNil sets the value for SymbolId to be an explicit nil

### UnsetSymbolId
`func (o *V1GeneralData) UnsetSymbolId()`

UnsetSymbolId ensures that no value is present for SymbolId, not even an explicit nil
### GetMetricId

`func (o *V1GeneralData) GetMetricId() string`

GetMetricId returns the MetricId field if non-nil, zero value otherwise.

### GetMetricIdOk

`func (o *V1GeneralData) GetMetricIdOk() (*string, bool)`

GetMetricIdOk returns a tuple with the MetricId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMetricId

`func (o *V1GeneralData) SetMetricId(v string)`

SetMetricId sets MetricId field to given value.

### HasMetricId

`func (o *V1GeneralData) HasMetricId() bool`

HasMetricId returns a boolean if a field has been set.

### SetMetricIdNil

`func (o *V1GeneralData) SetMetricIdNil(b bool)`

 SetMetricIdNil sets the value for MetricId to be an explicit nil

### UnsetMetricId
`func (o *V1GeneralData) UnsetMetricId()`

UnsetMetricId ensures that no value is present for MetricId, not even an explicit nil
### GetValueDecimal

`func (o *V1GeneralData) GetValueDecimal() float64`

GetValueDecimal returns the ValueDecimal field if non-nil, zero value otherwise.

### GetValueDecimalOk

`func (o *V1GeneralData) GetValueDecimalOk() (*float64, bool)`

GetValueDecimalOk returns a tuple with the ValueDecimal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValueDecimal

`func (o *V1GeneralData) SetValueDecimal(v float64)`

SetValueDecimal sets ValueDecimal field to given value.

### HasValueDecimal

`func (o *V1GeneralData) HasValueDecimal() bool`

HasValueDecimal returns a boolean if a field has been set.

### SetValueDecimalNil

`func (o *V1GeneralData) SetValueDecimalNil(b bool)`

 SetValueDecimalNil sets the value for ValueDecimal to be an explicit nil

### UnsetValueDecimal
`func (o *V1GeneralData) UnsetValueDecimal()`

UnsetValueDecimal ensures that no value is present for ValueDecimal, not even an explicit nil
### GetValueText

`func (o *V1GeneralData) GetValueText() string`

GetValueText returns the ValueText field if non-nil, zero value otherwise.

### GetValueTextOk

`func (o *V1GeneralData) GetValueTextOk() (*string, bool)`

GetValueTextOk returns a tuple with the ValueText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValueText

`func (o *V1GeneralData) SetValueText(v string)`

SetValueText sets ValueText field to given value.

### HasValueText

`func (o *V1GeneralData) HasValueText() bool`

HasValueText returns a boolean if a field has been set.

### SetValueTextNil

`func (o *V1GeneralData) SetValueTextNil(b bool)`

 SetValueTextNil sets the value for ValueText to be an explicit nil

### UnsetValueText
`func (o *V1GeneralData) UnsetValueText()`

UnsetValueText ensures that no value is present for ValueText, not even an explicit nil
### GetValueTime

`func (o *V1GeneralData) GetValueTime() time.Time`

GetValueTime returns the ValueTime field if non-nil, zero value otherwise.

### GetValueTimeOk

`func (o *V1GeneralData) GetValueTimeOk() (*time.Time, bool)`

GetValueTimeOk returns a tuple with the ValueTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValueTime

`func (o *V1GeneralData) SetValueTime(v time.Time)`

SetValueTime sets ValueTime field to given value.

### HasValueTime

`func (o *V1GeneralData) HasValueTime() bool`

HasValueTime returns a boolean if a field has been set.

### SetValueTimeNil

`func (o *V1GeneralData) SetValueTimeNil(b bool)`

 SetValueTimeNil sets the value for ValueTime to be an explicit nil

### UnsetValueTime
`func (o *V1GeneralData) UnsetValueTime()`

UnsetValueTime ensures that no value is present for ValueTime, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


