# ExchangeLoginRequire

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | Pointer to **string** | Exchange identifier and optional tag identifying specific account configured when the software will be managing multiple accounts on the same exchange; for eg:  &lt;code&gt;BITSTAMP&lt;/code&gt; &lt;code&gt;BITSTAMP/7c177641-74bd-4dbe-9b01-2497c12a5f70&#x60;&lt;/code&gt; &lt;code&gt;BITSTAMP/2574&lt;/code&gt; Allowed separators between the exchange identifier and the tag: &lt;code&gt;~/.,:;\\!@#$%^&amp;*-_+&#x3D;.&lt;/code&gt;  | [optional] 
**LocationId** | Pointer to **string** | Location identifier | [optional] 
**RequiredParameters** | Pointer to **[]string** | Parameters required to log into the exchange | [optional] 

## Methods

### NewExchangeLoginRequire

`func NewExchangeLoginRequire() *ExchangeLoginRequire`

NewExchangeLoginRequire instantiates a new ExchangeLoginRequire object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewExchangeLoginRequireWithDefaults

`func NewExchangeLoginRequireWithDefaults() *ExchangeLoginRequire`

NewExchangeLoginRequireWithDefaults instantiates a new ExchangeLoginRequire object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetExchangeId

`func (o *ExchangeLoginRequire) GetExchangeId() string`

GetExchangeId returns the ExchangeId field if non-nil, zero value otherwise.

### GetExchangeIdOk

`func (o *ExchangeLoginRequire) GetExchangeIdOk() (*string, bool)`

GetExchangeIdOk returns a tuple with the ExchangeId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeId

`func (o *ExchangeLoginRequire) SetExchangeId(v string)`

SetExchangeId sets ExchangeId field to given value.

### HasExchangeId

`func (o *ExchangeLoginRequire) HasExchangeId() bool`

HasExchangeId returns a boolean if a field has been set.

### GetLocationId

`func (o *ExchangeLoginRequire) GetLocationId() string`

GetLocationId returns the LocationId field if non-nil, zero value otherwise.

### GetLocationIdOk

`func (o *ExchangeLoginRequire) GetLocationIdOk() (*string, bool)`

GetLocationIdOk returns a tuple with the LocationId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocationId

`func (o *ExchangeLoginRequire) SetLocationId(v string)`

SetLocationId sets LocationId field to given value.

### HasLocationId

`func (o *ExchangeLoginRequire) HasLocationId() bool`

HasLocationId returns a boolean if a field has been set.

### GetRequiredParameters

`func (o *ExchangeLoginRequire) GetRequiredParameters() []string`

GetRequiredParameters returns the RequiredParameters field if non-nil, zero value otherwise.

### GetRequiredParametersOk

`func (o *ExchangeLoginRequire) GetRequiredParametersOk() (*[]string, bool)`

GetRequiredParametersOk returns a tuple with the RequiredParameters field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequiredParameters

`func (o *ExchangeLoginRequire) SetRequiredParameters(v []string)`

SetRequiredParameters sets RequiredParameters field to given value.

### HasRequiredParameters

`func (o *ExchangeLoginRequire) HasRequiredParameters() bool`

HasRequiredParameters returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


