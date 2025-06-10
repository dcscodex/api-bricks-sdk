# RestApi.OptionsApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OptionsExchangeIdCurrentGet**](OptionsApi.md#v1OptionsExchangeIdCurrentGet) | **GET** /v1/options/{exchange_id}/current | Current data by Exchange



## v1OptionsExchangeIdCurrentGet

> [OptionsOptionExchangeGroup] v1OptionsExchangeIdCurrentGet(exchangeId)

Current data by Exchange

Get current options data for a specific exchange.    Returns option data grouped by underlying asset, quote currency, and expiration time,  with quotes for both calls and puts at each strike price.

### Example

```javascript
import RestApi from 'rest_api';
let defaultClient = RestApi.ApiClient.instance;
// Configure API key authorization: ApiKey
let ApiKey = defaultClient.authentications['ApiKey'];
ApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//ApiKey.apiKeyPrefix = 'Token';

let apiInstance = new RestApi.OptionsApi();
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

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

