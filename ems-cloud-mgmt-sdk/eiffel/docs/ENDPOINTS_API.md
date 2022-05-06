# ENDPOINTS_API

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**endpoints**](ENDPOINTS_API.md#endpoints) | **Get** /v1/endpoints | Get API endpoints


# **endpoints**
> endpoints (filter_exchange_id:  detachable LIST [STRING_32] ): detachable LIST [ACCOUNT_ENDPOINT]


Get API endpoints

Get all API endpoints that the EMS API expose for your subscription.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_exchange_id** | [**LIST [STRING_32]**](STRING_32.md)| Exchange id | [optional] [default to null]

### Return type

[**LIST [ACCOUNT_ENDPOINT]**](AccountEndpoint.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

