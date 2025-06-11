# CoinApiIndexesRestApi.IndexesApi

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

> [IndexesIndexDefinitionInputData] v1IndexdefInputDataIndexDefinitionIdAllGet(indexDefinitionId)

Returns all data inputs for a specific index definition

### Example

```javascript
import CoinApiIndexesRestApi from 'coin_api_indexes_rest_api';
let defaultClient = CoinApiIndexesRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure API key authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//JWT.apiKeyPrefix = 'Token';

let apiInstance = new CoinApiIndexesRestApi.IndexesApi();
let indexDefinitionId = "indexDefinitionId_example"; // String | 
apiInstance.v1IndexdefInputDataIndexDefinitionIdAllGet(indexDefinitionId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexDefinitionId** | **String**|  | 

### Return type

[**[IndexesIndexDefinitionInputData]**](IndexesIndexDefinitionInputData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1IndexdefInputDataIndexDefinitionIdGet

> [IndexesIndexDefinitionSnapshotEntry] v1IndexdefInputDataIndexDefinitionIdGet(indexDefinitionId, opts)

Returns data inputs for certain index definition and time

### Example

```javascript
import CoinApiIndexesRestApi from 'coin_api_indexes_rest_api';
let defaultClient = CoinApiIndexesRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure API key authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//JWT.apiKeyPrefix = 'Token';

