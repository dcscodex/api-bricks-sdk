# RestApi.OrderBookApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrderbooksSymbolIdCurrentGet**](OrderBookApi.md#v1OrderbooksSymbolIdCurrentGet) | **GET** /v1/orderbooks/{symbol_id}/current | Get current order book
[**v1OrderbooksSymbolIdDepthCurrentGet**](OrderBookApi.md#v1OrderbooksSymbolIdDepthCurrentGet) | **GET** /v1/orderbooks/{symbol_id}/depth/current | Current depth of the order book
[**v1OrderbooksSymbolIdHistoryGet**](OrderBookApi.md#v1OrderbooksSymbolIdHistoryGet) | **GET** /v1/orderbooks/{symbol_id}/history | Historical data
[**v1OrderbooksSymbolIdLatestGet**](OrderBookApi.md#v1OrderbooksSymbolIdLatestGet) | **GET** /v1/orderbooks/{symbol_id}/latest | Latest data



## v1OrderbooksSymbolIdCurrentGet

> V1OrderBookBase v1OrderbooksSymbolIdCurrentGet(symbolId, opts)

Get current order book

Retrieves the current order book for the specified symbol.

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.OrderBookApi();
let symbolId = "symbolId_example"; // String | The symbol ID (from the Metadata -> Symbols)
let opts = {
  'limitLevels': 56 // Number | The maximum number of levels to include in the response.
};
apiInstance.v1OrderbooksSymbolIdCurrentGet(symbolId, opts, (error, data, response) => {
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
 **symbolId** | **String**| The symbol ID (from the Metadata -&gt; Symbols) | 
 **limitLevels** | **Number**| The maximum number of levels to include in the response. | [optional] 

### Return type

[**V1OrderBookBase**](V1OrderBookBase.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1OrderbooksSymbolIdDepthCurrentGet

> V1OrderBookDepth v1OrderbooksSymbolIdDepthCurrentGet(symbolId, opts)

Current depth of the order book

Retrieves the current depth of the order book for the specified symbol.

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.OrderBookApi();
let symbolId = "symbolId_example"; // String | The symbol ID (from the Metadata -> Symbols)
let opts = {
  'limitLevels': 56 // Number | The maximum number of levels to include in the response.
};
apiInstance.v1OrderbooksSymbolIdDepthCurrentGet(symbolId, opts, (error, data, response) => {
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
 **symbolId** | **String**| The symbol ID (from the Metadata -&gt; Symbols) | 
 **limitLevels** | **Number**| The maximum number of levels to include in the response. | [optional] 

### Return type

[**V1OrderBookDepth**](V1OrderBookDepth.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1OrderbooksSymbolIdHistoryGet

> [V1OrderBook] v1OrderbooksSymbolIdHistoryGet(symbolId, opts)

Historical data

Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::    :::warning  The &#39;time_start&#39; and &#39;time_end&#39; parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the &#39;date&#39; parameter instead for querying data for a specific day without filter.  :::

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.OrderBookApi();
let symbolId = "symbolId_example"; // String | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
let opts = {
  'date': "date_example", // String | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided)
  'timeStart': "timeStart_example", // String | Starting time in ISO 8601 (deprecated, use 'date' instead)
  'timeEnd': "timeEnd_example", // String | Timeseries ending time in ISO 8601 (deprecated, use 'date' instead)
  'limit': 100, // Number | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  'limitLevels': 56 // Number | Maximum amount of levels from each side of the book to include in response (optional)
};
apiInstance.v1OrderbooksSymbolIdHistoryGet(symbolId, opts, (error, data, response) => {
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
 **symbolId** | **String**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 
 **date** | **String**| Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | [optional] 
 **timeStart** | **String**| Starting time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional] 
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional] 
 **limit** | **Number**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **limitLevels** | **Number**| Maximum amount of levels from each side of the book to include in response (optional) | [optional] 

### Return type

[**[V1OrderBook]**](V1OrderBook.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1OrderbooksSymbolIdLatestGet

> [V1OrderBook] v1OrderbooksSymbolIdLatestGet(symbolId, opts)

Latest data

Get latest order book snapshots for a specific symbol, returned in time descending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.OrderBookApi();
let symbolId = "symbolId_example"; // String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
let opts = {
  'limit': 100, // Number | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  'limitLevels': 56 // Number | Maximum amount of levels from each side of the book to include in response (optional)
};
apiInstance.v1OrderbooksSymbolIdLatestGet(symbolId, opts, (error, data, response) => {
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
 **symbolId** | **String**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
 **limit** | **Number**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **limitLevels** | **Number**| Maximum amount of levels from each side of the book to include in response (optional) | [optional] 

### Return type

[**[V1OrderBook]**](V1OrderBook.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

