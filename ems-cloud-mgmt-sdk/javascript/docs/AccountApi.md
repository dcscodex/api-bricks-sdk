# EmsManagedCloudRestApi.AccountApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAccount**](AccountApi.md#deleteAccount) | **DELETE** /v1/accounts | Delete account
[**deleteAccountAll**](AccountApi.md#deleteAccountAll) | **DELETE** /v1/accounts/all | Delete all accounts
[**getAccount**](AccountApi.md#getAccount) | **GET** /v1/accounts | Get accounts
[**persistAccount**](AccountApi.md#persistAccount) | **POST** /v1/accounts | Add or update account



## deleteAccount

> deleteAccount(exchangeId)

Delete account

Delete specific exchange account maintained by the EMS API for your subscription.

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

let apiInstance = new EmsManagedCloudRestApi.AccountApi();
let exchangeId = ["null"]; // [String] | Exchange identifier of the account to delete
apiInstance.deleteAccount(exchangeId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | [**[String]**](String.md)| Exchange identifier of the account to delete | 

### Return type

null (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## deleteAccountAll

> deleteAccountAll()

Delete all accounts

Delete all exchange accounts maintained by the EMS API for your subscription.

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

let apiInstance = new EmsManagedCloudRestApi.AccountApi();
apiInstance.deleteAccountAll((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## getAccount

> [GetAccount] getAccount(opts)

Get accounts

Get all accounts maintained for your subscription in the EMS API.

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

let apiInstance = new EmsManagedCloudRestApi.AccountApi();
let opts = {
  'filterExchangeId': ["null"] // [String] | Exchange id of the specific account to provide single account instead of the list of all accounts
};
apiInstance.getAccount(opts, (error, data, response) => {
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
 **filterExchangeId** | [**[String]**](String.md)| Exchange id of the specific account to provide single account instead of the list of all accounts | [optional] 

### Return type

[**[GetAccount]**](GetAccount.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## persistAccount

> persistAccount(body)

Add or update account

Add new or update existing exchange account for your subscription in the EMS API.

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

let apiInstance = new EmsManagedCloudRestApi.AccountApi();
let body = new EmsManagedCloudRestApi.AccountData(); // AccountData | Exchange account object that needs to be add/update to the EMS
apiInstance.persistAccount(body, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AccountData**](AccountData.md)| Exchange account object that needs to be add/update to the EMS | 

### Return type

null (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

