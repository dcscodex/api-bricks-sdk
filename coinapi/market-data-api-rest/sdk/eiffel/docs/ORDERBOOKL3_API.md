# ORDERBOOKL3_API

All URIs are relative to *https://rest.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**v1_orderbooks3_current_get**](ORDERBOOKL3_API.md#v1_orderbooks3_current_get) | **Get** /v1/orderbooks3/current | Current order books
[**v1_orderbooks3_symbol_id_current_get**](ORDERBOOKL3_API.md#v1_orderbooks3_symbol_id_current_get) | **Get** /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id


# **v1_orderbooks3_current_get**
> v1_orderbooks3_current_get (filter_symbol_id:  detachable STRING_32 ; limit_levels:  detachable INTEGER_32 ): detachable LIST [V1_ORDER_BOOK_BASE]


Current order books


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_symbol_id** | **STRING_32**| Comma or semicolon delimited parts of symbol identifier used to filter the response. | [optional] [default to null]
 **limit_levels** | **INTEGER_32**| The maximum number of levels to include in the response. | [optional] [default to null]

### Return type

[**LIST [V1_ORDER_BOOK_BASE]**](v1.OrderBookBase.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orderbooks3_symbol_id_current_get**
> v1_orderbooks3_symbol_id_current_get (symbol_id: STRING_32 ; limit_levels:  detachable INTEGER_32 ): detachable V1_ORDER_BOOK_BASE


Current order book by symbol_id

Retrieves the current order book for the specified symbol.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **STRING_32**| The symbol ID (from the Metadata -&gt; Symbols) | [default to null]
 **limit_levels** | **INTEGER_32**| The maximum number of levels to include in the response. | [optional] [default to null]

### Return type

[**V1_ORDER_BOOK_BASE**](v1.OrderBookBase.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

