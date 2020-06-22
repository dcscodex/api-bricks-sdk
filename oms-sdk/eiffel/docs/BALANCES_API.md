# BALANCES_API

All URIs are relative to *http://localhost:3001*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**v1_balances_get**](BALANCES_API.md#v1_balances_get) | **Get** /v1/balances | Get balances


# **v1_balances_get**
> v1_balances_get (exchange_id:  detachable STRING_32 ): detachable LIST [BALANCE]
	

Get balances

Returns all of your balances, including available balance.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **STRING_32**| Exchange name | [optional] [default to null]

### Return type

[**LIST [BALANCE]**](balance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

