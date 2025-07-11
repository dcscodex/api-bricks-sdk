/*
FinFeedAPI Stock REST API

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

// checks if the Level3AddOrderModel type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &Level3AddOrderModel{}

// Level3AddOrderModel Represents the response DTO for add order information
type Level3AddOrderModel struct {
	// The stock symbol
	Symbol NullableString `json:"symbol,omitempty"`
	// Original timestamp in nanoseconds since epoch
	TimestampNanos *int64 `json:"timestamp_nanos,omitempty"`
	// Time when the order was added as DateTime (UTC)
	Timestamp *time.Time `json:"timestamp,omitempty"`
	// Indicates if this is a Buy order ('8'/0x38).
	IsSideBuy *bool `json:"is_side_buy,omitempty"`
	// Quoted size in number of shares
	Size *int32 `json:"size,omitempty"`
	// Price as decimal
	Price *float64 `json:"price,omitempty"`
	// Order identifier
	OrderId *int64 `json:"order_id,omitempty"`
}

// NewLevel3AddOrderModel instantiates a new Level3AddOrderModel object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewLevel3AddOrderModel() *Level3AddOrderModel {
	this := Level3AddOrderModel{}
	return &this
}

// NewLevel3AddOrderModelWithDefaults instantiates a new Level3AddOrderModel object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewLevel3AddOrderModelWithDefaults() *Level3AddOrderModel {
	this := Level3AddOrderModel{}
	return &this
}

// GetSymbol returns the Symbol field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *Level3AddOrderModel) GetSymbol() string {
	if o == nil || IsNil(o.Symbol.Get()) {
		var ret string
		return ret
	}
	return *o.Symbol.Get()
}

// GetSymbolOk returns a tuple with the Symbol field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Level3AddOrderModel) GetSymbolOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Symbol.Get(), o.Symbol.IsSet()
}

// HasSymbol returns a boolean if a field has been set.
func (o *Level3AddOrderModel) HasSymbol() bool {
	if o != nil && o.Symbol.IsSet() {
		return true
	}

	return false
}

// SetSymbol gets a reference to the given NullableString and assigns it to the Symbol field.
func (o *Level3AddOrderModel) SetSymbol(v string) {
	o.Symbol.Set(&v)
}
// SetSymbolNil sets the value for Symbol to be an explicit nil
func (o *Level3AddOrderModel) SetSymbolNil() {
	o.Symbol.Set(nil)
}

// UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
func (o *Level3AddOrderModel) UnsetSymbol() {
	o.Symbol.Unset()
}

// GetTimestampNanos returns the TimestampNanos field value if set, zero value otherwise.
func (o *Level3AddOrderModel) GetTimestampNanos() int64 {
	if o == nil || IsNil(o.TimestampNanos) {
		var ret int64
		return ret
	}
	return *o.TimestampNanos
}

// GetTimestampNanosOk returns a tuple with the TimestampNanos field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Level3AddOrderModel) GetTimestampNanosOk() (*int64, bool) {
	if o == nil || IsNil(o.TimestampNanos) {
		return nil, false
	}
	return o.TimestampNanos, true
}

// HasTimestampNanos returns a boolean if a field has been set.
func (o *Level3AddOrderModel) HasTimestampNanos() bool {
	if o != nil && !IsNil(o.TimestampNanos) {
		return true
	}

	return false
}

// SetTimestampNanos gets a reference to the given int64 and assigns it to the TimestampNanos field.
func (o *Level3AddOrderModel) SetTimestampNanos(v int64) {
	o.TimestampNanos = &v
}

// GetTimestamp returns the Timestamp field value if set, zero value otherwise.
func (o *Level3AddOrderModel) GetTimestamp() time.Time {
	if o == nil || IsNil(o.Timestamp) {
		var ret time.Time
		return ret
	}
	return *o.Timestamp
}

// GetTimestampOk returns a tuple with the Timestamp field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Level3AddOrderModel) GetTimestampOk() (*time.Time, bool) {
	if o == nil || IsNil(o.Timestamp) {
		return nil, false
	}
	return o.Timestamp, true
}

// HasTimestamp returns a boolean if a field has been set.
func (o *Level3AddOrderModel) HasTimestamp() bool {
	if o != nil && !IsNil(o.Timestamp) {
		return true
	}

	return false
}

// SetTimestamp gets a reference to the given time.Time and assigns it to the Timestamp field.
func (o *Level3AddOrderModel) SetTimestamp(v time.Time) {
	o.Timestamp = &v
}

// GetIsSideBuy returns the IsSideBuy field value if set, zero value otherwise.
func (o *Level3AddOrderModel) GetIsSideBuy() bool {
	if o == nil || IsNil(o.IsSideBuy) {
		var ret bool
		return ret
	}
	return *o.IsSideBuy
}

// GetIsSideBuyOk returns a tuple with the IsSideBuy field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Level3AddOrderModel) GetIsSideBuyOk() (*bool, bool) {
	if o == nil || IsNil(o.IsSideBuy) {
		return nil, false
	}
	return o.IsSideBuy, true
}

// HasIsSideBuy returns a boolean if a field has been set.
func (o *Level3AddOrderModel) HasIsSideBuy() bool {
	if o != nil && !IsNil(o.IsSideBuy) {
		return true
	}

	return false
}

// SetIsSideBuy gets a reference to the given bool and assigns it to the IsSideBuy field.
func (o *Level3AddOrderModel) SetIsSideBuy(v bool) {
	o.IsSideBuy = &v
}

// GetSize returns the Size field value if set, zero value otherwise.
func (o *Level3AddOrderModel) GetSize() int32 {
	if o == nil || IsNil(o.Size) {
		var ret int32
		return ret
	}
	return *o.Size
}

// GetSizeOk returns a tuple with the Size field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Level3AddOrderModel) GetSizeOk() (*int32, bool) {
	if o == nil || IsNil(o.Size) {
		return nil, false
	}
	return o.Size, true
}

// HasSize returns a boolean if a field has been set.
func (o *Level3AddOrderModel) HasSize() bool {
	if o != nil && !IsNil(o.Size) {
		return true
	}

	return false
}

// SetSize gets a reference to the given int32 and assigns it to the Size field.
func (o *Level3AddOrderModel) SetSize(v int32) {
	o.Size = &v
}

// GetPrice returns the Price field value if set, zero value otherwise.
func (o *Level3AddOrderModel) GetPrice() float64 {
	if o == nil || IsNil(o.Price) {
		var ret float64
		return ret
	}
	return *o.Price
}

// GetPriceOk returns a tuple with the Price field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Level3AddOrderModel) GetPriceOk() (*float64, bool) {
	if o == nil || IsNil(o.Price) {
		return nil, false
	}
	return o.Price, true
}

// HasPrice returns a boolean if a field has been set.
func (o *Level3AddOrderModel) HasPrice() bool {
	if o != nil && !IsNil(o.Price) {
		return true
	}

	return false
}

// SetPrice gets a reference to the given float64 and assigns it to the Price field.
func (o *Level3AddOrderModel) SetPrice(v float64) {
	o.Price = &v
}

// GetOrderId returns the OrderId field value if set, zero value otherwise.
func (o *Level3AddOrderModel) GetOrderId() int64 {
	if o == nil || IsNil(o.OrderId) {
		var ret int64
		return ret
	}
	return *o.OrderId
}

// GetOrderIdOk returns a tuple with the OrderId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Level3AddOrderModel) GetOrderIdOk() (*int64, bool) {
	if o == nil || IsNil(o.OrderId) {
		return nil, false
	}
	return o.OrderId, true
}

// HasOrderId returns a boolean if a field has been set.
func (o *Level3AddOrderModel) HasOrderId() bool {
	if o != nil && !IsNil(o.OrderId) {
		return true
	}

	return false
}

// SetOrderId gets a reference to the given int64 and assigns it to the OrderId field.
func (o *Level3AddOrderModel) SetOrderId(v int64) {
	o.OrderId = &v
}

func (o Level3AddOrderModel) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o Level3AddOrderModel) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Symbol.IsSet() {
		toSerialize["symbol"] = o.Symbol.Get()
	}
	if !IsNil(o.TimestampNanos) {
		toSerialize["timestamp_nanos"] = o.TimestampNanos
	}
	if !IsNil(o.Timestamp) {
		toSerialize["timestamp"] = o.Timestamp
	}
	if !IsNil(o.IsSideBuy) {
		toSerialize["is_side_buy"] = o.IsSideBuy
	}
	if !IsNil(o.Size) {
		toSerialize["size"] = o.Size
	}
	if !IsNil(o.Price) {
		toSerialize["price"] = o.Price
	}
	if !IsNil(o.OrderId) {
		toSerialize["order_id"] = o.OrderId
	}
	return toSerialize, nil
}

type NullableLevel3AddOrderModel struct {
	value *Level3AddOrderModel
	isSet bool
}

func (v NullableLevel3AddOrderModel) Get() *Level3AddOrderModel {
	return v.value
}

func (v *NullableLevel3AddOrderModel) Set(val *Level3AddOrderModel) {
	v.value = val
	v.isSet = true
}

func (v NullableLevel3AddOrderModel) IsSet() bool {
	return v.isSet
}

func (v *NullableLevel3AddOrderModel) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableLevel3AddOrderModel(val *Level3AddOrderModel) *NullableLevel3AddOrderModel {
	return &NullableLevel3AddOrderModel{value: val, isSet: true}
}

func (v NullableLevel3AddOrderModel) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableLevel3AddOrderModel) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


