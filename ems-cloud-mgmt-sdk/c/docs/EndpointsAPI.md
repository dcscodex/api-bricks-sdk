# EndpointsAPI

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**EndpointsAPI_endpoints**](EndpointsAPI.md#EndpointsAPI_endpoints) | **GET** /v1/endpoints | Get API endpoints


# **EndpointsAPI_endpoints**
```c
// Get API endpoints
//
// Get all API endpoints that the EMS API expose for your subscription.
//
list_t* EndpointsAPI_endpoints(apiClient_t *apiClient, list_t * filter_exchange_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**filter_exchange_id** | **[list_t](char.md) \*** | Exchange id | [optional] 

### Return type

[list_t](account_endpoint.md) *


### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

