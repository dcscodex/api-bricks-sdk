# RestApi.MetadataApi

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
import RestApi from 'rest_api';

let apiInstance = new RestApi.MetadataApi();
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

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## v1SymbolsExchangeIdGet

> [FinFeedAPISymbolModel] v1SymbolsExchangeIdGet(exchangeId)

List of symbols for the exchange

### Example

```javascript
import RestApi from 'rest_api';

let apiInstance = new RestApi.MetadataApi();
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

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

