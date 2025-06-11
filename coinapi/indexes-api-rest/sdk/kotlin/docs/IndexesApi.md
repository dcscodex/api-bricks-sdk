# IndexesApi

All URIs are relative to *https://rest-api.indexes.coinapi.io*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1IndexdefInputDataIndexDefinitionIdAllGet**](IndexesApi.md#v1IndexdefInputDataIndexDefinitionIdAllGet) | **GET** /v1/indexdef/input-data/{index_definition_id}/all | Returns all data inputs for a specific index definition |
| [**v1IndexdefInputDataIndexDefinitionIdGet**](IndexesApi.md#v1IndexdefInputDataIndexDefinitionIdGet) | **GET** /v1/indexdef/input-data/{index_definition_id} | Returns data inputs for certain index definition and time |
| [**v1IndexdefMultiassetGet**](IndexesApi.md#v1IndexdefMultiassetGet) | **GET** /v1/indexdef/multiasset | Get all multi-asset weights |
| [**v1IndexdefMultiassetIndexIdGet**](IndexesApi.md#v1IndexdefMultiassetIndexIdGet) | **GET** /v1/indexdef/multiasset/{index_id} | Get multi-asset weights for specific index |
| [**v1IndexesGet**](IndexesApi.md#v1IndexesGet) | **GET** /v1/indexes | List indexes |
| [**v1IndexesIndexDefinitionIdCurrentSnapshotGet**](IndexesApi.md#v1IndexesIndexDefinitionIdCurrentSnapshotGet) | **GET** /v1/indexes/{index_definition_id}/currentSnapshot | Current Index Values for index definition |
| [**v1IndexesIndexDefinitionIdHistorySnapshotGet**](IndexesApi.md#v1IndexesIndexDefinitionIdHistorySnapshotGet) | **GET** /v1/indexes/{index_definition_id}/historySnapshot | Historical Index Values for index definition |
| [**v1IndexesIndexIdCurrentGet**](IndexesApi.md#v1IndexesIndexIdCurrentGet) | **GET** /v1/indexes/{index_id}/current | Current Index Value |
| [**v1IndexesIndexIdHistoryGet**](IndexesApi.md#v1IndexesIndexIdHistoryGet) | **GET** /v1/indexes/{index_id}/history | Historical Index Value w/Composition |
| [**v1IndexesIndexIdTimeseriesGet**](IndexesApi.md#v1IndexesIndexIdTimeseriesGet) | **GET** /v1/indexes/{index_id}/timeseries | Timeseries Index Value |


<a id="v1IndexdefInputDataIndexDefinitionIdAllGet"></a>
# **v1IndexdefInputDataIndexDefinitionIdAllGet**
> kotlin.collections.List&lt;IndexesIndexDefinitionInputData&gt; v1IndexdefInputDataIndexDefinitionIdAllGet(indexDefinitionId)

Returns all data inputs for a specific index definition

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = IndexesApi()
val indexDefinitionId : kotlin.String = indexDefinitionId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<IndexesIndexDefinitionInputData> = apiInstance.v1IndexdefInputDataIndexDefinitionIdAllGet(indexDefinitionId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IndexesApi#v1IndexdefInputDataIndexDefinitionIdAllGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IndexesApi#v1IndexdefInputDataIndexDefinitionIdAllGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **indexDefinitionId** | **kotlin.String**|  | |

### Return type

[**kotlin.collections.List&lt;IndexesIndexDefinitionInputData&gt;**](IndexesIndexDefinitionInputData.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1IndexdefInputDataIndexDefinitionIdGet"></a>
# **v1IndexdefInputDataIndexDefinitionIdGet**
> kotlin.collections.List&lt;IndexesIndexDefinitionSnapshotEntry&gt; v1IndexdefInputDataIndexDefinitionIdGet(indexDefinitionId, time, enabledOnly, pendingOnly, filterAssetId, withStatusInfo)

Returns data inputs for certain index definition and time

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = IndexesApi()
val indexDefinitionId : kotlin.String = indexDefinitionId_example // kotlin.String | 
val time : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val enabledOnly : kotlin.Boolean = true // kotlin.Boolean | 
val pendingOnly : kotlin.Boolean = true // kotlin.Boolean | 
val filterAssetId : kotlin.String = filterAssetId_example // kotlin.String | 
val withStatusInfo : kotlin.Boolean = true // kotlin.Boolean | 
try {
    val result : kotlin.collections.List<IndexesIndexDefinitionSnapshotEntry> = apiInstance.v1IndexdefInputDataIndexDefinitionIdGet(indexDefinitionId, time, enabledOnly, pendingOnly, filterAssetId, withStatusInfo)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IndexesApi#v1IndexdefInputDataIndexDefinitionIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IndexesApi#v1IndexdefInputDataIndexDefinitionIdGet")
    e.printStackTrace()
}
```

### Parameters
| **indexDefinitionId** | **kotlin.String**|  | |
| **time** | **java.time.OffsetDateTime**|  | [optional] |
| **enabledOnly** | **kotlin.Boolean**|  | [optional] [default to false] |
| **pendingOnly** | **kotlin.Boolean**|  | [optional] [default to false] |
| **filterAssetId** | **kotlin.String**|  | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **withStatusInfo** | **kotlin.Boolean**|  | [optional] [default to false] |

### Return type

[**kotlin.collections.List&lt;IndexesIndexDefinitionSnapshotEntry&gt;**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1IndexdefMultiassetGet"></a>
# **v1IndexdefMultiassetGet**
> kotlin.collections.List&lt;IndexesIndexMultiAssetWeight&gt; v1IndexdefMultiassetGet()

Get all multi-asset weights

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = IndexesApi()
try {
    val result : kotlin.collections.List<IndexesIndexMultiAssetWeight> = apiInstance.v1IndexdefMultiassetGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IndexesApi#v1IndexdefMultiassetGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IndexesApi#v1IndexdefMultiassetGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;IndexesIndexMultiAssetWeight&gt;**](IndexesIndexMultiAssetWeight.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1IndexdefMultiassetIndexIdGet"></a>
# **v1IndexdefMultiassetIndexIdGet**
> kotlin.collections.List&lt;IndexesIndexMultiAssetWeight&gt; v1IndexdefMultiassetIndexIdGet(indexId)

Get multi-asset weights for specific index

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = IndexesApi()
val indexId : kotlin.String = indexId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<IndexesIndexMultiAssetWeight> = apiInstance.v1IndexdefMultiassetIndexIdGet(indexId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IndexesApi#v1IndexdefMultiassetIndexIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IndexesApi#v1IndexdefMultiassetIndexIdGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **indexId** | **kotlin.String**|  | |

### Return type

[**kotlin.collections.List&lt;IndexesIndexMultiAssetWeight&gt;**](IndexesIndexMultiAssetWeight.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1IndexesGet"></a>
# **v1IndexesGet**
> kotlin.collections.List&lt;IndexesIndexIdentifier&gt; v1IndexesGet()

List indexes

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = IndexesApi()
try {
    val result : kotlin.collections.List<IndexesIndexIdentifier> = apiInstance.v1IndexesGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IndexesApi#v1IndexesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IndexesApi#v1IndexesGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;IndexesIndexIdentifier&gt;**](IndexesIndexIdentifier.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1IndexesIndexDefinitionIdCurrentSnapshotGet"></a>
# **v1IndexesIndexDefinitionIdCurrentSnapshotGet**
> kotlin.collections.List&lt;IndexesIndexDefinitionSnapshotEntry&gt; v1IndexesIndexDefinitionIdCurrentSnapshotGet(indexDefinitionId)

Current Index Values for index definition

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = IndexesApi()
val indexDefinitionId : kotlin.String = indexDefinitionId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<IndexesIndexDefinitionSnapshotEntry> = apiInstance.v1IndexesIndexDefinitionIdCurrentSnapshotGet(indexDefinitionId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IndexesApi#v1IndexesIndexDefinitionIdCurrentSnapshotGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IndexesApi#v1IndexesIndexDefinitionIdCurrentSnapshotGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **indexDefinitionId** | **kotlin.String**|  | |

### Return type

[**kotlin.collections.List&lt;IndexesIndexDefinitionSnapshotEntry&gt;**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1IndexesIndexDefinitionIdHistorySnapshotGet"></a>
# **v1IndexesIndexDefinitionIdHistorySnapshotGet**
> kotlin.collections.List&lt;IndexesIndexDefinitionSnapshotEntry&gt; v1IndexesIndexDefinitionIdHistorySnapshotGet(indexDefinitionId, time)

Historical Index Values for index definition

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = IndexesApi()
val indexDefinitionId : kotlin.String = indexDefinitionId_example // kotlin.String | 
val time : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    val result : kotlin.collections.List<IndexesIndexDefinitionSnapshotEntry> = apiInstance.v1IndexesIndexDefinitionIdHistorySnapshotGet(indexDefinitionId, time)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IndexesApi#v1IndexesIndexDefinitionIdHistorySnapshotGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IndexesApi#v1IndexesIndexDefinitionIdHistorySnapshotGet")
    e.printStackTrace()
}
```

### Parameters
| **indexDefinitionId** | **kotlin.String**|  | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **time** | **java.time.OffsetDateTime**|  | [optional] |

### Return type

[**kotlin.collections.List&lt;IndexesIndexDefinitionSnapshotEntry&gt;**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1IndexesIndexIdCurrentGet"></a>
# **v1IndexesIndexIdCurrentGet**
> IndexesIndexValue v1IndexesIndexIdCurrentGet(indexId)

Current Index Value

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = IndexesApi()
val indexId : kotlin.String = indexId_example // kotlin.String | 
try {
    val result : IndexesIndexValue = apiInstance.v1IndexesIndexIdCurrentGet(indexId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IndexesApi#v1IndexesIndexIdCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IndexesApi#v1IndexesIndexIdCurrentGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **indexId** | **kotlin.String**|  | |

### Return type

[**IndexesIndexValue**](IndexesIndexValue.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1IndexesIndexIdHistoryGet"></a>
# **v1IndexesIndexIdHistoryGet**
> kotlin.collections.List&lt;IndexesIndexValue&gt; v1IndexesIndexIdHistoryGet(indexId, timeStart, timeEnd, limit)

Historical Index Value w/Composition

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = IndexesApi()
val indexId : kotlin.String = indexId_example // kotlin.String | 
val timeStart : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val timeEnd : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val limit : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : kotlin.collections.List<IndexesIndexValue> = apiInstance.v1IndexesIndexIdHistoryGet(indexId, timeStart, timeEnd, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IndexesApi#v1IndexesIndexIdHistoryGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IndexesApi#v1IndexesIndexIdHistoryGet")
    e.printStackTrace()
}
```

### Parameters
| **indexId** | **kotlin.String**|  | |
| **timeStart** | **java.time.OffsetDateTime**|  | [optional] |
| **timeEnd** | **java.time.OffsetDateTime**|  | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **kotlin.Int**|  | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;IndexesIndexValue&gt;**](IndexesIndexValue.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1IndexesIndexIdTimeseriesGet"></a>
# **v1IndexesIndexIdTimeseriesGet**
> kotlin.collections.List&lt;IndexesIndexTimeseriesItem&gt; v1IndexesIndexIdTimeseriesGet(indexId, periodId, timeStart, timeEnd, limit)

Timeseries Index Value

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = IndexesApi()
val indexId : kotlin.String = indexId_example // kotlin.String | 
val periodId : kotlin.String = periodId_example // kotlin.String | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
val timeStart : kotlin.String = timeStart_example // kotlin.String | Timeseries starting time in ISO 8601
val timeEnd : kotlin.String = timeEnd_example // kotlin.String | Timeseries ending time in ISO 8601
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    val result : kotlin.collections.List<IndexesIndexTimeseriesItem> = apiInstance.v1IndexesIndexIdTimeseriesGet(indexId, periodId, timeStart, timeEnd, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IndexesApi#v1IndexesIndexIdTimeseriesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IndexesApi#v1IndexesIndexIdTimeseriesGet")
    e.printStackTrace()
}
```

### Parameters
| **indexId** | **kotlin.String**|  | |
| **periodId** | **kotlin.String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) | |
| **timeStart** | **kotlin.String**| Timeseries starting time in ISO 8601 | |
| **timeEnd** | **kotlin.String**| Timeseries ending time in ISO 8601 | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **kotlin.Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;IndexesIndexTimeseriesItem&gt;**](IndexesIndexTimeseriesItem.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

