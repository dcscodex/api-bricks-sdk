# EndpointsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**endpoints**](EndpointsApi.md#endpoints) | **GET** /v1/endpoints | Get API endpoints



## endpoints

Get API endpoints

Get all API endpoints that the EMS API expose for your subscription.

### Example

```bash
 endpoints  Specify as:  filter_exchange_id=value1 filter_exchange_id=value2 filter_exchange_id=...
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterExchangeId** | [**array[string]**](string.md) | Exchange id | [optional] [default to null]

### Return type

[**array[AccountEndpoint]**](AccountEndpoint.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

