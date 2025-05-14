# INDEXES_API

All URIs are relative to *https://rest-api.indexes.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**v1_indexdef_input_data_index_definition_id_all_get**](INDEXES_API.md#v1_indexdef_input_data_index_definition_id_all_get) | **Get** /v1/indexdef/input-data/{index_definition_id}/all | Returns all data inputs for a specific index definition
[**v1_indexdef_input_data_index_definition_id_get**](INDEXES_API.md#v1_indexdef_input_data_index_definition_id_get) | **Get** /v1/indexdef/input-data/{index_definition_id} | Returns data inputs for certain index definition and time
[**v1_indexdef_multiasset_get**](INDEXES_API.md#v1_indexdef_multiasset_get) | **Get** /v1/indexdef/multiasset | Get all multi-asset weights
[**v1_indexdef_multiasset_index_id_get**](INDEXES_API.md#v1_indexdef_multiasset_index_id_get) | **Get** /v1/indexdef/multiasset/{index_id} | Get multi-asset weights for specific index
[**v1_indexes_get**](INDEXES_API.md#v1_indexes_get) | **Get** /v1/indexes | List indexes
[**v1_indexes_index_definition_id_current_snapshot_get**](INDEXES_API.md#v1_indexes_index_definition_id_current_snapshot_get) | **Get** /v1/indexes/{index_definition_id}/currentSnapshot | Current Index Values for index definition
[**v1_indexes_index_definition_id_history_snapshot_get**](INDEXES_API.md#v1_indexes_index_definition_id_history_snapshot_get) | **Get** /v1/indexes/{index_definition_id}/historySnapshot | Historical Index Values for index definition
[**v1_indexes_index_id_current_get**](INDEXES_API.md#v1_indexes_index_id_current_get) | **Get** /v1/indexes/{index_id}/current | Current Index Value
[**v1_indexes_index_id_history_get**](INDEXES_API.md#v1_indexes_index_id_history_get) | **Get** /v1/indexes/{index_id}/history | Historical Index Value w/Composition
[**v1_indexes_index_id_timeseries_get**](INDEXES_API.md#v1_indexes_index_id_timeseries_get) | **Get** /v1/indexes/{index_id}/timeseries | Timeseries Index Value


# **v1_indexdef_input_data_index_definition_id_all_get**
> v1_indexdef_input_data_index_definition_id_all_get (index_definition_id: STRING_32 ): detachable LIST [INDEXES_INDEX_DEFINITION_INPUT_DATA]


Returns all data inputs for a specific index definition


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **index_definition_id** | **STRING_32**|  | [default to null]

### Return type

[**LIST [INDEXES_INDEX_DEFINITION_INPUT_DATA]**](Indexes.IndexDefinitionInputData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_indexdef_input_data_index_definition_id_get**
> v1_indexdef_input_data_index_definition_id_get (index_definition_id: STRING_32 ; time:  detachable DATE_TIME ; enabled_only:  detachable BOOLEAN ; pending_only:  detachable BOOLEAN ; filter_asset_id:  detachable STRING_32 ; with_status_info:  detachable BOOLEAN ): detachable LIST [INDEXES_INDEX_DEFINITION_SNAPSHOT_ENTRY]


Returns data inputs for certain index definition and time


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **index_definition_id** | **STRING_32**|  | [default to null]
 **time** | **DATE_TIME**|  | [optional] [default to null]
 **enabled_only** | **BOOLEAN**|  | [optional] [default to false]
 **pending_only** | **BOOLEAN**|  | [optional] [default to false]
 **filter_asset_id** | **STRING_32**|  | [optional] [default to null]
 **with_status_info** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**LIST [INDEXES_INDEX_DEFINITION_SNAPSHOT_ENTRY]**](Indexes.IndexDefinitionSnapshotEntry.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_indexdef_multiasset_get**
> v1_indexdef_multiasset_get : detachable LIST [INDEXES_INDEX_MULTI_ASSET_WEIGHT]


Get all multi-asset weights


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [INDEXES_INDEX_MULTI_ASSET_WEIGHT]**](Indexes.IndexMultiAssetWeight.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_indexdef_multiasset_index_id_get**
> v1_indexdef_multiasset_index_id_get (index_id: STRING_32 ): detachable LIST [INDEXES_INDEX_MULTI_ASSET_WEIGHT]


Get multi-asset weights for specific index


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **index_id** | **STRING_32**|  | [default to null]

### Return type

[**LIST [INDEXES_INDEX_MULTI_ASSET_WEIGHT]**](Indexes.IndexMultiAssetWeight.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_indexes_get**
> v1_indexes_get : detachable LIST [INDEXES_INDEX_IDENTIFIER]


List indexes


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [INDEXES_INDEX_IDENTIFIER]**](Indexes.IndexIdentifier.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_indexes_index_definition_id_current_snapshot_get**
> v1_indexes_index_definition_id_current_snapshot_get (index_definition_id: STRING_32 ): detachable LIST [INDEXES_INDEX_DEFINITION_SNAPSHOT_ENTRY]


Current Index Values for index definition


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **index_definition_id** | **STRING_32**|  | [default to null]

### Return type

[**LIST [INDEXES_INDEX_DEFINITION_SNAPSHOT_ENTRY]**](Indexes.IndexDefinitionSnapshotEntry.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_indexes_index_definition_id_history_snapshot_get**
> v1_indexes_index_definition_id_history_snapshot_get (index_definition_id: STRING_32 ; time:  detachable DATE_TIME ): detachable LIST [INDEXES_INDEX_DEFINITION_SNAPSHOT_ENTRY]


Historical Index Values for index definition


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **index_definition_id** | **STRING_32**|  | [default to null]
 **time** | **DATE_TIME**|  | [optional] [default to null]

### Return type

[**LIST [INDEXES_INDEX_DEFINITION_SNAPSHOT_ENTRY]**](Indexes.IndexDefinitionSnapshotEntry.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_indexes_index_id_current_get**
> v1_indexes_index_id_current_get (index_id: STRING_32 ): detachable INDEXES_INDEX_VALUE


Current Index Value


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **index_id** | **STRING_32**|  | [default to null]

### Return type

[**INDEXES_INDEX_VALUE**](Indexes.IndexValue.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_indexes_index_id_history_get**
> v1_indexes_index_id_history_get (index_id: STRING_32 ; time_start:  detachable DATE_TIME ; time_end:  detachable DATE_TIME ; limit:  detachable INTEGER_32 ): detachable LIST [INDEXES_INDEX_VALUE]


Historical Index Value w/Composition


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **index_id** | **STRING_32**|  | [default to null]
 **time_start** | **DATE_TIME**|  | [optional] [default to null]
 **time_end** | **DATE_TIME**|  | [optional] [default to null]
 **limit** | **INTEGER_32**|  | [optional] [default to 100]

### Return type

[**LIST [INDEXES_INDEX_VALUE]**](Indexes.IndexValue.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_indexes_index_id_timeseries_get**
> v1_indexes_index_id_timeseries_get (index_id: STRING_32 ; period_id: STRING_32 ; time_start: STRING_32 ; time_end: STRING_32 ; limit:  detachable INTEGER_32 ): detachable LIST [INDEXES_INDEX_TIMESERIES_ITEM]


Timeseries Index Value


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **index_id** | **STRING_32**|  | [default to null]
 **period_id** | **STRING_32**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) | [default to null]
 **time_start** | **STRING_32**| Timeseries starting time in ISO 8601 | [default to null]
 **time_end** | **STRING_32**| Timeseries ending time in ISO 8601 | [default to null]
 **limit** | **INTEGER_32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**LIST [INDEXES_INDEX_TIMESERIES_ITEM]**](Indexes.IndexTimeseriesItem.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

