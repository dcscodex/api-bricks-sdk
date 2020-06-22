# POSITIONS_API

All URIs are relative to *http://localhost:3001*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**v1_positions_get**](POSITIONS_API.md#v1_positions_get) | **Get** /v1/positions | Get positions


# **v1_positions_get**
> v1_positions_get (exchange_id:  detachable STRING_32 ): detachable LIST [POSITION]
	

Get positions

Returns all of your positions.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **STRING_32**| Exchange name | [optional] [default to null]

### Return type

[**LIST [POSITION]**](position.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

