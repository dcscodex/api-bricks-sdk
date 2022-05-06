# AccountEndpoint

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | Pointer to **string** | Exchange identifier and optional tag identifying specific account configured when the software will be managing multiple accounts on the same exchange; for eg:  &lt;code&gt;BITSTAMP&lt;/code&gt; &lt;code&gt;BITSTAMP/7c177641-74bd-4dbe-9b01-2497c12a5f70&#x60;&lt;/code&gt; &lt;code&gt;BITSTAMP/2574&lt;/code&gt; Allowed separators between the exchange identifier and the tag: &lt;code&gt;~/.,:;\\!@#$%^&amp;*-_+&#x3D;.&lt;/code&gt;  | [optional] 
**LocationId** | Pointer to **string** | Location identifier | [optional] 
**EndpointSchema** | Pointer to **string** | Endpoint schema | [optional] 
**EndpointHost** | Pointer to **string** | Endpoint host | [optional] 
**EndpointUrl** | Pointer to **string** | Endpoint URL | [optional] 

## Methods

### NewAccountEndpoint

`func NewAccountEndpoint() *AccountEndpoint`

NewAccountEndpoint instantiates a new AccountEndpoint object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountEndpointWithDefaults

`func NewAccountEndpointWithDefaults() *AccountEndpoint`

NewAccountEndpointWithDefaults instantiates a new AccountEndpoint object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetExchangeId

`func (o *AccountEndpoint) GetExchangeId() string`

GetExchangeId returns the ExchangeId field if non-nil, zero value otherwise.

### GetExchangeIdOk

`func (o *AccountEndpoint) GetExchangeIdOk() (*string, bool)`

GetExchangeIdOk returns a tuple with the ExchangeId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeId

`func (o *AccountEndpoint) SetExchangeId(v string)`

SetExchangeId sets ExchangeId field to given value.

### HasExchangeId

`func (o *AccountEndpoint) HasExchangeId() bool`

HasExchangeId returns a boolean if a field has been set.

### GetLocationId

`func (o *AccountEndpoint) GetLocationId() string`

GetLocationId returns the LocationId field if non-nil, zero value otherwise.

### GetLocationIdOk

`func (o *AccountEndpoint) GetLocationIdOk() (*string, bool)`

GetLocationIdOk returns a tuple with the LocationId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocationId

`func (o *AccountEndpoint) SetLocationId(v string)`

SetLocationId sets LocationId field to given value.

### HasLocationId

`func (o *AccountEndpoint) HasLocationId() bool`

HasLocationId returns a boolean if a field has been set.

### GetEndpointSchema

`func (o *AccountEndpoint) GetEndpointSchema() string`

GetEndpointSchema returns the EndpointSchema field if non-nil, zero value otherwise.

### GetEndpointSchemaOk

`func (o *AccountEndpoint) GetEndpointSchemaOk() (*string, bool)`

GetEndpointSchemaOk returns a tuple with the EndpointSchema field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndpointSchema

`func (o *AccountEndpoint) SetEndpointSchema(v string)`

SetEndpointSchema sets EndpointSchema field to given value.

### HasEndpointSchema

`func (o *AccountEndpoint) HasEndpointSchema() bool`

HasEndpointSchema returns a boolean if a field has been set.

### GetEndpointHost

`func (o *AccountEndpoint) GetEndpointHost() string`

GetEndpointHost returns the EndpointHost field if non-nil, zero value otherwise.

### GetEndpointHostOk

`func (o *AccountEndpoint) GetEndpointHostOk() (*string, bool)`

GetEndpointHostOk returns a tuple with the EndpointHost field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndpointHost

`func (o *AccountEndpoint) SetEndpointHost(v string)`

SetEndpointHost sets EndpointHost field to given value.

### HasEndpointHost

`func (o *AccountEndpoint) HasEndpointHost() bool`

HasEndpointHost returns a boolean if a field has been set.

### GetEndpointUrl

`func (o *AccountEndpoint) GetEndpointUrl() string`

GetEndpointUrl returns the EndpointUrl field if non-nil, zero value otherwise.

### GetEndpointUrlOk

`func (o *AccountEndpoint) GetEndpointUrlOk() (*string, bool)`

GetEndpointUrlOk returns a tuple with the EndpointUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndpointUrl

`func (o *AccountEndpoint) SetEndpointUrl(v string)`

SetEndpointUrl sets EndpointUrl field to given value.

### HasEndpointUrl

`func (o *AccountEndpoint) HasEndpointUrl() bool`

HasEndpointUrl returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


