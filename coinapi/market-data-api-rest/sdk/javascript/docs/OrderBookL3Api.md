# CoinApiMarketDataRestApi.OrderBookL3Api

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1Orderbooks3CurrentGet**](OrderBookL3Api.md#v1Orderbooks3CurrentGet) | **GET** /v1/orderbooks3/current | Current order books
[**v1Orderbooks3SymbolIdCurrentGet**](OrderBookL3Api.md#v1Orderbooks3SymbolIdCurrentGet) | **GET** /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id



## v1Orderbooks3CurrentGet

> [V1OrderBookBase] v1Orderbooks3CurrentGet(opts)

Current order books

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

let apiInstance = new CoinApiMarketDataRestApi.OrderBookL3Api();
let opts = {
  'filterSymbolId': "filterSymbolId_example", // String | Comma or semicolon delimited parts of symbol identifier used to filter the response.
  'limitLevels': 56 // Number | The maximum number of levels to include in the response.
};
apiInstance.v1Orderbooks3CurrentGet(opts, (error, data, response) => {
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
 **filterSymbolId** | **String**| Comma or semicolon delimited parts of symbol identifier used to filter the response. | [optional] 
 **limitLevels** | **Number**| The maximum number of levels to include in the response. | [optional] 

### Return type

[**[V1OrderBookBase]**](V1OrderBookBase.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## v1Orderbooks3SymbolIdCurrentGet

> V1OrderBookBase v1Orderbooks3SymbolIdCurrentGet(symbolId, opts)

Current order book by symbol_id

Retrieves the current order book for the specified symbol.

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

let apiInstance = new CoinApiMarketDataRestApi.OrderBookL3Api();
let symbolId = "symbolId_example"; // String | The symbol ID (from the Metadata -> Symbols)
let opts = {
  'limitLevels': 56 // Number | The maximum number of levels to include in the response.
};
apiInstance.v1Orderbooks3SymbolIdCurrentGet(symbolId, opts, (error, data, response) => {
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

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

