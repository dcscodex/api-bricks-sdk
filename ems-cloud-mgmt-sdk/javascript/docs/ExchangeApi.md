# EmsManagedCloudRestApi.ExchangeApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exchangeLoginRequire**](ExchangeApi.md#exchangeLoginRequire) | **GET** /v1/exchanges | Get exchange configuration



## exchangeLoginRequire

> [ExchangeLoginRequire] exchangeLoginRequire()

Get exchange configuration

Get information about the required parameters or server site location of the exchanges supported in the EMS API.

### Example

```javascript
import EmsManagedCloudRestApi from 'ems_managed_cloud_rest_api';
let defaultClient = EmsManagedCloudRestApi.ApiClient.instance;
// Configure API key authorization: APIKeyHeader
let APIKeyHeader = defaultClient.authentications['APIKeyHeader'];
APIKeyHeader.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKeyHeader.apiKeyPrefix = 'Token';
// Configure API key authorization: APIKeyQueryParam
let APIKeyQueryParam = defaultClient.authentications['APIKeyQueryParam'];
APIKeyQueryParam.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKeyQueryParam.apiKeyPrefix = 'Token';

let apiInstance = new EmsManagedCloudRestApi.ExchangeApi();
apiInstance.exchangeLoginRequire((error, data, response) => {
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

[**[ExchangeLoginRequire]**](ExchangeLoginRequire.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

