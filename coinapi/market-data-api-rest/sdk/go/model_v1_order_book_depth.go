/*
CoinAPI Market Data REST API

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

API version: v1
Contact: support@apibricks.io
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
	"time"
)

// checks if the V1OrderBookDepth type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &V1OrderBookDepth{}

// V1OrderBookDepth Represents the depth of an order book.
type V1OrderBookDepth struct {
	// The symbol identifier.
	SymbolId NullableString `json:"symbol_id,omitempty"`
	// The exchange time of the order book.
	TimeExchange *time.Time `json:"time_exchange,omitempty"`
	// The CoinAPI time when the order book was received.
	TimeCoinapi *time.Time `json:"time_coinapi,omitempty"`
	// The number of ask levels in the order book.
	AskLevels *int64 `json:"ask_levels,omitempty"`
	// The number of bid levels in the order book.
	BidLevels *int64 `json:"bid_levels,omitempty"`
	// The depth of the ask side of the order book.
	AskDepth *float64 `json:"ask_depth,omitempty"`
	// The depth of the bid side of the order book.
	BidDepth *float64 `json:"bid_depth,omitempty"`
}

// NewV1OrderBookDepth instantiates a new V1OrderBookDepth object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewV1OrderBookDepth() *V1OrderBookDepth {
	this := V1OrderBookDepth{}
	return &this
}

// NewV1OrderBookDepthWithDefaults instantiates a new V1OrderBookDepth object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewV1OrderBookDepthWithDefaults() *V1OrderBookDepth {
	this := V1OrderBookDepth{}
	return &this
}

// GetSymbolId returns the SymbolId field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *V1OrderBookDepth) GetSymbolId() string {
	if o == nil || IsNil(o.SymbolId.Get()) {
		var ret string
		return ret
	}
	return *o.SymbolId.Get()
}

// GetSymbolIdOk returns a tuple with the SymbolId field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *V1OrderBookDepth) GetSymbolIdOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.SymbolId.Get(), o.SymbolId.IsSet()
}

// HasSymbolId returns a boolean if a field has been set.
func (o *V1OrderBookDepth) HasSymbolId() bool {
	if o != nil && o.SymbolId.IsSet() {
		return true
	}

	return false
}

// SetSymbolId gets a reference to the given NullableString and assigns it to the SymbolId field.
func (o *V1OrderBookDepth) SetSymbolId(v string) {
	o.SymbolId.Set(&v)
}
// SetSymbolIdNil sets the value for SymbolId to be an explicit nil
func (o *V1OrderBookDepth) SetSymbolIdNil() {
	o.SymbolId.Set(nil)
}

// UnsetSymbolId ensures that no value is present for SymbolId, not even an explicit nil
func (o *V1OrderBookDepth) UnsetSymbolId() {
	o.SymbolId.Unset()
}

// GetTimeExchange returns the TimeExchange field value if set, zero value otherwise.
func (o *V1OrderBookDepth) GetTimeExchange() time.Time {
	if o == nil || IsNil(o.TimeExchange) {
		var ret time.Time
		return ret
	}
	return *o.TimeExchange
}

// GetTimeExchangeOk returns a tuple with the TimeExchange field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *V1OrderBookDepth) GetTimeExchangeOk() (*time.Time, bool) {
	if o == nil || IsNil(o.TimeExchange) {
		return nil, false
	}
	return o.TimeExchange, true
}

// HasTimeExchange returns a boolean if a field has been set.
func (o *V1OrderBookDepth) HasTimeExchange() bool {
	if o != nil && !IsNil(o.TimeExchange) {
		return true
	}

	return false
}

// SetTimeExchange gets a reference to the given time.Time and assigns it to the TimeExchange field.
func (o *V1OrderBookDepth) SetTimeExchange(v time.Time) {
	o.TimeExchange = &v
}

// GetTimeCoinapi returns the TimeCoinapi field value if set, zero value otherwise.
func (o *V1OrderBookDepth) GetTimeCoinapi() time.Time {
	if o == nil || IsNil(o.TimeCoinapi) {
		var ret time.Time
		return ret
	}
	return *o.TimeCoinapi
}

// GetTimeCoinapiOk returns a tuple with the TimeCoinapi field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *V1OrderBookDepth) GetTimeCoinapiOk() (*time.Time, bool) {
	if o == nil || IsNil(o.TimeCoinapi) {
		return nil, false
	}
	return o.TimeCoinapi, true
}

// HasTimeCoinapi returns a boolean if a field has been set.
func (o *V1OrderBookDepth) HasTimeCoinapi() bool {
	if o != nil && !IsNil(o.TimeCoinapi) {
		return true
	}

	return false
}

// SetTimeCoinapi gets a reference to the given time.Time and assigns it to the TimeCoinapi field.
func (o *V1OrderBookDepth) SetTimeCoinapi(v time.Time) {
	o.TimeCoinapi = &v
}

// GetAskLevels returns the AskLevels field value if set, zero value otherwise.
func (o *V1OrderBookDepth) GetAskLevels() int64 {
	if o == nil || IsNil(o.AskLevels) {
		var ret int64
		return ret
	}
	return *o.AskLevels
}

// GetAskLevelsOk returns a tuple with the AskLevels field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *V1OrderBookDepth) GetAskLevelsOk() (*int64, bool) {
	if o == nil || IsNil(o.AskLevels) {
		return nil, false
	}
	return o.AskLevels, true
}

// HasAskLevels returns a boolean if a field has been set.
func (o *V1OrderBookDepth) HasAskLevels() bool {
	if o != nil && !IsNil(o.AskLevels) {
		return true
	}

	return false
}

// SetAskLevels gets a reference to the given int64 and assigns it to the AskLevels field.
func (o *V1OrderBookDepth) SetAskLevels(v int64) {
	o.AskLevels = &v
}

// GetBidLevels returns the BidLevels field value if set, zero value otherwise.
func (o *V1OrderBookDepth) GetBidLevels() int64 {
	if o == nil || IsNil(o.BidLevels) {
		var ret int64
		return ret
	}
	return *o.BidLevels
}

// GetBidLevelsOk returns a tuple with the BidLevels field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *V1OrderBookDepth) GetBidLevelsOk() (*int64, bool) {
	if o == nil || IsNil(o.BidLevels) {
		return nil, false
	}
	return o.BidLevels, true
}

// HasBidLevels returns a boolean if a field has been set.
func (o *V1OrderBookDepth) HasBidLevels() bool {
	if o != nil && !IsNil(o.BidLevels) {
		return true
	}

	return false
}

// SetBidLevels gets a reference to the given int64 and assigns it to the BidLevels field.
func (o *V1OrderBookDepth) SetBidLevels(v int64) {
	o.BidLevels = &v
}

// GetAskDepth returns the AskDepth field value if set, zero value otherwise.
func (o *V1OrderBookDepth) GetAskDepth() float64 {
	if o == nil || IsNil(o.AskDepth) {
		var ret float64
		return ret
	}
	return *o.AskDepth
}

// GetAskDepthOk returns a tuple with the AskDepth field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *V1OrderBookDepth) GetAskDepthOk() (*float64, bool) {
	if o == nil || IsNil(o.AskDepth) {
		return nil, false
	}
	return o.AskDepth, true
}

// HasAskDepth returns a boolean if a field has been set.
func (o *V1OrderBookDepth) HasAskDepth() bool {
	if o != nil && !IsNil(o.AskDepth) {
		return true
	}

	return false
}

// SetAskDepth gets a reference to the given float64 and assigns it to the AskDepth field.
func (o *V1OrderBookDepth) SetAskDepth(v float64) {
	o.AskDepth = &v
}

// GetBidDepth returns the BidDepth field value if set, zero value otherwise.
func (o *V1OrderBookDepth) GetBidDepth() float64 {
	if o == nil || IsNil(o.BidDepth) {
		var ret float64
		return ret
	}
	return *o.BidDepth
}

// GetBidDepthOk returns a tuple with the BidDepth field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *V1OrderBookDepth) GetBidDepthOk() (*float64, bool) {
	if o == nil || IsNil(o.BidDepth) {
		return nil, false
	}
	return o.BidDepth, true
}

// HasBidDepth returns a boolean if a field has been set.
func (o *V1OrderBookDepth) HasBidDepth() bool {
	if o != nil && !IsNil(o.BidDepth) {
		return true
	}

	return false
}

// SetBidDepth gets a reference to the given float64 and assigns it to the BidDepth field.
func (o *V1OrderBookDepth) SetBidDepth(v float64) {
	o.BidDepth = &v
}

func (o V1OrderBookDepth) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o V1OrderBookDepth) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.SymbolId.IsSet() {
		toSerialize["symbol_id"] = o.SymbolId.Get()
	}
	if !IsNil(o.TimeExchange) {
		toSerialize["time_exchange"] = o.TimeExchange
	}
	if !IsNil(o.TimeCoinapi) {
		toSerialize["time_coinapi"] = o.TimeCoinapi
	}
	if !IsNil(o.AskLevels) {
		toSerialize["ask_levels"] = o.AskLevels
	}
	if !IsNil(o.BidLevels) {
		toSerialize["bid_levels"] = o.BidLevels
	}
	if !IsNil(o.AskDepth) {
		toSerialize["ask_depth"] = o.AskDepth
	}
	if !IsNil(o.BidDepth) {
		toSerialize["bid_depth"] = o.BidDepth
	}
	return toSerialize, nil
}

type NullableV1OrderBookDepth struct {
	value *V1OrderBookDepth
	isSet bool
}

func (v NullableV1OrderBookDepth) Get() *V1OrderBookDepth {
	return v.value
}

func (v *NullableV1OrderBookDepth) Set(val *V1OrderBookDepth) {
	v.value = val
	v.isSet = true
}

func (v NullableV1OrderBookDepth) IsSet() bool {
	return v.isSet
}

func (v *NullableV1OrderBookDepth) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableV1OrderBookDepth(val *V1OrderBookDepth) *NullableV1OrderBookDepth {
	return &NullableV1OrderBookDepth{value: val, isSet: true}
}

func (v NullableV1OrderBookDepth) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableV1OrderBookDepth) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


