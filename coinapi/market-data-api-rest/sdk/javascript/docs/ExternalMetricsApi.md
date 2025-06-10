# RestApi.ExternalMetricsApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ExternalmetricsAssetHistoryGet**](ExternalMetricsApi.md#v1ExternalmetricsAssetHistoryGet) | **GET** /v1/externalmetrics/asset/history | Historical metrics for the asset from external sources
[**v1ExternalmetricsAssetListingGet**](ExternalMetricsApi.md#v1ExternalmetricsAssetListingGet) | **GET** /v1/externalmetrics/asset/listing | Listing of metrics available for specific asset
[**v1ExternalmetricsAssetsGet**](ExternalMetricsApi.md#v1ExternalmetricsAssetsGet) | **GET** /v1/externalmetrics/assets | Listing of all supported external assets
[**v1ExternalmetricsChainHistoryGet**](ExternalMetricsApi.md#v1ExternalmetricsChainHistoryGet) | **GET** /v1/externalmetrics/chain/history | Historical metrics for the chain from external sources
[**v1ExternalmetricsChainListingGet**](ExternalMetricsApi.md#v1ExternalmetricsChainListingGet) | **GET** /v1/externalmetrics/chain/listing | Listing of metrics available for specific chain
[**v1ExternalmetricsChainsGet**](ExternalMetricsApi.md#v1ExternalmetricsChainsGet) | **GET** /v1/externalmetrics/chains | Listing of all supported external chains
[**v1ExternalmetricsExchangeHistoryGet**](ExternalMetricsApi.md#v1ExternalmetricsExchangeHistoryGet) | **GET** /v1/externalmetrics/exchange/history | Historical metrics for the exchange from both external and internal sources
[**v1ExternalmetricsExchangeListingGet**](ExternalMetricsApi.md#v1ExternalmetricsExchangeListingGet) | **GET** /v1/externalmetrics/exchange/listing | Listing of metrics available for specific exchange (both external and generic)
[**v1ExternalmetricsExchangesGet**](ExternalMetricsApi.md#v1ExternalmetricsExchangesGet) | **GET** /v1/externalmetrics/exchanges | Listing of all supported external exchanges
[**v1ExternalmetricsListingGet**](ExternalMetricsApi.md#v1ExternalmetricsListingGet) | **GET** /v1/externalmetrics/listing | Listing of all supported metrics (both external and generic)



## v1ExternalmetricsAssetHistoryGet

> [Object] v1ExternalmetricsAssetHistoryGet(metricId, assetId, opts)

Historical metrics for the asset from external sources

Get asset metrics history from external data providers. Data is typically aggregated daily.

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.ExternalMetricsApi();
let metricId = "metricId_example"; // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key)
let assetId = "assetId_example"; // String | Asset identifier (e.g., `USDC`, `USDT` - from supported assets list)
let opts = {
  'timeStart': new Date("2013-10-20T19:20:30+01:00"), // Date | Starting time in ISO 8601
  'timeEnd': new Date("2013-10-20T19:20:30+01:00"), // Date | Ending time in ISO 8601
  'timeFormat': "timeFormat_example", // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  'periodId': "periodId_example", // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
  'limit': 100 // Number | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
};
apiInstance.v1ExternalmetricsAssetHistoryGet(metricId, assetId, opts, (error, data, response) => {
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
 **metricId** | **String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60; - internal metric key) | 
 **assetId** | **String**| Asset identifier (e.g., &#x60;USDC&#x60;, &#x60;USDT&#x60; - from supported assets list) | 
 **timeStart** | **Date**| Starting time in ISO 8601 | [optional] 
 **timeEnd** | **Date**| Ending time in ISO 8601 | [optional] 
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] 
 **limit** | **Number**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**[Object]**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1ExternalmetricsAssetListingGet

> [V1MetricInfo] v1ExternalmetricsAssetListingGet(assetId)

Listing of metrics available for specific asset

Get all metrics that are actually available for the specified asset from external providers.

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.ExternalMetricsApi();
let assetId = "assetId_example"; // String | Asset identifier (e.g., USDC, USDT)
apiInstance.v1ExternalmetricsAssetListingGet(assetId, (error, data, response) => {
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
 **assetId** | **String**| Asset identifier (e.g., USDC, USDT) | 

### Return type

[**[V1MetricInfo]**](V1MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1ExternalmetricsAssetsGet

> [V1ExternalAsset] v1ExternalmetricsAssetsGet()

Listing of all supported external assets

Get all assets (primarily stablecoins) supported by external data providers.

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.ExternalMetricsApi();
apiInstance.v1ExternalmetricsAssetsGet((error, data, response) => {
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

[**[V1ExternalAsset]**](V1ExternalAsset.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1ExternalmetricsChainHistoryGet

> [Object] v1ExternalmetricsChainHistoryGet(metricId, chainId, opts)

Historical metrics for the chain from external sources

Get chain metrics history from external data providers. Data is typically aggregated daily.

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.ExternalMetricsApi();
let metricId = "metricId_example"; // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key)
let chainId = "chainId_example"; // String | Chain identifier (e.g., `Ethereum`, `Arbitrum` - from supported chains list)
let opts = {
  'timeStart': new Date("2013-10-20T19:20:30+01:00"), // Date | Starting time in ISO 8601
  'timeEnd': new Date("2013-10-20T19:20:30+01:00"), // Date | Ending time in ISO 8601
  'timeFormat': "timeFormat_example", // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  'periodId': "periodId_example", // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
  'limit': 100 // Number | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
};
apiInstance.v1ExternalmetricsChainHistoryGet(metricId, chainId, opts, (error, data, response) => {
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
 **metricId** | **String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60; - internal metric key) | 
 **chainId** | **String**| Chain identifier (e.g., &#x60;Ethereum&#x60;, &#x60;Arbitrum&#x60; - from supported chains list) | 
 **timeStart** | **Date**| Starting time in ISO 8601 | [optional] 
 **timeEnd** | **Date**| Ending time in ISO 8601 | [optional] 
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] 
 **limit** | **Number**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**[Object]**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1ExternalmetricsChainListingGet

> [V1MetricInfo] v1ExternalmetricsChainListingGet(chainId)

Listing of metrics available for specific chain

Get all metrics that are actually available for the specified blockchain chain from external providers.

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.ExternalMetricsApi();
let chainId = "chainId_example"; // String | Chain identifier (e.g., ETHEREUM, ARBITRUM)
apiInstance.v1ExternalmetricsChainListingGet(chainId, (error, data, response) => {
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
 **chainId** | **String**| Chain identifier (e.g., ETHEREUM, ARBITRUM) | 

### Return type

[**[V1MetricInfo]**](V1MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1ExternalmetricsChainsGet

> [V1Chain] v1ExternalmetricsChainsGet()

Listing of all supported external chains

Get all blockchain chains supported by external data providers.

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.ExternalMetricsApi();
apiInstance.v1ExternalmetricsChainsGet((error, data, response) => {
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

[**[V1Chain]**](V1Chain.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1ExternalmetricsExchangeHistoryGet

> [Object] v1ExternalmetricsExchangeHistoryGet(metricId, exchangeId, opts)

Historical metrics for the exchange from both external and internal sources

Get exchange metrics history from external data providers or internal sources based on metric type.

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.ExternalMetricsApi();
let metricId = "metricId_example"; // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` for external, or generic metric IDs)
let exchangeId = "exchangeId_example"; // String | Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`)
let opts = {
  'timeStart': new Date("2013-10-20T19:20:30+01:00"), // Date | Starting time in ISO 8601
  'timeEnd': new Date("2013-10-20T19:20:30+01:00"), // Date | Ending time in ISO 8601
  'timeFormat': "timeFormat_example", // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  'periodId': "periodId_example", // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
  'limit': 100 // Number | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
};
apiInstance.v1ExternalmetricsExchangeHistoryGet(metricId, exchangeId, opts, (error, data, response) => {
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
 **metricId** | **String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60; for external, or generic metric IDs) | 
 **exchangeId** | **String**| Exchange identifier (e.g., &#x60;BINANCE&#x60;, &#x60;UNISWAP-V3-ETHEREUM&#x60;) | 
 **timeStart** | **Date**| Starting time in ISO 8601 | [optional] 
 **timeEnd** | **Date**| Ending time in ISO 8601 | [optional] 
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] 
 **limit** | **Number**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**[Object]**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1ExternalmetricsExchangeListingGet

> [V1MetricInfo] v1ExternalmetricsExchangeListingGet(exchangeId)

Listing of metrics available for specific exchange (both external and generic)

Get all metrics that are actually available for the specified exchange from both external providers and internal sources.

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.ExternalMetricsApi();
let exchangeId = "exchangeId_example"; // String | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)
apiInstance.v1ExternalmetricsExchangeListingGet(exchangeId, (error, data, response) => {
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
 **exchangeId** | **String**| Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) | 

### Return type

[**[V1MetricInfo]**](V1MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1ExternalmetricsExchangesGet

> [V1ExternalExchange] v1ExternalmetricsExchangesGet()

Listing of all supported external exchanges

Get all exchanges that have mapping to external data providers for metrics that actually have sources.  Only returns exchanges that are properly mapped to external protocols for metrics with defined sources.

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.ExternalMetricsApi();
apiInstance.v1ExternalmetricsExchangesGet((error, data, response) => {
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

[**[V1ExternalExchange]**](V1ExternalExchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1ExternalmetricsListingGet

> [V1MetricInfo] v1ExternalmetricsListingGet()

Listing of all supported metrics (both external and generic)

Get all metrics available from external data providers and internal generic metrics.  External metrics have detailed descriptions, while generic metrics are marked as such.

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.ExternalMetricsApi();
apiInstance.v1ExternalmetricsListingGet((error, data, response) => {
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

[**[V1MetricInfo]**](V1MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

