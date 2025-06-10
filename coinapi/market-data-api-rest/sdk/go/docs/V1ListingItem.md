# V1ListingItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MetricId** | Pointer to **NullableString** | Gets or sets the metric ID. | [optional] 
**SymbolId** | Pointer to **NullableString** | Gets or sets the symbol ID. | [optional] 
**SymbolIdExternal** | Pointer to **NullableString** | Gets or sets the symbol ID from the exchange. | [optional] 
**ExchangeId** | Pointer to **NullableString** | Gets or sets the exchange ID. | [optional] 
**AssetId** | Pointer to **NullableString** | Gets or sets the asset ID. | [optional] 
**AssetIdExternal** | Pointer to **NullableString** | Gets or sets the asset ID from the exchange. | [optional] 
**ChainId** | Pointer to **NullableString** | Gets or sets the chain id. | [optional] 
**NetworkId** | Pointer to **NullableString** | Gets or sets the network id. | [optional] 

## Methods

### NewV1ListingItem

`func NewV1ListingItem() *V1ListingItem`

NewV1ListingItem instantiates a new V1ListingItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewV1ListingItemWithDefaults

`func NewV1ListingItemWithDefaults() *V1ListingItem`

NewV1ListingItemWithDefaults instantiates a new V1ListingItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMetricId

`func (o *V1ListingItem) GetMetricId() string`

GetMetricId returns the MetricId field if non-nil, zero value otherwise.

### GetMetricIdOk

`func (o *V1ListingItem) GetMetricIdOk() (*string, bool)`

GetMetricIdOk returns a tuple with the MetricId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMetricId

`func (o *V1ListingItem) SetMetricId(v string)`

SetMetricId sets MetricId field to given value.

### HasMetricId

`func (o *V1ListingItem) HasMetricId() bool`

HasMetricId returns a boolean if a field has been set.

### SetMetricIdNil

`func (o *V1ListingItem) SetMetricIdNil(b bool)`

 SetMetricIdNil sets the value for MetricId to be an explicit nil

### UnsetMetricId
`func (o *V1ListingItem) UnsetMetricId()`

UnsetMetricId ensures that no value is present for MetricId, not even an explicit nil
### GetSymbolId

`func (o *V1ListingItem) GetSymbolId() string`

GetSymbolId returns the SymbolId field if non-nil, zero value otherwise.

### GetSymbolIdOk

`func (o *V1ListingItem) GetSymbolIdOk() (*string, bool)`

GetSymbolIdOk returns a tuple with the SymbolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolId

`func (o *V1ListingItem) SetSymbolId(v string)`

SetSymbolId sets SymbolId field to given value.

### HasSymbolId

`func (o *V1ListingItem) HasSymbolId() bool`

HasSymbolId returns a boolean if a field has been set.

### SetSymbolIdNil

`func (o *V1ListingItem) SetSymbolIdNil(b bool)`

 SetSymbolIdNil sets the value for SymbolId to be an explicit nil

### UnsetSymbolId
`func (o *V1ListingItem) UnsetSymbolId()`

UnsetSymbolId ensures that no value is present for SymbolId, not even an explicit nil
### GetSymbolIdExternal

`func (o *V1ListingItem) GetSymbolIdExternal() string`

GetSymbolIdExternal returns the SymbolIdExternal field if non-nil, zero value otherwise.

### GetSymbolIdExternalOk

`func (o *V1ListingItem) GetSymbolIdExternalOk() (*string, bool)`

GetSymbolIdExternalOk returns a tuple with the SymbolIdExternal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolIdExternal

`func (o *V1ListingItem) SetSymbolIdExternal(v string)`

SetSymbolIdExternal sets SymbolIdExternal field to given value.

### HasSymbolIdExternal

`func (o *V1ListingItem) HasSymbolIdExternal() bool`

HasSymbolIdExternal returns a boolean if a field has been set.

### SetSymbolIdExternalNil

`func (o *V1ListingItem) SetSymbolIdExternalNil(b bool)`

 SetSymbolIdExternalNil sets the value for SymbolIdExternal to be an explicit nil

### UnsetSymbolIdExternal
`func (o *V1ListingItem) UnsetSymbolIdExternal()`

UnsetSymbolIdExternal ensures that no value is present for SymbolIdExternal, not even an explicit nil
### GetExchangeId

`func (o *V1ListingItem) GetExchangeId() string`

GetExchangeId returns the ExchangeId field if non-nil, zero value otherwise.

### GetExchangeIdOk

