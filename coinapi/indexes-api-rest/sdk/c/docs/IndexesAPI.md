# IndexesAPI

All URIs are relative to *https://rest-api.indexes.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**IndexesAPI_v1IndexdefInputDataIndexDefinitionIdAllGet**](IndexesAPI.md#IndexesAPI_v1IndexdefInputDataIndexDefinitionIdAllGet) | **GET** /v1/indexdef/input-data/{index_definition_id}/all | Returns all data inputs for a specific index definition
[**IndexesAPI_v1IndexdefInputDataIndexDefinitionIdGet**](IndexesAPI.md#IndexesAPI_v1IndexdefInputDataIndexDefinitionIdGet) | **GET** /v1/indexdef/input-data/{index_definition_id} | Returns data inputs for certain index definition and time
[**IndexesAPI_v1IndexdefMultiassetGet**](IndexesAPI.md#IndexesAPI_v1IndexdefMultiassetGet) | **GET** /v1/indexdef/multiasset | Get all multi-asset weights
[**IndexesAPI_v1IndexdefMultiassetIndexIdGet**](IndexesAPI.md#IndexesAPI_v1IndexdefMultiassetIndexIdGet) | **GET** /v1/indexdef/multiasset/{index_id} | Get multi-asset weights for specific index
[**IndexesAPI_v1IndexesGet**](IndexesAPI.md#IndexesAPI_v1IndexesGet) | **GET** /v1/indexes | List indexes
[**IndexesAPI_v1IndexesIndexDefinitionIdCurrentSnapshotGet**](IndexesAPI.md#IndexesAPI_v1IndexesIndexDefinitionIdCurrentSnapshotGet) | **GET** /v1/indexes/{index_definition_id}/currentSnapshot | Current Index Values for index definition
[**IndexesAPI_v1IndexesIndexDefinitionIdHistorySnapshotGet**](IndexesAPI.md#IndexesAPI_v1IndexesIndexDefinitionIdHistorySnapshotGet) | **GET** /v1/indexes/{index_definition_id}/historySnapshot | Historical Index Values for index definition
[**IndexesAPI_v1IndexesIndexIdCurrentGet**](IndexesAPI.md#IndexesAPI_v1IndexesIndexIdCurrentGet) | **GET** /v1/indexes/{index_id}/current | Current Index Value
[**IndexesAPI_v1IndexesIndexIdHistoryGet**](IndexesAPI.md#IndexesAPI_v1IndexesIndexIdHistoryGet) | **GET** /v1/indexes/{index_id}/history | Historical Index Value w/Composition
[**IndexesAPI_v1IndexesIndexIdTimeseriesGet**](IndexesAPI.md#IndexesAPI_v1IndexesIndexIdTimeseriesGet) | **GET** /v1/indexes/{index_id}/timeseries | Timeseries Index Value


# **IndexesAPI_v1IndexdefInputDataIndexDefinitionIdAllGet**
```c
// Returns all data inputs for a specific index definition
//
list_t* IndexesAPI_v1IndexdefInputDataIndexDefinitionIdAllGet(apiClient_t *apiClient, char *index_definition_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**index_definition_id** | **char \*** |  | 

### Return type

[list_t](indexes_index_definition_input_data.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **IndexesAPI_v1IndexdefInputDataIndexDefinitionIdGet**
```c
// Returns data inputs for certain index definition and time
//
list_t* IndexesAPI_v1IndexdefInputDataIndexDefinitionIdGet(apiClient_t *apiClient, char *index_definition_id, char time, int *enabled_only, int *pending_only, char *filter_asset_id, int *with_status_info);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**index_definition_id** | **char \*** |  | 
**time** | **char** |  | [optional] 
**enabled_only** | **int \*** |  | [optional] [default to false]
**pending_only** | **int \*** |  | [optional] [default to false]
**filter_asset_id** | **char \*** |  | [optional] 
**with_status_info** | **int \*** |  | [optional] [default to false]

### Return type

[list_t](indexes_index_definition_snapshot_entry.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **IndexesAPI_v1IndexdefMultiassetGet**
```c
// Get all multi-asset weights
//
list_t* IndexesAPI_v1IndexdefMultiassetGet(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](indexes_index_multi_asset_weight.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **IndexesAPI_v1IndexdefMultiassetIndexIdGet**
```c
// Get multi-asset weights for specific index
//
list_t* IndexesAPI_v1IndexdefMultiassetIndexIdGet(apiClient_t *apiClient, char *index_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**index_id** | **char \*** |  | 

### Return type

[list_t](indexes_index_multi_asset_weight.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **IndexesAPI_v1IndexesGet**
```c
// List indexes
//
list_t* IndexesAPI_v1IndexesGet(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](indexes_index_identifier.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **IndexesAPI_v1IndexesIndexDefinitionIdCurrentSnapshotGet**
```c
// Current Index Values for index definition
//
list_t* IndexesAPI_v1IndexesIndexDefinitionIdCurrentSnapshotGet(apiClient_t *apiClient, char *index_definition_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**index_definition_id** | **char \*** |  | 

### Return type

[list_t](indexes_index_definition_snapshot_entry.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **IndexesAPI_v1IndexesIndexDefinitionIdHistorySnapshotGet**
```c
// Historical Index Values for index definition
//
list_t* IndexesAPI_v1IndexesIndexDefinitionIdHistorySnapshotGet(apiClient_t *apiClient, char *index_definition_id, char time);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**index_definition_id** | **char \*** |  | 
**time** | **char** |  | [optional] 

### Return type

[list_t](indexes_index_definition_snapshot_entry.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **IndexesAPI_v1IndexesIndexIdCurrentGet**
```c
// Current Index Value
//
indexes_index_value_t* IndexesAPI_v1IndexesIndexIdCurrentGet(apiClient_t *apiClient, char *index_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**index_id** | **char \*** |  | 

### Return type

[indexes_index_value_t](indexes_index_value.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **IndexesAPI_v1IndexesIndexIdHistoryGet**
```c
// Historical Index Value w/Composition
//
list_t* IndexesAPI_v1IndexesIndexIdHistoryGet(apiClient_t *apiClient, char *index_id, char time_start, char time_end, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**index_id** | **char \*** |  | 
**time_start** | **char** |  | [optional] 
**time_end** | **char** |  | [optional] 
**limit** | **int \*** |  | [optional] [default to 100]

### Return type

[list_t](indexes_index_value.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **IndexesAPI_v1IndexesIndexIdTimeseriesGet**
```c
// Timeseries Index Value
//
list_t* IndexesAPI_v1IndexesIndexIdTimeseriesGet(apiClient_t *apiClient, char *index_id, char *period_id, char *time_start, char *time_end, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**index_id** | **char \*** |  | 
**period_id** | **char \*** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) | 
**time_start** | **char \*** | Timeseries starting time in ISO 8601 | 
**time_end** | **char \*** | Timeseries ending time in ISO 8601 | 
**limit** | **int \*** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[list_t](indexes_index_timeseries_item.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

