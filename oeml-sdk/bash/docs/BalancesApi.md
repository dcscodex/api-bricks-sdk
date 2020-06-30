# BalancesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1BalancesGet**](BalancesApi.md#v1BalancesGet) | **GET** /v1/balances | Get balances



## v1BalancesGet

Get balances

Returns all of your balances, including available balance.

### Example

```bash
 v1BalancesGet  exchange_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **string** | Exchange name | [optional] [default to null]

### Return type

[**array[Balance]**](Balance.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

