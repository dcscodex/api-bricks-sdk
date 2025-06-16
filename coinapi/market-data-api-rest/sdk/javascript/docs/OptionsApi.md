# CoinApiMarketDataRestApi.OptionsApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OptionsExchangeIdCurrentGet**](OptionsApi.md#v1OptionsExchangeIdCurrentGet) | **GET** /v1/options/{exchange_id}/current | Current data by Exchange



## v1OptionsExchangeIdCurrentGet

> [OptionsOptionExchangeGroup] v1OptionsExchangeIdCurrentGet(exchangeId)

Current data by Exchange

Get current options data for a specific exchange.  Returns option data grouped by underlying asset, quote currency, and expiration time, with quotes for both calls and puts at each strike price.

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

let apiInstance = new CoinApiMarketDataRestApi.OptionsApi();
let exchangeId = "exchangeId_example"; // String | Exchange identifier (from the Metadata -> Exchanges)
apiInstance.v1OptionsExchangeIdCurrentGet(exchangeId, (error, data, response) => {
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
 **exchangeId** | **String**| Exchange identifier (from the Metadata -&gt; Exchanges) | 

### Return type

[**[OptionsOptionExchangeGroup]**](OptionsOptionExchangeGroup.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

