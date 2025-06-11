# IndexesApi

All URIs are relative to *https://rest-api.indexes.coinapi.io*

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

> List&lt;IndexesIndexDefinitionInputData&gt; v1IndexdefInputDataIndexDefinitionIdAllGet(indexDefinitionId)

Returns all data inputs for a specific index definition

### Example

```java
// Import classes:
//import org.openapitools.client.api.IndexesApi;

IndexesApi apiInstance = new IndexesApi();
String indexDefinitionId = null; // String | 
try {
    List<IndexesIndexDefinitionInputData> result = apiInstance.v1IndexdefInputDataIndexDefinitionIdAllGet(indexDefinitionId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IndexesApi#v1IndexdefInputDataIndexDefinitionIdAllGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexDefinitionId** | **String**|  | [default to null]

### Return type

[**List&lt;IndexesIndexDefinitionInputData&gt;**](IndexesIndexDefinitionInputData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1IndexdefInputDataIndexDefinitionIdGet

> List&lt;IndexesIndexDefinitionSnapshotEntry&gt; v1IndexdefInputDataIndexDefinitionIdGet(indexDefinitionId, time, enabledOnly, pendingOnly, filterAssetId, withStatusInfo)

Returns data inputs for certain index definition and time

### Example

```java
// Import classes:
//import org.openapitools.client.api.IndexesApi;

