# V1Metric

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MetricId** | Pointer to **NullableString** | Gets or sets the metric ID. | [optional] 
**Description** | Pointer to **NullableString** | Gets or sets the metric description. | [optional] 

## Methods

### NewV1Metric

`func NewV1Metric() *V1Metric`

NewV1Metric instantiates a new V1Metric object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewV1MetricWithDefaults

`func NewV1MetricWithDefaults() *V1Metric`

NewV1MetricWithDefaults instantiates a new V1Metric object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMetricId

`func (o *V1Metric) GetMetricId() string`

GetMetricId returns the MetricId field if non-nil, zero value otherwise.

### GetMetricIdOk

`func (o *V1Metric) GetMetricIdOk() (*string, bool)`

GetMetricIdOk returns a tuple with the MetricId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMetricId

`func (o *V1Metric) SetMetricId(v string)`

SetMetricId sets MetricId field to given value.

### HasMetricId

`func (o *V1Metric) HasMetricId() bool`

HasMetricId returns a boolean if a field has been set.

### SetMetricIdNil

`func (o *V1Metric) SetMetricIdNil(b bool)`

 SetMetricIdNil sets the value for MetricId to be an explicit nil

### UnsetMetricId
`func (o *V1Metric) UnsetMetricId()`

UnsetMetricId ensures that no value is present for MetricId, not even an explicit nil
### GetDescription

`func (o *V1Metric) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *V1Metric) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *V1Metric) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *V1Metric) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *V1Metric) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *V1Metric) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