`func (o *V1ListingItem) GetExchangeIdOk() (*string, bool)`

GetExchangeIdOk returns a tuple with the ExchangeId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeId

`func (o *V1ListingItem) SetExchangeId(v string)`

SetExchangeId sets ExchangeId field to given value.

### HasExchangeId

`func (o *V1ListingItem) HasExchangeId() bool`

HasExchangeId returns a boolean if a field has been set.

### SetExchangeIdNil

`func (o *V1ListingItem) SetExchangeIdNil(b bool)`

 SetExchangeIdNil sets the value for ExchangeId to be an explicit nil

### UnsetExchangeId
`func (o *V1ListingItem) UnsetExchangeId()`

UnsetExchangeId ensures that no value is present for ExchangeId, not even an explicit nil
### GetAssetId

`func (o *V1ListingItem) GetAssetId() string`

GetAssetId returns the AssetId field if non-nil, zero value otherwise.

### GetAssetIdOk

`func (o *V1ListingItem) GetAssetIdOk() (*string, bool)`

GetAssetIdOk returns a tuple with the AssetId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetId

`func (o *V1ListingItem) SetAssetId(v string)`

SetAssetId sets AssetId field to given value.

### HasAssetId

`func (o *V1ListingItem) HasAssetId() bool`

HasAssetId returns a boolean if a field has been set.

### SetAssetIdNil

`func (o *V1ListingItem) SetAssetIdNil(b bool)`

 SetAssetIdNil sets the value for AssetId to be an explicit nil

### UnsetAssetId
`func (o *V1ListingItem) UnsetAssetId()`

UnsetAssetId ensures that no value is present for AssetId, not even an explicit nil
### GetAssetIdExternal

`func (o *V1ListingItem) GetAssetIdExternal() string`

GetAssetIdExternal returns the AssetIdExternal field if non-nil, zero value otherwise.

### GetAssetIdExternalOk

`func (o *V1ListingItem) GetAssetIdExternalOk() (*string, bool)`

GetAssetIdExternalOk returns a tuple with the AssetIdExternal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetIdExternal

`func (o *V1ListingItem) SetAssetIdExternal(v string)`

SetAssetIdExternal sets AssetIdExternal field to given value.

### HasAssetIdExternal

`func (o *V1ListingItem) HasAssetIdExternal() bool`

HasAssetIdExternal returns a boolean if a field has been set.

### SetAssetIdExternalNil

`func (o *V1ListingItem) SetAssetIdExternalNil(b bool)`

 SetAssetIdExternalNil sets the value for AssetIdExternal to be an explicit nil

### UnsetAssetIdExternal
`func (o *V1ListingItem) UnsetAssetIdExternal()`

UnsetAssetIdExternal ensures that no value is present for AssetIdExternal, not even an explicit nil
### GetChainId

`func (o *V1ListingItem) GetChainId() string`

GetChainId returns the ChainId field if non-nil, zero value otherwise.

### GetChainIdOk

`func (o *V1ListingItem) GetChainIdOk() (*string, bool)`

GetChainIdOk returns a tuple with the ChainId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChainId

`func (o *V1ListingItem) SetChainId(v string)`

SetChainId sets ChainId field to given value.

### HasChainId

`func (o *V1ListingItem) HasChainId() bool`

HasChainId returns a boolean if a field has been set.

### SetChainIdNil

`func (o *V1ListingItem) SetChainIdNil(b bool)`

 SetChainIdNil sets the value for ChainId to be an explicit nil

### UnsetChainId
`func (o *V1ListingItem) UnsetChainId()`

UnsetChainId ensures that no value is present for ChainId, not even an explicit nil
### GetNetworkId

`func (o *V1ListingItem) GetNetworkId() string`

GetNetworkId returns the NetworkId field if non-nil, zero value otherwise.

### GetNetworkIdOk

`func (o *V1ListingItem) GetNetworkIdOk() (*string, bool)`

GetNetworkIdOk returns a tuple with the NetworkId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNetworkId

`func (o *V1ListingItem) SetNetworkId(v string)`

SetNetworkId sets NetworkId field to given value.

### HasNetworkId

`func (o *V1ListingItem) HasNetworkId() bool`

HasNetworkId returns a boolean if a field has been set.

### SetNetworkIdNil

`func (o *V1ListingItem) SetNetworkIdNil(b bool)`

 SetNetworkIdNil sets the value for NetworkId to be an explicit nil

### UnsetNetworkId
`func (o *V1ListingItem) UnsetNetworkId()`

UnsetNetworkId ensures that no value is present for NetworkId, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


