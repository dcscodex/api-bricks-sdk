# EmsManagedCloudRestApi.EndpointsApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**endpoints**](EndpointsApi.md#endpoints) | **GET** /v1/endpoints | Get API endpoints



## endpoints

> [AccountEndpoint] endpoints(opts)

Get API endpoints

Get all API endpoints that the EMS API expose for your subscription.

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

let apiInstance = new EmsManagedCloudRestApi.EndpointsApi();
let opts = {
  'filterExchangeId': ["null"] // [String] | Exchange id
};
apiInstance.endpoints(opts, (error, data, response) => {
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
 **filterExchangeId** | [**[String]**](String.md)| Exchange id | [optional] 

### Return type

[**[AccountEndpoint]**](AccountEndpoint.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

