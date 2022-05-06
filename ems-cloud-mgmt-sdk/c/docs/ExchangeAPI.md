# ExchangeAPI

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExchangeAPI_exchangeLoginRequire**](ExchangeAPI.md#ExchangeAPI_exchangeLoginRequire) | **GET** /v1/exchanges | Get exchange configuration


# **ExchangeAPI_exchangeLoginRequire**
```c
// Get exchange configuration
//
// Get information about the required parameters or server site location of the exchanges supported in the EMS API.
//
list_t* ExchangeAPI_exchangeLoginRequire(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](exchange_login_require.md) *


### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

