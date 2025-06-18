# CoinApiMarketDataRestApi.MetricsV2Api

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v2MetricsAssetHistoryGet**](MetricsV2Api.md#v2MetricsAssetHistoryGet) | **GET** /v2/metrics/asset/history | Historical metrics for the asset
[**v2MetricsAssetListingGet**](MetricsV2Api.md#v2MetricsAssetListingGet) | **GET** /v2/metrics/asset/listing | Listing of metrics available for specific asset
[**v2MetricsChainHistoryGet**](MetricsV2Api.md#v2MetricsChainHistoryGet) | **GET** /v2/metrics/chain/history | Historical metrics for the chain
[**v2MetricsChainListingGet**](MetricsV2Api.md#v2MetricsChainListingGet) | **GET** /v2/metrics/chain/listing | Listing of metrics available for specific chain
[**v2MetricsExchangeHistoryGet**](MetricsV2Api.md#v2MetricsExchangeHistoryGet) | **GET** /v2/metrics/exchange/history | Historical metrics for the exchange
[**v2MetricsExchangeListingGet**](MetricsV2Api.md#v2MetricsExchangeListingGet) | **GET** /v2/metrics/exchange/listing | Listing of metrics available for specific exchange
[**v2MetricsListingGet**](MetricsV2Api.md#v2MetricsListingGet) | **GET** /v2/metrics/listing | Listing of all supported metrics



## v2MetricsAssetHistoryGet

> [Object] v2MetricsAssetHistoryGet(metricId, assetId, opts)

Historical metrics for the asset

Get asset metrics history.

### Example

```javascript
import CoinApiMarketDataRestApi from 'coin_api_market_data_rest_api';
let defaultClient = CoinApiMarketDataRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new CoinApiMarketDataRestApi.MetricsV2Api();
let metricId = "metricId_example"; // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
let assetId = "assetId_example"; // String | Asset identifier (e.g., `USDC`, `USDT`)
let opts = {
  'timeStart': new Date("2013-10-20T19:20:30+01:00"), // Date | Starting time in ISO 8601
  'timeEnd': new Date("2013-10-20T19:20:30+01:00"), // Date | Ending time in ISO 8601
  'timeFormat': "timeFormat_example", // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  'periodId': "periodId_example", // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
  'limit': 100 // Number | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
};
apiInstance.v2MetricsAssetHistoryGet(metricId, assetId, opts, (error, data, response) => {
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
 **metricId** | **String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | 
 **assetId** | **String**| Asset identifier (e.g., &#x60;USDC&#x60;, &#x60;USDT&#x60;) | 
 **timeStart** | **Date**| Starting time in ISO 8601 | [optional] 
 **timeEnd** | **Date**| Ending time in ISO 8601 | [optional] 
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] 
 **limit** | **Number**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**[Object]**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v2MetricsAssetListingGet

> [V1MetricInfo] v2MetricsAssetListingGet(assetId)

Listing of metrics available for specific asset

Get all metrics that are actually available for the specified asset.

### Example

```javascript
import CoinApiMarketDataRestApi from 'coin_api_market_data_rest_api';
let defaultClient = CoinApiMarketDataRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new CoinApiMarketDataRestApi.MetricsV2Api();
let assetId = "assetId_example"; // String | Asset identifier (e.g., USDC, USDT)
apiInstance.v2MetricsAssetListingGet(assetId, (error, data, response) => {
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

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v2MetricsChainHistoryGet

> [Object] v2MetricsChainHistoryGet(metricId, chainId, opts)

Historical metrics for the chain

Get chain metrics history.

### Example

```javascript
import CoinApiMarketDataRestApi from 'coin_api_market_data_rest_api';
let defaultClient = CoinApiMarketDataRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new CoinApiMarketDataRestApi.MetricsV2Api();
let metricId = "metricId_example"; // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
let chainId = "chainId_example"; // String | Chain identifier (e.g., `Ethereum`, `Arbitrum`)
let opts = {
  'timeStart': new Date("2013-10-20T19:20:30+01:00"), // Date | Starting time in ISO 8601
  'timeEnd': new Date("2013-10-20T19:20:30+01:00"), // Date | Ending time in ISO 8601
  'timeFormat': "timeFormat_example", // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  'periodId': "periodId_example", // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
  'limit': 100 // Number | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
};
apiInstance.v2MetricsChainHistoryGet(metricId, chainId, opts, (error, data, response) => {
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
 **metricId** | **String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | 
 **chainId** | **String**| Chain identifier (e.g., &#x60;Ethereum&#x60;, &#x60;Arbitrum&#x60;) | 
 **timeStart** | **Date**| Starting time in ISO 8601 | [optional] 
 **timeEnd** | **Date**| Ending time in ISO 8601 | [optional] 
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] 
 **limit** | **Number**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**[Object]**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v2MetricsChainListingGet

> [V1MetricInfo] v2MetricsChainListingGet(chainId)

Listing of metrics available for specific chain

Get all metrics that are actually available for the specified blockchain chain.

### Example

```javascript
import CoinApiMarketDataRestApi from 'coin_api_market_data_rest_api';
let defaultClient = CoinApiMarketDataRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new CoinApiMarketDataRestApi.MetricsV2Api();
let chainId = "chainId_example"; // String | Chain identifier (e.g., ETHEREUM, ARBITRUM)
apiInstance.v2MetricsChainListingGet(chainId, (error, data, response) => {
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

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v2MetricsExchangeHistoryGet

> [Object] v2MetricsExchangeHistoryGet(metricId, exchangeId, opts)

Historical metrics for the exchange

Get exchange metrics history.

### Example

```javascript
import CoinApiMarketDataRestApi from 'coin_api_market_data_rest_api';
let defaultClient = CoinApiMarketDataRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new CoinApiMarketDataRestApi.MetricsV2Api();
let metricId = "metricId_example"; // String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
let exchangeId = "exchangeId_example"; // String | Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`)
let opts = {
  'timeStart': new Date("2013-10-20T19:20:30+01:00"), // Date | Starting time in ISO 8601
  'timeEnd': new Date("2013-10-20T19:20:30+01:00"), // Date | Ending time in ISO 8601
  'timeFormat': "timeFormat_example", // String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
  'periodId': "periodId_example", // String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
  'limit': 100 // Number | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
};
apiInstance.v2MetricsExchangeHistoryGet(metricId, exchangeId, opts, (error, data, response) => {
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
 **metricId** | **String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | 
 **exchangeId** | **String**| Exchange identifier (e.g., &#x60;BINANCE&#x60;, &#x60;UNISWAP-V3-ETHEREUM&#x60;) | 
 **timeStart** | **Date**| Starting time in ISO 8601 | [optional] 
 **timeEnd** | **Date**| Ending time in ISO 8601 | [optional] 
 **timeFormat** | **String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] 
 **limit** | **Number**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**[Object]**

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v2MetricsExchangeListingGet

> [V1MetricInfo] v2MetricsExchangeListingGet(exchangeId)

Listing of metrics available for specific exchange

Get all metrics that are actually available for the specified exchange.

### Example

```javascript
import CoinApiMarketDataRestApi from 'coin_api_market_data_rest_api';
let defaultClient = CoinApiMarketDataRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new CoinApiMarketDataRestApi.MetricsV2Api();
let exchangeId = "exchangeId_example"; // String | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)
apiInstance.v2MetricsExchangeListingGet(exchangeId, (error, data, response) => {
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

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v2MetricsListingGet

> [V1MetricInfo] v2MetricsListingGet()

Listing of all supported metrics

Get all metrics available in the system.

### Example

```javascript
import CoinApiMarketDataRestApi from 'coin_api_market_data_rest_api';
let defaultClient = CoinApiMarketDataRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new CoinApiMarketDataRestApi.MetricsV2Api();
apiInstance.v2MetricsListingGet((error, data, response) => {
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

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

