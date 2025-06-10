# RestApi.MetricsApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1MetricsAssetCurrentGet**](MetricsApi.md#v1MetricsAssetCurrentGet) | **GET** /v1/metrics/asset/current | Current metrics for given asset
[**v1MetricsAssetHistoryGet**](MetricsApi.md#v1MetricsAssetHistoryGet) | **GET** /v1/metrics/asset/history | Historical metrics for asset
[**v1MetricsAssetListingGet**](MetricsApi.md#v1MetricsAssetListingGet) | **GET** /v1/metrics/asset/listing | Listing of all supported metrics for asset
[**v1MetricsExchangeCurrentGet**](MetricsApi.md#v1MetricsExchangeCurrentGet) | **GET** /v1/metrics/exchange/current | Current metrics for given exchange
[**v1MetricsExchangeHistoryGet**](MetricsApi.md#v1MetricsExchangeHistoryGet) | **GET** /v1/metrics/exchange/history | Historical metrics for the exchange
[**v1MetricsExchangeListingGet**](MetricsApi.md#v1MetricsExchangeListingGet) | **GET** /v1/metrics/exchange/listing | Listing of all supported exchange metrics
[**v1MetricsListingGet**](MetricsApi.md#v1MetricsListingGet) | **GET** /v1/metrics/listing | Listing of all supported metrics by CoinAPI
[**v1MetricsSymbolCurrentGet**](MetricsApi.md#v1MetricsSymbolCurrentGet) | **GET** /v1/metrics/symbol/current | Current metrics for given symbol
[**v1MetricsSymbolHistoryGet**](MetricsApi.md#v1MetricsSymbolHistoryGet) | **GET** /v1/metrics/symbol/history | Historical metrics for symbol
[**v1MetricsSymbolListingGet**](MetricsApi.md#v1MetricsSymbolListingGet) | **GET** /v1/metrics/symbol/listing | Listing of all supported metrics for symbol



## v1MetricsAssetCurrentGet

> [V1GeneralData] v1MetricsAssetCurrentGet(opts)

Current metrics for given asset

Get current asset metrics.

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.MetricsApi();
let opts = {
  'metricId': "metricId_example", // String | Metric identifier (from the Metrics -> Listing)
  'assetId': "assetId_example", // String | Asset identifier (from the Metadata -> Assets)
  'assetIdExternal': "assetIdExternal_example", // String | Exchange asset identifier
  'exchangeId': "exchangeId_example" // String | Exchange identifier (from the Metadata -> Exchanges)
};
apiInstance.v1MetricsAssetCurrentGet(opts, (error, data, response) => {
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
 **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | [optional] 
 **assetId** | **String**| Asset identifier (from the Metadata -&gt; Assets) | [optional] 
 **assetIdExternal** | **String**| Exchange asset identifier | [optional] 
 **exchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] 

### Return type

[**[V1GeneralData]**](V1GeneralData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1MetricsAssetHistoryGet

> [V1MetricData] v1MetricsAssetHistoryGet(metricId, exchangeId, opts)

Historical metrics for asset

Get asset metrics history.

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.MetricsApi();
let metricId = "metricId_example"; // String | Metric identifier (from the Metrics -> Listing)
let exchangeId = "exchangeId_example"; // String | Exchange identifier (from the Metadata -> Exchanges)
let opts = {
  'assetId': "assetId_example", // String | Asset identifier (from the Metadata -> Assets)
  'assetIdExternal': "assetIdExternal_example", // String | Exchange asset identifier
  'timeStart': new Date("2013-10-20T19:20:30+01:00"), // Date | Starting time in ISO 8601
  'timeEnd': new Date("2013-10-20T19:20:30+01:00"), // Date | Ending time in ISO 8601
  'timeFormat': "timeFormat_example", // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  'periodId': "periodId_example", // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
  'limit': 100 // Number | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
};
apiInstance.v1MetricsAssetHistoryGet(metricId, exchangeId, opts, (error, data, response) => {
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
 **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | 
 **exchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | 
 **assetId** | **String**| Asset identifier (from the Metadata -&gt; Assets) | [optional] 
 **assetIdExternal** | **String**| Exchange asset identifier | [optional] 
 **timeStart** | **Date**| Starting time in ISO 8601 | [optional] 
 **timeEnd** | **Date**| Ending time in ISO 8601 | [optional] 
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] 
 **limit** | **Number**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**[V1MetricData]**](V1MetricData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1MetricsAssetListingGet

> [V1ListingItem] v1MetricsAssetListingGet(opts)

Listing of all supported metrics for asset

Get data metrics for asset.

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.MetricsApi();
let opts = {
  'metricId': "metricId_example", // String | Metric identifier (from the Metrics -> Listing)
  'exchangeId': "exchangeId_example", // String | Exchange identifier (from the Metadata -> Exchanges)
  'chainId': "chainId_example", // String | Chain identifier
  'networkId': "networkId_example", // String | Network identifier
  'assetId': "assetId_example", // String | Asset identifier (from the Metadata -> Assets)
  'assetIdExternal': "assetIdExternal_example" // String | The asset external identifier
};
apiInstance.v1MetricsAssetListingGet(opts, (error, data, response) => {
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
 **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | [optional] 
 **exchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] 
 **chainId** | **String**| Chain identifier | [optional] 
 **networkId** | **String**| Network identifier | [optional] 
 **assetId** | **String**| Asset identifier (from the Metadata -&gt; Assets) | [optional] 
 **assetIdExternal** | **String**| The asset external identifier | [optional] 

### Return type

[**[V1ListingItem]**](V1ListingItem.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1MetricsExchangeCurrentGet

> [V1GeneralData] v1MetricsExchangeCurrentGet(exchangeId, opts)

Current metrics for given exchange

Get current exchange metrics values.

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.MetricsApi();
let exchangeId = "exchangeId_example"; // String | The exchange identifier (from the Metadata -> Exchanges)
let opts = {
  'metricId': "metricId_example" // String | The metric identifier (from the Metrics -> Listing)
};
apiInstance.v1MetricsExchangeCurrentGet(exchangeId, opts, (error, data, response) => {
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
 **exchangeId** | **String**| The exchange identifier (from the Metadata -&gt; Exchanges) | 
 **metricId** | **String**| The metric identifier (from the Metrics -&gt; Listing) | [optional] 

### Return type

[**[V1GeneralData]**](V1GeneralData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1MetricsExchangeHistoryGet

> [V1MetricData] v1MetricsExchangeHistoryGet(metricId, exchangeId, opts)

Historical metrics for the exchange

Get exchange metrics history.

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.MetricsApi();
let metricId = "metricId_example"; // String | Metric identifier (from the Metrics -> Listing)
let exchangeId = "exchangeId_example"; // String | Exchange identifier (from the Metadata -> Exchanges)
let opts = {
  'timeStart': new Date("2013-10-20T19:20:30+01:00"), // Date | Starting time in ISO 8601
  'timeEnd': new Date("2013-10-20T19:20:30+01:00"), // Date | Ending time in ISO 8601
  'timeFormat': "timeFormat_example", // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  'periodId': "periodId_example", // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
  'limit': 100 // Number | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
};
apiInstance.v1MetricsExchangeHistoryGet(metricId, exchangeId, opts, (error, data, response) => {
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
 **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | 
 **exchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | 
 **timeStart** | **Date**| Starting time in ISO 8601 | [optional] 
 **timeEnd** | **Date**| Ending time in ISO 8601 | [optional] 
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] 
 **limit** | **Number**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**[V1MetricData]**](V1MetricData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1MetricsExchangeListingGet

> [V1ListingItem] v1MetricsExchangeListingGet(exchangeId, opts)

Listing of all supported exchange metrics

Get data metrics for exchange.

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.MetricsApi();
let exchangeId = "exchangeId_example"; // String | The exchange identifier (from the Metadata -> Exchanges)
let opts = {
  'metricId': "metricId_example" // String | The metric identifier (from the Metrics -> Listing)
};
apiInstance.v1MetricsExchangeListingGet(exchangeId, opts, (error, data, response) => {
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
 **exchangeId** | **String**| The exchange identifier (from the Metadata -&gt; Exchanges) | 
 **metricId** | **String**| The metric identifier (from the Metrics -&gt; Listing) | [optional] 

### Return type

[**[V1ListingItem]**](V1ListingItem.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1MetricsListingGet

> [V1Metric] v1MetricsListingGet()

Listing of all supported metrics by CoinAPI

Get all data metrics.

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.MetricsApi();
apiInstance.v1MetricsListingGet((error, data, response) => {
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

[**[V1Metric]**](V1Metric.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1MetricsSymbolCurrentGet

> [V1GeneralData] v1MetricsSymbolCurrentGet(opts)

Current metrics for given symbol

Get current symbol metrics.

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.MetricsApi();
let opts = {
  'metricId': "metricId_example", // String | Metric identifier (from the Metrics -> Listing)
  'symbolId': "symbolId_example", // String | Symbol identifier (from the Metadata -> Symbols)
  'exchangeId': "exchangeId_example" // String | Exchange id (from the Metadata -> Exchanges)
};
apiInstance.v1MetricsSymbolCurrentGet(opts, (error, data, response) => {
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
 **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | [optional] 
 **symbolId** | **String**| Symbol identifier (from the Metadata -&gt; Symbols) | [optional] 
 **exchangeId** | **String**| Exchange id (from the Metadata -&gt; Exchanges) | [optional] 

### Return type

[**[V1GeneralData]**](V1GeneralData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1MetricsSymbolHistoryGet

> [V1MetricData] v1MetricsSymbolHistoryGet(metricId, symbolId, opts)

Historical metrics for symbol

Get symbol metrics history.

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.MetricsApi();
let metricId = "metricId_example"; // String | Metric identifier (from the Metrics -> Listing)
let symbolId = "symbolId_example"; // String | Symbol identifier (from the Metadata -> Symbols)
let opts = {
  'timeStart': new Date("2013-10-20T19:20:30+01:00"), // Date | Starting time in ISO 8601
  'timeEnd': new Date("2013-10-20T19:20:30+01:00"), // Date | Ending time in ISO 8601
  'timeFormat': "timeFormat_example", // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  'periodId': "periodId_example", // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
  'limit': 100 // Number | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
};
apiInstance.v1MetricsSymbolHistoryGet(metricId, symbolId, opts, (error, data, response) => {
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
 **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | 
 **symbolId** | **String**| Symbol identifier (from the Metadata -&gt; Symbols) | 
 **timeStart** | **Date**| Starting time in ISO 8601 | [optional] 
 **timeEnd** | **Date**| Ending time in ISO 8601 | [optional] 
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] 
 **limit** | **Number**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**[V1MetricData]**](V1MetricData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1MetricsSymbolListingGet

> [V1ListingItem] v1MetricsSymbolListingGet(opts)

Listing of all supported metrics for symbol

Get data metrics for symbol.

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.MetricsApi();
let opts = {
  'metricId': "metricId_example", // String | Metric identifier (from the Metrics -> Listing)
  'exchangeId': "exchangeId_example", // String | Exchange identifier (from the Metadata -> Exchanges)
  'symbolId': "symbolId_example" // String | Symbol identifier (from the Metadata -> Symbols)
};
apiInstance.v1MetricsSymbolListingGet(opts, (error, data, response) => {
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
 **metricId** | **String**| Metric identifier (from the Metrics -&gt; Listing) | [optional] 
 **exchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] 
 **symbolId** | **String**| Symbol identifier (from the Metadata -&gt; Symbols) | [optional] 

### Return type

[**[V1ListingItem]**](V1ListingItem.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

