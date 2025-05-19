# IndexesIndexDefinitionSnapshotEntry

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IndexId** | Pointer to **NullableString** |  | [optional] 
**Timestamp** | Pointer to **time.Time** |  | [optional] 
**Value** | Pointer to **float64** |  | [optional] 

## Methods

### NewIndexesIndexDefinitionSnapshotEntry

`func NewIndexesIndexDefinitionSnapshotEntry() *IndexesIndexDefinitionSnapshotEntry`

NewIndexesIndexDefinitionSnapshotEntry instantiates a new IndexesIndexDefinitionSnapshotEntry object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewIndexesIndexDefinitionSnapshotEntryWithDefaults

`func NewIndexesIndexDefinitionSnapshotEntryWithDefaults() *IndexesIndexDefinitionSnapshotEntry`

NewIndexesIndexDefinitionSnapshotEntryWithDefaults instantiates a new IndexesIndexDefinitionSnapshotEntry object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetIndexId

`func (o *IndexesIndexDefinitionSnapshotEntry) GetIndexId() string`

GetIndexId returns the IndexId field if non-nil, zero value otherwise.

### GetIndexIdOk

`func (o *IndexesIndexDefinitionSnapshotEntry) GetIndexIdOk() (*string, bool)`

GetIndexIdOk returns a tuple with the IndexId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIndexId

`func (o *IndexesIndexDefinitionSnapshotEntry) SetIndexId(v string)`

SetIndexId sets IndexId field to given value.

### HasIndexId

`func (o *IndexesIndexDefinitionSnapshotEntry) HasIndexId() bool`

HasIndexId returns a boolean if a field has been set.

### SetIndexIdNil

`func (o *IndexesIndexDefinitionSnapshotEntry) SetIndexIdNil(b bool)`

 SetIndexIdNil sets the value for IndexId to be an explicit nil

### UnsetIndexId
`func (o *IndexesIndexDefinitionSnapshotEntry) UnsetIndexId()`

UnsetIndexId ensures that no value is present for IndexId, not even an explicit nil
### GetTimestamp

`func (o *IndexesIndexDefinitionSnapshotEntry) GetTimestamp() time.Time`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *IndexesIndexDefinitionSnapshotEntry) GetTimestampOk() (*time.Time, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *IndexesIndexDefinitionSnapshotEntry) SetTimestamp(v time.Time)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *IndexesIndexDefinitionSnapshotEntry) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### GetValue

`func (o *IndexesIndexDefinitionSnapshotEntry) GetValue() float64`

GetValue returns the Value field if non-nil, zero value otherwise.

### GetValueOk

`func (o *IndexesIndexDefinitionSnapshotEntry) GetValueOk() (*float64, bool)`

GetValueOk returns a tuple with the Value field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValue

`func (o *IndexesIndexDefinitionSnapshotEntry) SetValue(v float64)`

SetValue sets Value field to given value.

### HasValue

`func (o *IndexesIndexDefinitionSnapshotEntry) HasValue() bool`

HasValue returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


