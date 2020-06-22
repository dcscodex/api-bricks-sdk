# \BalancesApi

All URIs are relative to *http://localhost:3001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1BalancesGet**](BalancesApi.md#V1BalancesGet) | **Get** /v1/balances | Get balances



## V1BalancesGet

> []Balance V1BalancesGet(ctx, optional)

Get balances

Returns all of your balances, including available balance.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***V1BalancesGetOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a V1BalancesGetOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **optional.String**| Exchange name | 

### Return type

[**[]Balance**](balance.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

