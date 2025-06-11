# FinFeedApiStockRestApi.MetadataApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ExchangesGet**](MetadataApi.md#v1ExchangesGet) | **GET** /v1/exchanges | List of exchanges
[**v1SymbolsExchangeIdGet**](MetadataApi.md#v1SymbolsExchangeIdGet) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange



## v1ExchangesGet

> [FinFeedAPIExchangeModel] v1ExchangesGet()

List of exchanges

### Example

```javascript
import FinFeedApiStockRestApi from 'fin_feed_api_stock_rest_api';
let defaultClient = FinFeedApiStockRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new FinFeedApiStockRestApi.MetadataApi();
apiInstance.v1ExchangesGet((error, data, response) => {
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

[**[FinFeedAPIExchangeModel]**](FinFeedAPIExchangeModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## v1SymbolsExchangeIdGet

> [FinFeedAPISymbolModel] v1SymbolsExchangeIdGet(exchangeId)

List of symbols for the exchange

### Example

```javascript
import FinFeedApiStockRestApi from 'fin_feed_api_stock_rest_api';
let defaultClient = FinFeedApiStockRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new FinFeedApiStockRestApi.MetadataApi();
let exchangeId = "exchangeId_example"; // String | 
apiInstance.v1SymbolsExchangeIdGet(exchangeId, (error, data, response) => {
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
 **exchangeId** | **String**|  | 

### Return type

[**[FinFeedAPISymbolModel]**](FinFeedAPISymbolModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

