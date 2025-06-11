# APIBricks.CoinAPI.IndexesAPI.REST.V1.Api.IndexesApi

All URIs are relative to *https://rest-api.indexes.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1IndexdefInputDataIndexDefinitionIdAllGet**](IndexesApi.md#v1indexdefinputdataindexdefinitionidallget) | **GET** /v1/indexdef/input-data/{index_definition_id}/all | Returns all data inputs for a specific index definition |
| [**V1IndexdefInputDataIndexDefinitionIdGet**](IndexesApi.md#v1indexdefinputdataindexdefinitionidget) | **GET** /v1/indexdef/input-data/{index_definition_id} | Returns data inputs for certain index definition and time |
| [**V1IndexdefMultiassetGet**](IndexesApi.md#v1indexdefmultiassetget) | **GET** /v1/indexdef/multiasset | Get all multi-asset weights |
| [**V1IndexdefMultiassetIndexIdGet**](IndexesApi.md#v1indexdefmultiassetindexidget) | **GET** /v1/indexdef/multiasset/{index_id} | Get multi-asset weights for specific index |
| [**V1IndexesGet**](IndexesApi.md#v1indexesget) | **GET** /v1/indexes | List indexes |
| [**V1IndexesIndexDefinitionIdCurrentSnapshotGet**](IndexesApi.md#v1indexesindexdefinitionidcurrentsnapshotget) | **GET** /v1/indexes/{index_definition_id}/currentSnapshot | Current Index Values for index definition |
| [**V1IndexesIndexDefinitionIdHistorySnapshotGet**](IndexesApi.md#v1indexesindexdefinitionidhistorysnapshotget) | **GET** /v1/indexes/{index_definition_id}/historySnapshot | Historical Index Values for index definition |
| [**V1IndexesIndexIdCurrentGet**](IndexesApi.md#v1indexesindexidcurrentget) | **GET** /v1/indexes/{index_id}/current | Current Index Value |
| [**V1IndexesIndexIdHistoryGet**](IndexesApi.md#v1indexesindexidhistoryget) | **GET** /v1/indexes/{index_id}/history | Historical Index Value w/Composition |
| [**V1IndexesIndexIdTimeseriesGet**](IndexesApi.md#v1indexesindexidtimeseriesget) | **GET** /v1/indexes/{index_id}/timeseries | Timeseries Index Value |

<a id="v1indexdefinputdataindexdefinitionidallget"></a>
# **V1IndexdefInputDataIndexDefinitionIdAllGet**
> List&lt;IndexesIndexDefinitionInputData&gt; V1IndexdefInputDataIndexDefinitionIdAllGet (string indexDefinitionId)

Returns all data inputs for a specific index definition

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Api;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Client;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Model;

namespace Example
{
    public class V1IndexdefInputDataIndexDefinitionIdAllGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest-api.indexes.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure API key authorization: JWT
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new IndexesApi(config);
            var indexDefinitionId = "indexDefinitionId_example";  // string | 

            try
            {
                // Returns all data inputs for a specific index definition
                List<IndexesIndexDefinitionInputData> result = apiInstance.V1IndexdefInputDataIndexDefinitionIdAllGet(indexDefinitionId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling IndexesApi.V1IndexdefInputDataIndexDefinitionIdAllGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1IndexdefInputDataIndexDefinitionIdAllGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Returns all data inputs for a specific index definition
    ApiResponse<List<IndexesIndexDefinitionInputData>> response = apiInstance.V1IndexdefInputDataIndexDefinitionIdAllGetWithHttpInfo(indexDefinitionId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling IndexesApi.V1IndexdefInputDataIndexDefinitionIdAllGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **indexDefinitionId** | **string** |  |  |

### Return type

[**List&lt;IndexesIndexDefinitionInputData&gt;**](IndexesIndexDefinitionInputData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1indexdefinputdataindexdefinitionidget"></a>
# **V1IndexdefInputDataIndexDefinitionIdGet**
> List&lt;IndexesIndexDefinitionSnapshotEntry&gt; V1IndexdefInputDataIndexDefinitionIdGet (string indexDefinitionId, DateTime time = null, bool enabledOnly = null, bool pendingOnly = null, string filterAssetId = null, bool withStatusInfo = null)

Returns data inputs for certain index definition and time

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Api;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Client;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Model;

namespace Example
{
    public class V1IndexdefInputDataIndexDefinitionIdGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest-api.indexes.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure API key authorization: JWT
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new IndexesApi(config);
            var indexDefinitionId = "indexDefinitionId_example";  // string | 
            var time = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime |  (optional) 
            var enabledOnly = false;  // bool |  (optional)  (default to false)
            var pendingOnly = false;  // bool |  (optional)  (default to false)
            var filterAssetId = "filterAssetId_example";  // string |  (optional) 
            var withStatusInfo = false;  // bool |  (optional)  (default to false)

            try
            {
                // Returns data inputs for certain index definition and time
                List<IndexesIndexDefinitionSnapshotEntry> result = apiInstance.V1IndexdefInputDataIndexDefinitionIdGet(indexDefinitionId, time, enabledOnly, pendingOnly, filterAssetId, withStatusInfo);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling IndexesApi.V1IndexdefInputDataIndexDefinitionIdGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1IndexdefInputDataIndexDefinitionIdGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Returns data inputs for certain index definition and time
    ApiResponse<List<IndexesIndexDefinitionSnapshotEntry>> response = apiInstance.V1IndexdefInputDataIndexDefinitionIdGetWithHttpInfo(indexDefinitionId, time, enabledOnly, pendingOnly, filterAssetId, withStatusInfo);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling IndexesApi.V1IndexdefInputDataIndexDefinitionIdGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **indexDefinitionId** | **string** |  |  |
| **time** | **DateTime** |  | [optional]  |
| **enabledOnly** | **bool** |  | [optional] [default to false] |
| **pendingOnly** | **bool** |  | [optional] [default to false] |
| **filterAssetId** | **string** |  | [optional]  |
| **withStatusInfo** | **bool** |  | [optional] [default to false] |

### Return type

[**List&lt;IndexesIndexDefinitionSnapshotEntry&gt;**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1indexdefmultiassetget"></a>
# **V1IndexdefMultiassetGet**
> List&lt;IndexesIndexMultiAssetWeight&gt; V1IndexdefMultiassetGet ()

Get all multi-asset weights

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Api;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Client;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Model;

namespace Example
{
    public class V1IndexdefMultiassetGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest-api.indexes.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure API key authorization: JWT
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new IndexesApi(config);

            try
            {
                // Get all multi-asset weights
                List<IndexesIndexMultiAssetWeight> result = apiInstance.V1IndexdefMultiassetGet();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling IndexesApi.V1IndexdefMultiassetGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1IndexdefMultiassetGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get all multi-asset weights
    ApiResponse<List<IndexesIndexMultiAssetWeight>> response = apiInstance.V1IndexdefMultiassetGetWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling IndexesApi.V1IndexdefMultiassetGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
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


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1indexdefmultiassetindexidget"></a>
# **V1IndexdefMultiassetIndexIdGet**
> List&lt;IndexesIndexMultiAssetWeight&gt; V1IndexdefMultiassetIndexIdGet (string indexId)

Get multi-asset weights for specific index

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Api;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Client;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Model;

namespace Example
{
    public class V1IndexdefMultiassetIndexIdGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest-api.indexes.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure API key authorization: JWT
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new IndexesApi(config);
            var indexId = "indexId_example";  // string | 

            try
            {
                // Get multi-asset weights for specific index
                List<IndexesIndexMultiAssetWeight> result = apiInstance.V1IndexdefMultiassetIndexIdGet(indexId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling IndexesApi.V1IndexdefMultiassetIndexIdGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1IndexdefMultiassetIndexIdGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get multi-asset weights for specific index
    ApiResponse<List<IndexesIndexMultiAssetWeight>> response = apiInstance.V1IndexdefMultiassetIndexIdGetWithHttpInfo(indexId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling IndexesApi.V1IndexdefMultiassetIndexIdGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **indexId** | **string** |  |  |

### Return type

[**List&lt;IndexesIndexMultiAssetWeight&gt;**](IndexesIndexMultiAssetWeight.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1indexesget"></a>
# **V1IndexesGet**
> List&lt;IndexesIndexIdentifier&gt; V1IndexesGet ()

List indexes

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Api;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Client;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Model;

namespace Example
{
    public class V1IndexesGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest-api.indexes.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure API key authorization: JWT
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new IndexesApi(config);

            try
            {
                // List indexes
                List<IndexesIndexIdentifier> result = apiInstance.V1IndexesGet();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling IndexesApi.V1IndexesGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1IndexesGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List indexes
    ApiResponse<List<IndexesIndexIdentifier>> response = apiInstance.V1IndexesGetWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling IndexesApi.V1IndexesGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
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


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1indexesindexdefinitionidcurrentsnapshotget"></a>
# **V1IndexesIndexDefinitionIdCurrentSnapshotGet**
> List&lt;IndexesIndexDefinitionSnapshotEntry&gt; V1IndexesIndexDefinitionIdCurrentSnapshotGet (string indexDefinitionId)

Current Index Values for index definition

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Api;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Client;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Model;

namespace Example
{
    public class V1IndexesIndexDefinitionIdCurrentSnapshotGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest-api.indexes.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure API key authorization: JWT
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new IndexesApi(config);
            var indexDefinitionId = "indexDefinitionId_example";  // string | 

            try
            {
                // Current Index Values for index definition
                List<IndexesIndexDefinitionSnapshotEntry> result = apiInstance.V1IndexesIndexDefinitionIdCurrentSnapshotGet(indexDefinitionId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling IndexesApi.V1IndexesIndexDefinitionIdCurrentSnapshotGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1IndexesIndexDefinitionIdCurrentSnapshotGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Current Index Values for index definition
    ApiResponse<List<IndexesIndexDefinitionSnapshotEntry>> response = apiInstance.V1IndexesIndexDefinitionIdCurrentSnapshotGetWithHttpInfo(indexDefinitionId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling IndexesApi.V1IndexesIndexDefinitionIdCurrentSnapshotGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **indexDefinitionId** | **string** |  |  |

### Return type

[**List&lt;IndexesIndexDefinitionSnapshotEntry&gt;**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1indexesindexdefinitionidhistorysnapshotget"></a>
# **V1IndexesIndexDefinitionIdHistorySnapshotGet**
> List&lt;IndexesIndexDefinitionSnapshotEntry&gt; V1IndexesIndexDefinitionIdHistorySnapshotGet (string indexDefinitionId, DateTime time = null)

Historical Index Values for index definition

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Api;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Client;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Model;

namespace Example
{
    public class V1IndexesIndexDefinitionIdHistorySnapshotGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest-api.indexes.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure API key authorization: JWT
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new IndexesApi(config);
            var indexDefinitionId = "indexDefinitionId_example";  // string | 
            var time = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime |  (optional) 

            try
            {
                // Historical Index Values for index definition
                List<IndexesIndexDefinitionSnapshotEntry> result = apiInstance.V1IndexesIndexDefinitionIdHistorySnapshotGet(indexDefinitionId, time);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling IndexesApi.V1IndexesIndexDefinitionIdHistorySnapshotGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1IndexesIndexDefinitionIdHistorySnapshotGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Historical Index Values for index definition
    ApiResponse<List<IndexesIndexDefinitionSnapshotEntry>> response = apiInstance.V1IndexesIndexDefinitionIdHistorySnapshotGetWithHttpInfo(indexDefinitionId, time);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling IndexesApi.V1IndexesIndexDefinitionIdHistorySnapshotGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **indexDefinitionId** | **string** |  |  |
| **time** | **DateTime** |  | [optional]  |

### Return type

[**List&lt;IndexesIndexDefinitionSnapshotEntry&gt;**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1indexesindexidcurrentget"></a>
# **V1IndexesIndexIdCurrentGet**
> IndexesIndexValue V1IndexesIndexIdCurrentGet (string indexId)

Current Index Value

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Api;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Client;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Model;

namespace Example
{
    public class V1IndexesIndexIdCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest-api.indexes.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure API key authorization: JWT
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new IndexesApi(config);
            var indexId = "indexId_example";  // string | 

            try
            {
                // Current Index Value
                IndexesIndexValue result = apiInstance.V1IndexesIndexIdCurrentGet(indexId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling IndexesApi.V1IndexesIndexIdCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1IndexesIndexIdCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Current Index Value
    ApiResponse<IndexesIndexValue> response = apiInstance.V1IndexesIndexIdCurrentGetWithHttpInfo(indexId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling IndexesApi.V1IndexesIndexIdCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **indexId** | **string** |  |  |

### Return type

[**IndexesIndexValue**](IndexesIndexValue.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1indexesindexidhistoryget"></a>
# **V1IndexesIndexIdHistoryGet**
> List&lt;IndexesIndexValue&gt; V1IndexesIndexIdHistoryGet (string indexId, DateTime timeStart = null, DateTime timeEnd = null, int limit = null)

Historical Index Value w/Composition

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Api;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Client;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Model;

namespace Example
{
    public class V1IndexesIndexIdHistoryGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest-api.indexes.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure API key authorization: JWT
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new IndexesApi(config);
            var indexId = "indexId_example";  // string | 
            var timeStart = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime |  (optional) 
            var timeEnd = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime |  (optional) 
            var limit = 100;  // int |  (optional)  (default to 100)

            try
            {
                // Historical Index Value w/Composition
                List<IndexesIndexValue> result = apiInstance.V1IndexesIndexIdHistoryGet(indexId, timeStart, timeEnd, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling IndexesApi.V1IndexesIndexIdHistoryGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1IndexesIndexIdHistoryGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Historical Index Value w/Composition
    ApiResponse<List<IndexesIndexValue>> response = apiInstance.V1IndexesIndexIdHistoryGetWithHttpInfo(indexId, timeStart, timeEnd, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling IndexesApi.V1IndexesIndexIdHistoryGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **indexId** | **string** |  |  |
| **timeStart** | **DateTime** |  | [optional]  |
| **timeEnd** | **DateTime** |  | [optional]  |
| **limit** | **int** |  | [optional] [default to 100] |

### Return type

[**List&lt;IndexesIndexValue&gt;**](IndexesIndexValue.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="v1indexesindexidtimeseriesget"></a>
# **V1IndexesIndexIdTimeseriesGet**
> List&lt;IndexesIndexTimeseriesItem&gt; V1IndexesIndexIdTimeseriesGet (string indexId, string periodId, string timeStart, string timeEnd, int limit = null)

Timeseries Index Value

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Api;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Client;
using APIBricks.CoinAPI.IndexesAPI.REST.V1.Model;

namespace Example
{
    public class V1IndexesIndexIdTimeseriesGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://rest-api.indexes.coinapi.io";
            // Configure API key authorization: APIKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure API key authorization: JWT
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new IndexesApi(config);
            var indexId = "indexId_example";  // string | 
            var periodId = "periodId_example";  // string | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
            var timeStart = "timeStart_example";  // string | Timeseries starting time in ISO 8601
            var timeEnd = "timeEnd_example";  // string | Timeseries ending time in ISO 8601
            var limit = 100;  // int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional)  (default to 100)

            try
            {
                // Timeseries Index Value
                List<IndexesIndexTimeseriesItem> result = apiInstance.V1IndexesIndexIdTimeseriesGet(indexId, periodId, timeStart, timeEnd, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling IndexesApi.V1IndexesIndexIdTimeseriesGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1IndexesIndexIdTimeseriesGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Timeseries Index Value
    ApiResponse<List<IndexesIndexTimeseriesItem>> response = apiInstance.V1IndexesIndexIdTimeseriesGetWithHttpInfo(indexId, periodId, timeStart, timeEnd, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling IndexesApi.V1IndexesIndexIdTimeseriesGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **indexId** | **string** |  |  |
| **periodId** | **string** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) |  |
| **timeStart** | **string** | Timeseries starting time in ISO 8601 |  |
| **timeEnd** | **string** | Timeseries ending time in ISO 8601 |  |
| **limit** | **int** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**List&lt;IndexesIndexTimeseriesItem&gt;**](IndexesIndexTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