IndexesApi apiInstance = new IndexesApi();
String indexDefinitionId = null; // String | 
Date time = null; // Date | 
Boolean enabledOnly = false; // Boolean | 
Boolean pendingOnly = false; // Boolean | 
String filterAssetId = null; // String | 
Boolean withStatusInfo = false; // Boolean | 
try {
    List<IndexesIndexDefinitionSnapshotEntry> result = apiInstance.v1IndexdefInputDataIndexDefinitionIdGet(indexDefinitionId, time, enabledOnly, pendingOnly, filterAssetId, withStatusInfo);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IndexesApi#v1IndexdefInputDataIndexDefinitionIdGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexDefinitionId** | **String**|  | [default to null]
 **time** | **Date**|  | [optional] [default to null]
 **enabledOnly** | **Boolean**|  | [optional] [default to false]
 **pendingOnly** | **Boolean**|  | [optional] [default to false]
 **filterAssetId** | **String**|  | [optional] [default to null]
 **withStatusInfo** | **Boolean**|  | [optional] [default to false]

### Return type

[**List&lt;IndexesIndexDefinitionSnapshotEntry&gt;**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1IndexdefMultiassetGet

> List&lt;IndexesIndexMultiAssetWeight&gt; v1IndexdefMultiassetGet()

Get all multi-asset weights

### Example

```java
// Import classes:
//import org.openapitools.client.api.IndexesApi;

IndexesApi apiInstance = new IndexesApi();
try {
    List<IndexesIndexMultiAssetWeight> result = apiInstance.v1IndexdefMultiassetGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IndexesApi#v1IndexdefMultiassetGet");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;IndexesIndexMultiAssetWeight&gt;**](IndexesIndexMultiAssetWeight.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1IndexdefMultiassetIndexIdGet

> List&lt;IndexesIndexMultiAssetWeight&gt; v1IndexdefMultiassetIndexIdGet(indexId)

Get multi-asset weights for specific index

### Example

```java
// Import classes:
//import org.openapitools.client.api.IndexesApi;

IndexesApi apiInstance = new IndexesApi();
String indexId = null; // String | 
try {
    List<IndexesIndexMultiAssetWeight> result = apiInstance.v1IndexdefMultiassetIndexIdGet(indexId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IndexesApi#v1IndexdefMultiassetIndexIdGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexId** | **String**|  | [default to null]

### Return type

[**List&lt;IndexesIndexMultiAssetWeight&gt;**](IndexesIndexMultiAssetWeight.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1IndexesGet

> List&lt;IndexesIndexIdentifier&gt; v1IndexesGet()

List indexes

### Example

```java
// Import classes:
//import org.openapitools.client.api.IndexesApi;

IndexesApi apiInstance = new IndexesApi();
try {
    List<IndexesIndexIdentifier> result = apiInstance.v1IndexesGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IndexesApi#v1IndexesGet");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;IndexesIndexIdentifier&gt;**](IndexesIndexIdentifier.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1IndexesIndexDefinitionIdCurrentSnapshotGet

> List&lt;IndexesIndexDefinitionSnapshotEntry&gt; v1IndexesIndexDefinitionIdCurrentSnapshotGet(indexDefinitionId)

Current Index Values for index definition

### Example

```java
// Import classes:
//import org.openapitools.client.api.IndexesApi;

IndexesApi apiInstance = new IndexesApi();
String indexDefinitionId = null; // String | 
try {
    List<IndexesIndexDefinitionSnapshotEntry> result = apiInstance.v1IndexesIndexDefinitionIdCurrentSnapshotGet(indexDefinitionId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IndexesApi#v1IndexesIndexDefinitionIdCurrentSnapshotGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexDefinitionId** | **String**|  | [default to null]

### Return type

[**List&lt;IndexesIndexDefinitionSnapshotEntry&gt;**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1IndexesIndexDefinitionIdHistorySnapshotGet

> List&lt;IndexesIndexDefinitionSnapshotEntry&gt; v1IndexesIndexDefinitionIdHistorySnapshotGet(indexDefinitionId, time)

Historical Index Values for index definition

### Example

```java
// Import classes:
//import org.openapitools.client.api.IndexesApi;

IndexesApi apiInstance = new IndexesApi();
String indexDefinitionId = null; // String | 
Date time = null; // Date | 
try {
    List<IndexesIndexDefinitionSnapshotEntry> result = apiInstance.v1IndexesIndexDefinitionIdHistorySnapshotGet(indexDefinitionId, time);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IndexesApi#v1IndexesIndexDefinitionIdHistorySnapshotGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexDefinitionId** | **String**|  | [default to null]
 **time** | **Date**|  | [optional] [default to null]

### Return type

[**List&lt;IndexesIndexDefinitionSnapshotEntry&gt;**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1IndexesIndexIdCurrentGet

> IndexesIndexValue v1IndexesIndexIdCurrentGet(indexId)

Current Index Value

### Example

```java
// Import classes:
//import org.openapitools.client.api.IndexesApi;

IndexesApi apiInstance = new IndexesApi();
String indexId = null; // String | 
try {
    IndexesIndexValue result = apiInstance.v1IndexesIndexIdCurrentGet(indexId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IndexesApi#v1IndexesIndexIdCurrentGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexId** | **String**|  | [default to null]

### Return type

[**IndexesIndexValue**](IndexesIndexValue.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1IndexesIndexIdHistoryGet

> List&lt;IndexesIndexValue&gt; v1IndexesIndexIdHistoryGet(indexId, timeStart, timeEnd, limit)

Historical Index Value w/Composition

### Example

```java
// Import classes:
//import org.openapitools.client.api.IndexesApi;

IndexesApi apiInstance = new IndexesApi();
String indexId = null; // String | 
Date timeStart = null; // Date | 
Date timeEnd = null; // Date | 
Integer limit = 100; // Integer | 
try {
    List<IndexesIndexValue> result = apiInstance.v1IndexesIndexIdHistoryGet(indexId, timeStart, timeEnd, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IndexesApi#v1IndexesIndexIdHistoryGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexId** | **String**|  | [default to null]
 **timeStart** | **Date**|  | [optional] [default to null]
 **timeEnd** | **Date**|  | [optional] [default to null]
 **limit** | **Integer**|  | [optional] [default to 100]

### Return type

[**List&lt;IndexesIndexValue&gt;**](IndexesIndexValue.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1IndexesIndexIdTimeseriesGet

> List&lt;IndexesIndexTimeseriesItem&gt; v1IndexesIndexIdTimeseriesGet(indexId, periodId, timeStart, timeEnd, limit)

Timeseries Index Value

### Example

```java
// Import classes:
//import org.openapitools.client.api.IndexesApi;

IndexesApi apiInstance = new IndexesApi();
String indexId = null; // String | 
String periodId = null; // String | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
String timeStart = null; // String | Timeseries starting time in ISO 8601
String timeEnd = null; // String | Timeseries ending time in ISO 8601
Integer limit = 100; // Integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    List<IndexesIndexTimeseriesItem> result = apiInstance.v1IndexesIndexIdTimeseriesGet(indexId, periodId, timeStart, timeEnd, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IndexesApi#v1IndexesIndexIdTimeseriesGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexId** | **String**|  | [default to null]
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) | [default to null]
 **timeStart** | **String**| Timeseries starting time in ISO 8601 | [default to null]
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 | [default to null]
 **limit** | **Integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List&lt;IndexesIndexTimeseriesItem&gt;**](IndexesIndexTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

