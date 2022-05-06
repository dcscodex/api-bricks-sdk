# Locations

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LocationId** | Pointer to **string** | CoinAPI location identifier | [optional] 
**RegionName** | Pointer to **string** | Identifier of the region by the location provider | [optional] 
**ProviderName** | Pointer to **string** | Identifier of the location provider | [optional] 

## Methods

### NewLocations

`func NewLocations() *Locations`

NewLocations instantiates a new Locations object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLocationsWithDefaults

`func NewLocationsWithDefaults() *Locations`

NewLocationsWithDefaults instantiates a new Locations object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLocationId

`func (o *Locations) GetLocationId() string`

GetLocationId returns the LocationId field if non-nil, zero value otherwise.

### GetLocationIdOk

`func (o *Locations) GetLocationIdOk() (*string, bool)`

GetLocationIdOk returns a tuple with the LocationId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocationId

`func (o *Locations) SetLocationId(v string)`

SetLocationId sets LocationId field to given value.

### HasLocationId

`func (o *Locations) HasLocationId() bool`

HasLocationId returns a boolean if a field has been set.

### GetRegionName

`func (o *Locations) GetRegionName() string`

GetRegionName returns the RegionName field if non-nil, zero value otherwise.

### GetRegionNameOk

`func (o *Locations) GetRegionNameOk() (*string, bool)`

GetRegionNameOk returns a tuple with the RegionName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRegionName

`func (o *Locations) SetRegionName(v string)`

SetRegionName sets RegionName field to given value.

### HasRegionName

`func (o *Locations) HasRegionName() bool`

HasRegionName returns a boolean if a field has been set.

### GetProviderName

`func (o *Locations) GetProviderName() string`

GetProviderName returns the ProviderName field if non-nil, zero value otherwise.

### GetProviderNameOk

`func (o *Locations) GetProviderNameOk() (*string, bool)`

GetProviderNameOk returns a tuple with the ProviderName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProviderName

`func (o *Locations) SetProviderName(v string)`

SetProviderName sets ProviderName field to given value.

### HasProviderName

`func (o *Locations) HasProviderName() bool`

HasProviderName returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


