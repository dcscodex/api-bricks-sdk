/*
CoinAPI Indexes REST API

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

API version: v1
Contact: support@apibricks.io
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
)

// checks if the IndexesIndexMultiAssetWeight type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &IndexesIndexMultiAssetWeight{}

// IndexesIndexMultiAssetWeight struct for IndexesIndexMultiAssetWeight
type IndexesIndexMultiAssetWeight struct {
	IndexId NullableString `json:"indexId,omitempty"`
	AssetId NullableString `json:"assetId,omitempty"`
	Weight *float64 `json:"weight,omitempty"`
}

// NewIndexesIndexMultiAssetWeight instantiates a new IndexesIndexMultiAssetWeight object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewIndexesIndexMultiAssetWeight() *IndexesIndexMultiAssetWeight {
	this := IndexesIndexMultiAssetWeight{}
	return &this
}

// NewIndexesIndexMultiAssetWeightWithDefaults instantiates a new IndexesIndexMultiAssetWeight object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewIndexesIndexMultiAssetWeightWithDefaults() *IndexesIndexMultiAssetWeight {
	this := IndexesIndexMultiAssetWeight{}
	return &this
}

// GetIndexId returns the IndexId field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *IndexesIndexMultiAssetWeight) GetIndexId() string {
	if o == nil || IsNil(o.IndexId.Get()) {
		var ret string
		return ret
	}
	return *o.IndexId.Get()
}

// GetIndexIdOk returns a tuple with the IndexId field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *IndexesIndexMultiAssetWeight) GetIndexIdOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.IndexId.Get(), o.IndexId.IsSet()
}

// HasIndexId returns a boolean if a field has been set.
func (o *IndexesIndexMultiAssetWeight) HasIndexId() bool {
	if o != nil && o.IndexId.IsSet() {
		return true
	}

	return false
}

// SetIndexId gets a reference to the given NullableString and assigns it to the IndexId field.
func (o *IndexesIndexMultiAssetWeight) SetIndexId(v string) {
	o.IndexId.Set(&v)
}
// SetIndexIdNil sets the value for IndexId to be an explicit nil
func (o *IndexesIndexMultiAssetWeight) SetIndexIdNil() {
	o.IndexId.Set(nil)
}

// UnsetIndexId ensures that no value is present for IndexId, not even an explicit nil
func (o *IndexesIndexMultiAssetWeight) UnsetIndexId() {
	o.IndexId.Unset()
}

// GetAssetId returns the AssetId field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *IndexesIndexMultiAssetWeight) GetAssetId() string {
	if o == nil || IsNil(o.AssetId.Get()) {
		var ret string
		return ret
	}
	return *o.AssetId.Get()
}

// GetAssetIdOk returns a tuple with the AssetId field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *IndexesIndexMultiAssetWeight) GetAssetIdOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.AssetId.Get(), o.AssetId.IsSet()
}

// HasAssetId returns a boolean if a field has been set.
func (o *IndexesIndexMultiAssetWeight) HasAssetId() bool {
	if o != nil && o.AssetId.IsSet() {
		return true
	}

	return false
}

// SetAssetId gets a reference to the given NullableString and assigns it to the AssetId field.
func (o *IndexesIndexMultiAssetWeight) SetAssetId(v string) {
	o.AssetId.Set(&v)
}
// SetAssetIdNil sets the value for AssetId to be an explicit nil
func (o *IndexesIndexMultiAssetWeight) SetAssetIdNil() {
	o.AssetId.Set(nil)
}

// UnsetAssetId ensures that no value is present for AssetId, not even an explicit nil
func (o *IndexesIndexMultiAssetWeight) UnsetAssetId() {
	o.AssetId.Unset()
}

// GetWeight returns the Weight field value if set, zero value otherwise.
func (o *IndexesIndexMultiAssetWeight) GetWeight() float64 {
	if o == nil || IsNil(o.Weight) {
		var ret float64
		return ret
	}
	return *o.Weight
}

// GetWeightOk returns a tuple with the Weight field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *IndexesIndexMultiAssetWeight) GetWeightOk() (*float64, bool) {
	if o == nil || IsNil(o.Weight) {
		return nil, false
	}
	return o.Weight, true
}

// HasWeight returns a boolean if a field has been set.
func (o *IndexesIndexMultiAssetWeight) HasWeight() bool {
	if o != nil && !IsNil(o.Weight) {
		return true
	}

	return false
}

// SetWeight gets a reference to the given float64 and assigns it to the Weight field.
func (o *IndexesIndexMultiAssetWeight) SetWeight(v float64) {
	o.Weight = &v
}

func (o IndexesIndexMultiAssetWeight) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o IndexesIndexMultiAssetWeight) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.IndexId.IsSet() {
		toSerialize["indexId"] = o.IndexId.Get()
	}
	if o.AssetId.IsSet() {
		toSerialize["assetId"] = o.AssetId.Get()
	}
	if !IsNil(o.Weight) {
		toSerialize["weight"] = o.Weight
	}
	return toSerialize, nil
}

type NullableIndexesIndexMultiAssetWeight struct {
	value *IndexesIndexMultiAssetWeight
	isSet bool
}

func (v NullableIndexesIndexMultiAssetWeight) Get() *IndexesIndexMultiAssetWeight {
	return v.value
}

func (v *NullableIndexesIndexMultiAssetWeight) Set(val *IndexesIndexMultiAssetWeight) {
	v.value = val
	v.isSet = true
}

func (v NullableIndexesIndexMultiAssetWeight) IsSet() bool {
	return v.isSet
}

func (v *NullableIndexesIndexMultiAssetWeight) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableIndexesIndexMultiAssetWeight(val *IndexesIndexMultiAssetWeight) *NullableIndexesIndexMultiAssetWeight {
	return &NullableIndexesIndexMultiAssetWeight{value: val, isSet: true}
}

func (v NullableIndexesIndexMultiAssetWeight) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableIndexesIndexMultiAssetWeight) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


