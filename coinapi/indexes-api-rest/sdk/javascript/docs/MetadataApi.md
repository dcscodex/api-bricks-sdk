# IndexesRestApi.MetadataApi

All URIs are relative to *https://rest-api.indexes.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMetadataExchangesExchangeIdGet**](MetadataApi.md#apiMetadataExchangesExchangeIdGet) | **GET** /api/metadata/exchanges/{exchange_id} | List all exchanges by exchange_id
[**apiMetadataExchangesGet**](MetadataApi.md#apiMetadataExchangesGet) | **GET** /api/metadata/exchanges | List all exchanges



## apiMetadataExchangesExchangeIdGet

> [MetadataExchange] apiMetadataExchangesExchangeIdGet(exchangeId)

List all exchanges by exchange_id

### Example

```javascript
import IndexesRestApi from 'indexes_rest_api';
let defaultClient = IndexesRestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new IndexesRestApi.MetadataApi();
let exchangeId = "exchangeId_example"; // String | The ID of the exchange.
apiInstance.apiMetadataExchangesExchangeIdGet(exchangeId, (error, data, response) => {
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
 **exchangeId** | **String**| The ID of the exchange. | 

### Return type

[**[MetadataExchange]**](MetadataExchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack


## apiMetadataExchangesGet

> [MetadataExchange] apiMetadataExchangesGet(opts)

List all exchanges

Get a detailed list of exchanges provided by the system.                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::

### Example

```javascript
import IndexesRestApi from 'indexes_rest_api';
let defaultClient = IndexesRestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new IndexesRestApi.MetadataApi();
let opts = {
  'filterExchangeId': "filterExchangeId_example" // String | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)
};
apiInstance.apiMetadataExchangesGet(opts, (error, data, response) => {
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
 **filterExchangeId** | **String**| Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional] 

### Return type

[**[MetadataExchange]**](MetadataExchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