let apiInstance = new CoinApiIndexesRestApi.IndexesApi();
let indexDefinitionId = "indexDefinitionId_example"; // String | 
let opts = {
  'time': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'enabledOnly': false, // Boolean | 
  'pendingOnly': false, // Boolean | 
  'filterAssetId': "filterAssetId_example", // String | 
  'withStatusInfo': false // Boolean | 
};
apiInstance.v1IndexdefInputDataIndexDefinitionIdGet(indexDefinitionId, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexDefinitionId** | **String**|  | 
 **time** | **Date**|  | [optional] 
 **enabledOnly** | **Boolean**|  | [optional] [default to false]
 **pendingOnly** | **Boolean**|  | [optional] [default to false]
 **filterAssetId** | **String**|  | [optional] 
 **withStatusInfo** | **Boolean**|  | [optional] [default to false]

### Return type

[**[IndexesIndexDefinitionSnapshotEntry]**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1IndexdefMultiassetGet

> [IndexesIndexMultiAssetWeight] v1IndexdefMultiassetGet()

Get all multi-asset weights

### Example

```javascript
import CoinApiIndexesRestApi from 'coin_api_indexes_rest_api';
let defaultClient = CoinApiIndexesRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure API key authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//JWT.apiKeyPrefix = 'Token';

let apiInstance = new CoinApiIndexesRestApi.IndexesApi();
apiInstance.v1IndexdefMultiassetGet((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**[IndexesIndexMultiAssetWeight]**](IndexesIndexMultiAssetWeight.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1IndexdefMultiassetIndexIdGet

> [IndexesIndexMultiAssetWeight] v1IndexdefMultiassetIndexIdGet(indexId)

Get multi-asset weights for specific index

### Example

```javascript
import CoinApiIndexesRestApi from 'coin_api_indexes_rest_api';
let defaultClient = CoinApiIndexesRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure API key authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//JWT.apiKeyPrefix = 'Token';

let apiInstance = new CoinApiIndexesRestApi.IndexesApi();
let indexId = "indexId_example"; // String | 
apiInstance.v1IndexdefMultiassetIndexIdGet(indexId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexId** | **String**|  | 

### Return type

[**[IndexesIndexMultiAssetWeight]**](IndexesIndexMultiAssetWeight.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1IndexesGet

> [IndexesIndexIdentifier] v1IndexesGet()

List indexes

### Example

```javascript
import CoinApiIndexesRestApi from 'coin_api_indexes_rest_api';
let defaultClient = CoinApiIndexesRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure API key authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//JWT.apiKeyPrefix = 'Token';

let apiInstance = new CoinApiIndexesRestApi.IndexesApi();
apiInstance.v1IndexesGet((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**[IndexesIndexIdentifier]**](IndexesIndexIdentifier.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1IndexesIndexDefinitionIdCurrentSnapshotGet

> [IndexesIndexDefinitionSnapshotEntry] v1IndexesIndexDefinitionIdCurrentSnapshotGet(indexDefinitionId)

Current Index Values for index definition

### Example

```javascript
import CoinApiIndexesRestApi from 'coin_api_indexes_rest_api';
let defaultClient = CoinApiIndexesRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure API key authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//JWT.apiKeyPrefix = 'Token';

let apiInstance = new CoinApiIndexesRestApi.IndexesApi();
let indexDefinitionId = "indexDefinitionId_example"; // String | 
apiInstance.v1IndexesIndexDefinitionIdCurrentSnapshotGet(indexDefinitionId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexDefinitionId** | **String**|  | 

### Return type

[**[IndexesIndexDefinitionSnapshotEntry]**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1IndexesIndexDefinitionIdHistorySnapshotGet

> [IndexesIndexDefinitionSnapshotEntry] v1IndexesIndexDefinitionIdHistorySnapshotGet(indexDefinitionId, opts)

Historical Index Values for index definition

### Example

```javascript
import CoinApiIndexesRestApi from 'coin_api_indexes_rest_api';
let defaultClient = CoinApiIndexesRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure API key authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//JWT.apiKeyPrefix = 'Token';

let apiInstance = new CoinApiIndexesRestApi.IndexesApi();
let indexDefinitionId = "indexDefinitionId_example"; // String | 
let opts = {
  'time': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.v1IndexesIndexDefinitionIdHistorySnapshotGet(indexDefinitionId, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexDefinitionId** | **String**|  | 
 **time** | **Date**|  | [optional] 

### Return type

[**[IndexesIndexDefinitionSnapshotEntry]**](IndexesIndexDefinitionSnapshotEntry.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1IndexesIndexIdCurrentGet

> IndexesIndexValue v1IndexesIndexIdCurrentGet(indexId)

Current Index Value

### Example

```javascript
import CoinApiIndexesRestApi from 'coin_api_indexes_rest_api';
let defaultClient = CoinApiIndexesRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure API key authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//JWT.apiKeyPrefix = 'Token';

let apiInstance = new CoinApiIndexesRestApi.IndexesApi();
let indexId = "indexId_example"; // String | 
apiInstance.v1IndexesIndexIdCurrentGet(indexId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexId** | **String**|  | 

### Return type

[**IndexesIndexValue**](IndexesIndexValue.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1IndexesIndexIdHistoryGet

> [IndexesIndexValue] v1IndexesIndexIdHistoryGet(indexId, opts)

Historical Index Value w/Composition

### Example

```javascript
import CoinApiIndexesRestApi from 'coin_api_indexes_rest_api';
let defaultClient = CoinApiIndexesRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure API key authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//JWT.apiKeyPrefix = 'Token';

let apiInstance = new CoinApiIndexesRestApi.IndexesApi();
let indexId = "indexId_example"; // String | 
let opts = {
  'timeStart': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'timeEnd': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'limit': 100 // Number | 
};
apiInstance.v1IndexesIndexIdHistoryGet(indexId, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexId** | **String**|  | 
 **timeStart** | **Date**|  | [optional] 
 **timeEnd** | **Date**|  | [optional] 
 **limit** | **Number**|  | [optional] [default to 100]

### Return type

[**[IndexesIndexValue]**](IndexesIndexValue.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1IndexesIndexIdTimeseriesGet

> [IndexesIndexTimeseriesItem] v1IndexesIndexIdTimeseriesGet(indexId, periodId, timeStart, timeEnd, opts)

Timeseries Index Value

### Example

```javascript
import CoinApiIndexesRestApi from 'coin_api_indexes_rest_api';
let defaultClient = CoinApiIndexesRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure API key authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//JWT.apiKeyPrefix = 'Token';

let apiInstance = new CoinApiIndexesRestApi.IndexesApi();
let indexId = "indexId_example"; // String | 
let periodId = "periodId_example"; // String | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
let timeStart = "timeStart_example"; // String | Timeseries starting time in ISO 8601
let timeEnd = "timeEnd_example"; // String | Timeseries ending time in ISO 8601
let opts = {
  'limit': 100 // Number | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
};
apiInstance.v1IndexesIndexIdTimeseriesGet(indexId, periodId, timeStart, timeEnd, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexId** | **String**|  | 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) | 
 **timeStart** | **String**| Timeseries starting time in ISO 8601 | 
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 | 
 **limit** | **Number**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**[IndexesIndexTimeseriesItem]**](IndexesIndexTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

