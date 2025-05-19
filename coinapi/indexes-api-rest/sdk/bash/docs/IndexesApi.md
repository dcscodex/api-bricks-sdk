# IndexesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1IndexdefInputDataIndexDefinitionIdAllGet**](IndexesApi.md#v1IndexdefInputDataIndexDefinitionIdAllGet) | **GET** /v1/indexdef/input-data/{index_definition_id}/all | Returns all data inputs for a specific index definition
[**v1IndexdefInputDataIndexDefinitionIdGet**](IndexesApi.md#v1IndexdefInputDataIndexDefinitionIdGet) | **GET** /v1/indexdef/input-data/{index_definition_id} | Returns data inputs for certain index definition and time
[**v1IndexdefMultiassetGet**](IndexesApi.md#v1IndexdefMultiassetGet) | **GET** /v1/indexdef/multiasset | Get all multi-asset weights
[**v1IndexdefMultiassetIndexIdGet**](IndexesApi.md#v1IndexdefMultiassetIndexIdGet) | **GET** /v1/indexdef/multiasset/{index_id} | Get multi-asset weights for specific index
[**v1IndexesGet**](IndexesApi.md#v1IndexesGet) | **GET** /v1/indexes | List indexes
[**v1IndexesIndexDefinitionIdCurrentSnapshotGet**](IndexesApi.md#v1IndexesIndexDefinitionIdCurrentSnapshotGet) | **GET** /v1/indexes/{index_definition_id}/currentSnapshot | Current Index Values for index definition
[**v1IndexesIndexDefinitionIdHistorySnapshotGet**](IndexesApi.md#v1IndexesIndexDefinitionIdHistorySnapshotGet) | **GET** /v1/indexes/{index_definition_id}/historySnapshot | Historical Index Values for index definition
[**v1IndexesIndexIdCurrentGet**](IndexesApi.md#v1IndexesIndexIdCurrentGet) | **GET** /v1/indexes/{index_id}/current | Current Index Value
[**v1IndexesIndexIdHistoryGet**](IndexesApi.md#v1IndexesIndexIdHistoryGet) | **GET** /v1/indexes/{index_id}/history | Historical Index Value w/Composition
[**v1IndexesIndexIdTimeseriesGet**](IndexesApi.md#v1IndexesIndexIdTimeseriesGet) | **GET** /v1/indexes/{index_id}/timeseries | Timeseries Index Value



## v1IndexdefInputDataIndexDefinitionIdAllGet

Returns all data inputs for a specific index definition

### Example

```bash
 v1IndexdefInputDataIndexDefinitionIdAllGet index_definition_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexDefinitionId** | **string** |  | [default to null]

### Return type

[**array[IndexesIndexDefinitionInputData]**](IndexesIndexDefinitionInputData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1IndexdefInputDataIndexDefinitionIdGet

Returns data inputs for certain index definition and time

### Example

```bash
 v1IndexdefInputDataIndexDefinitionIdGet index_definition_id=value  time=value  enabled_only=value  pending_only=value  filter_asset_id=value  with_status_info=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexDefinitionId** | **string** |  | [default to null]
 **_time** | **string** |  | [optional] [default to null]
 **enabledOnly** | **boolean** |  | [optional] [default to false]
 **pendingOnly** | **boolean** |  | [optional] [default to false]
 **filterAssetId** | **string** |  | [optional] [default to null]
 **withStatusInfo** | **boolean** |  | [optional] [default to false]

### Return type

[**array[IndexesIndexDefinitionSnapshotEntry]**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1IndexdefMultiassetGet

Get all multi-asset weights

### Example

```bash
 v1IndexdefMultiassetGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[IndexesIndexMultiAssetWeight]**](IndexesIndexMultiAssetWeight.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1IndexdefMultiassetIndexIdGet

Get multi-asset weights for specific index

### Example

```bash
 v1IndexdefMultiassetIndexIdGet index_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexId** | **string** |  | [default to null]

### Return type

[**array[IndexesIndexMultiAssetWeight]**](IndexesIndexMultiAssetWeight.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1IndexesGet

List indexes

### Example

```bash
 v1IndexesGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[IndexesIndexIdentifier]**](IndexesIndexIdentifier.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1IndexesIndexDefinitionIdCurrentSnapshotGet

Current Index Values for index definition

### Example

```bash
 v1IndexesIndexDefinitionIdCurrentSnapshotGet index_definition_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexDefinitionId** | **string** |  | [default to null]

### Return type

[**array[IndexesIndexDefinitionSnapshotEntry]**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1IndexesIndexDefinitionIdHistorySnapshotGet

Historical Index Values for index definition

### Example

```bash
 v1IndexesIndexDefinitionIdHistorySnapshotGet index_definition_id=value  time=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexDefinitionId** | **string** |  | [default to null]
 **_time** | **string** |  | [optional] [default to null]

### Return type

[**array[IndexesIndexDefinitionSnapshotEntry]**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1IndexesIndexIdCurrentGet

Current Index Value

### Example

```bash
 v1IndexesIndexIdCurrentGet index_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexId** | **string** |  | [default to null]

### Return type

[**IndexesIndexValue**](IndexesIndexValue.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1IndexesIndexIdHistoryGet

Historical Index Value w/Composition

### Example

```bash
 v1IndexesIndexIdHistoryGet index_id=value  time_start=value  time_end=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexId** | **string** |  | [default to null]
 **timeStart** | **string** |  | [optional] [default to null]
 **timeEnd** | **string** |  | [optional] [default to null]
 **limit** | **integer** |  | [optional] [default to 100]

### Return type

[**array[IndexesIndexValue]**](IndexesIndexValue.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1IndexesIndexIdTimeseriesGet

Timeseries Index Value

### Example

```bash
 v1IndexesIndexIdTimeseriesGet index_id=value  period_id=value  time_start=value  time_end=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexId** | **string** |  | [default to null]
 **periodId** | **string** | Identifier of requested timeseries period (e.g. '5SEC' or '1DAY') | [default to null]
 **timeStart** | **string** | Timeseries starting time in ISO 8601 | [default to null]
 **timeEnd** | **string** | Timeseries ending time in ISO 8601 | [default to null]
 **limit** | **integer** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**array[IndexesIndexTimeseriesItem]**](IndexesIndexTimeseriesItem.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

