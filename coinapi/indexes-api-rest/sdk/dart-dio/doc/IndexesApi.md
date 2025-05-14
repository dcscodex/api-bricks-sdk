# openapi.api.IndexesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://rest-api.indexes.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1IndexdefInputDataIndexDefinitionIdAllGet**](IndexesApi.md#v1indexdefinputdataindexdefinitionidallget) | **GET** /v1/indexdef/input-data/{index_definition_id}/all | Returns all data inputs for a specific index definition
[**v1IndexdefInputDataIndexDefinitionIdGet**](IndexesApi.md#v1indexdefinputdataindexdefinitionidget) | **GET** /v1/indexdef/input-data/{index_definition_id} | Returns data inputs for certain index definition and time
[**v1IndexdefMultiassetGet**](IndexesApi.md#v1indexdefmultiassetget) | **GET** /v1/indexdef/multiasset | Get all multi-asset weights
[**v1IndexdefMultiassetIndexIdGet**](IndexesApi.md#v1indexdefmultiassetindexidget) | **GET** /v1/indexdef/multiasset/{index_id} | Get multi-asset weights for specific index
[**v1IndexesGet**](IndexesApi.md#v1indexesget) | **GET** /v1/indexes | List indexes
[**v1IndexesIndexDefinitionIdCurrentSnapshotGet**](IndexesApi.md#v1indexesindexdefinitionidcurrentsnapshotget) | **GET** /v1/indexes/{index_definition_id}/currentSnapshot | Current Index Values for index definition
[**v1IndexesIndexDefinitionIdHistorySnapshotGet**](IndexesApi.md#v1indexesindexdefinitionidhistorysnapshotget) | **GET** /v1/indexes/{index_definition_id}/historySnapshot | Historical Index Values for index definition
[**v1IndexesIndexIdCurrentGet**](IndexesApi.md#v1indexesindexidcurrentget) | **GET** /v1/indexes/{index_id}/current | Current Index Value
[**v1IndexesIndexIdHistoryGet**](IndexesApi.md#v1indexesindexidhistoryget) | **GET** /v1/indexes/{index_id}/history | Historical Index Value w/Composition
[**v1IndexesIndexIdTimeseriesGet**](IndexesApi.md#v1indexesindexidtimeseriesget) | **GET** /v1/indexes/{index_id}/timeseries | Timeseries Index Value


# **v1IndexdefInputDataIndexDefinitionIdAllGet**
> BuiltList<IndexesIndexDefinitionInputData> v1IndexdefInputDataIndexDefinitionIdAllGet(indexDefinitionId)

Returns all data inputs for a specific index definition

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getIndexesApi();
final String indexDefinitionId = indexDefinitionId_example; // String | 

try {
    final response = api.v1IndexdefInputDataIndexDefinitionIdAllGet(indexDefinitionId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IndexesApi->v1IndexdefInputDataIndexDefinitionIdAllGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexDefinitionId** | **String**|  | 

### Return type

[**BuiltList&lt;IndexesIndexDefinitionInputData&gt;**](IndexesIndexDefinitionInputData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndexdefInputDataIndexDefinitionIdGet**
> BuiltList<IndexesIndexDefinitionSnapshotEntry> v1IndexdefInputDataIndexDefinitionIdGet(indexDefinitionId, time, enabledOnly, pendingOnly, filterAssetId, withStatusInfo)

Returns data inputs for certain index definition and time

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getIndexesApi();
final String indexDefinitionId = indexDefinitionId_example; // String | 
final DateTime time = 2013-10-20T19:20:30+01:00; // DateTime | 
final bool enabledOnly = true; // bool | 
final bool pendingOnly = true; // bool | 
final String filterAssetId = filterAssetId_example; // String | 
final bool withStatusInfo = true; // bool | 

try {
    final response = api.v1IndexdefInputDataIndexDefinitionIdGet(indexDefinitionId, time, enabledOnly, pendingOnly, filterAssetId, withStatusInfo);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IndexesApi->v1IndexdefInputDataIndexDefinitionIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexDefinitionId** | **String**|  | 
 **time** | **DateTime**|  | [optional] 
 **enabledOnly** | **bool**|  | [optional] [default to false]
 **pendingOnly** | **bool**|  | [optional] [default to false]
 **filterAssetId** | **String**|  | [optional] 
 **withStatusInfo** | **bool**|  | [optional] [default to false]

### Return type

[**BuiltList&lt;IndexesIndexDefinitionSnapshotEntry&gt;**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndexdefMultiassetGet**
> BuiltList<IndexesIndexMultiAssetWeight> v1IndexdefMultiassetGet()

Get all multi-asset weights

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getIndexesApi();

try {
    final response = api.v1IndexdefMultiassetGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling IndexesApi->v1IndexdefMultiassetGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;IndexesIndexMultiAssetWeight&gt;**](IndexesIndexMultiAssetWeight.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndexdefMultiassetIndexIdGet**
> BuiltList<IndexesIndexMultiAssetWeight> v1IndexdefMultiassetIndexIdGet(indexId)

Get multi-asset weights for specific index

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getIndexesApi();
final String indexId = indexId_example; // String | 

try {
    final response = api.v1IndexdefMultiassetIndexIdGet(indexId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IndexesApi->v1IndexdefMultiassetIndexIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexId** | **String**|  | 

### Return type

[**BuiltList&lt;IndexesIndexMultiAssetWeight&gt;**](IndexesIndexMultiAssetWeight.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndexesGet**
> BuiltList<IndexesIndexIdentifier> v1IndexesGet()

List indexes

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getIndexesApi();

try {
    final response = api.v1IndexesGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling IndexesApi->v1IndexesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;IndexesIndexIdentifier&gt;**](IndexesIndexIdentifier.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndexesIndexDefinitionIdCurrentSnapshotGet**
> BuiltList<IndexesIndexDefinitionSnapshotEntry> v1IndexesIndexDefinitionIdCurrentSnapshotGet(indexDefinitionId)

Current Index Values for index definition

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getIndexesApi();
final String indexDefinitionId = indexDefinitionId_example; // String | 

try {
    final response = api.v1IndexesIndexDefinitionIdCurrentSnapshotGet(indexDefinitionId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IndexesApi->v1IndexesIndexDefinitionIdCurrentSnapshotGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexDefinitionId** | **String**|  | 

### Return type

[**BuiltList&lt;IndexesIndexDefinitionSnapshotEntry&gt;**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndexesIndexDefinitionIdHistorySnapshotGet**
> BuiltList<IndexesIndexDefinitionSnapshotEntry> v1IndexesIndexDefinitionIdHistorySnapshotGet(indexDefinitionId, time)

Historical Index Values for index definition

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getIndexesApi();
final String indexDefinitionId = indexDefinitionId_example; // String | 
final DateTime time = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.v1IndexesIndexDefinitionIdHistorySnapshotGet(indexDefinitionId, time);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IndexesApi->v1IndexesIndexDefinitionIdHistorySnapshotGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexDefinitionId** | **String**|  | 
 **time** | **DateTime**|  | [optional] 

### Return type

[**BuiltList&lt;IndexesIndexDefinitionSnapshotEntry&gt;**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndexesIndexIdCurrentGet**
> IndexesIndexValue v1IndexesIndexIdCurrentGet(indexId)

Current Index Value

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getIndexesApi();
final String indexId = indexId_example; // String | 

try {
    final response = api.v1IndexesIndexIdCurrentGet(indexId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IndexesApi->v1IndexesIndexIdCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexId** | **String**|  | 

### Return type

[**IndexesIndexValue**](IndexesIndexValue.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndexesIndexIdHistoryGet**
> BuiltList<IndexesIndexValue> v1IndexesIndexIdHistoryGet(indexId, timeStart, timeEnd, limit)

Historical Index Value w/Composition

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getIndexesApi();
final String indexId = indexId_example; // String | 
final DateTime timeStart = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime timeEnd = 2013-10-20T19:20:30+01:00; // DateTime | 
final int limit = 56; // int | 

try {
    final response = api.v1IndexesIndexIdHistoryGet(indexId, timeStart, timeEnd, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IndexesApi->v1IndexesIndexIdHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexId** | **String**|  | 
 **timeStart** | **DateTime**|  | [optional] 
 **timeEnd** | **DateTime**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**BuiltList&lt;IndexesIndexValue&gt;**](IndexesIndexValue.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndexesIndexIdTimeseriesGet**
> BuiltList<IndexesIndexTimeseriesItem> v1IndexesIndexIdTimeseriesGet(indexId, periodId, timeStart, timeEnd, limit)

Timeseries Index Value

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getIndexesApi();
final String indexId = indexId_example; // String | 
final String periodId = periodId_example; // String | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
final String timeStart = timeStart_example; // String | Timeseries starting time in ISO 8601
final String timeEnd = timeEnd_example; // String | Timeseries ending time in ISO 8601
final int limit = 56; // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    final response = api.v1IndexesIndexIdTimeseriesGet(indexId, periodId, timeStart, timeEnd, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IndexesApi->v1IndexesIndexIdTimeseriesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexId** | **String**|  | 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`) | 
 **timeStart** | **String**| Timeseries starting time in ISO 8601 | 
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 | 
 **limit** | **int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**BuiltList&lt;IndexesIndexTimeseriesItem&gt;**](IndexesIndexTimeseriesItem.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

