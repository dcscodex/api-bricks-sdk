# \PositionsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1PositionsGet**](PositionsApi.md#V1PositionsGet) | **Get** /v1/positions | Get open positions



## V1PositionsGet

> []Position V1PositionsGet(ctx, optional)

Get open positions

Get current open positions across all or single exchange.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***V1PositionsGetOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a V1PositionsGetOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **optional.String**| Filter the balances to the specific exchange. | 

### Return type

[**[]Position**](Position.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

