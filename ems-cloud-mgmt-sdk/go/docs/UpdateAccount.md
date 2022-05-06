# UpdateAccount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | Pointer to **string** | Exchange identifier and optional tag identifying specific account configured when the software will be managing multiple accounts on the same exchange; for eg:  &lt;code&gt;BITSTAMP&lt;/code&gt; &lt;code&gt;BITSTAMP/7c177641-74bd-4dbe-9b01-2497c12a5f70&#x60;&lt;/code&gt; &lt;code&gt;BITSTAMP/2574&lt;/code&gt; Allowed separators between the exchange identifier and the tag: &lt;code&gt;~/.,:;\\!@#$%^&amp;*-_+&#x3D;.&lt;/code&gt;  | [optional] 
**Parameters** | Pointer to [**[]KeyValue**](KeyValue.md) | Parameters required to log into the exchange | [optional] 

## Methods

### NewUpdateAccount

`func NewUpdateAccount() *UpdateAccount`

NewUpdateAccount instantiates a new UpdateAccount object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUpdateAccountWithDefaults

`func NewUpdateAccountWithDefaults() *UpdateAccount`

NewUpdateAccountWithDefaults instantiates a new UpdateAccount object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetExchangeId

`func (o *UpdateAccount) GetExchangeId() string`

GetExchangeId returns the ExchangeId field if non-nil, zero value otherwise.

### GetExchangeIdOk

`func (o *UpdateAccount) GetExchangeIdOk() (*string, bool)`

GetExchangeIdOk returns a tuple with the ExchangeId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeId

`func (o *UpdateAccount) SetExchangeId(v string)`

SetExchangeId sets ExchangeId field to given value.

### HasExchangeId

`func (o *UpdateAccount) HasExchangeId() bool`

HasExchangeId returns a boolean if a field has been set.

### GetParameters

`func (o *UpdateAccount) GetParameters() []KeyValue`

GetParameters returns the Parameters field if non-nil, zero value otherwise.

### GetParametersOk

`func (o *UpdateAccount) GetParametersOk() (*[]KeyValue, bool)`

GetParametersOk returns a tuple with the Parameters field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParameters

`func (o *UpdateAccount) SetParameters(v []KeyValue)`

SetParameters sets Parameters field to given value.

### HasParameters

`func (o *UpdateAccount) HasParameters() bool`

HasParameters returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


