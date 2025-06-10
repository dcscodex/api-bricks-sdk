# OrderBookL3API

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**OrderBookL3API_v1Orderbooks3CurrentGet**](OrderBookL3API.md#OrderBookL3API_v1Orderbooks3CurrentGet) | **GET** /v1/orderbooks3/current | Current order books
[**OrderBookL3API_v1Orderbooks3SymbolIdCurrentGet**](OrderBookL3API.md#OrderBookL3API_v1Orderbooks3SymbolIdCurrentGet) | **GET** /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id


# **OrderBookL3API_v1Orderbooks3CurrentGet**
```c
// Current order books
//
list_t* OrderBookL3API_v1Orderbooks3CurrentGet(apiClient_t *apiClient, char *filter_symbol_id, int *limit_levels);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**filter_symbol_id** | **char \*** | Comma or semicolon delimited parts of symbol identifier used to filter the response. | [optional] 
**limit_levels** | **int \*** | The maximum number of levels to include in the response. | [optional] 

### Return type

[list_t](v1_order_book_base.md) *


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderBookL3API_v1Orderbooks3SymbolIdCurrentGet**
```c
// Current order book by symbol_id
//
// Retrieves the current order book for the specified symbol.
//
v1_order_book_base_t* OrderBookL3API_v1Orderbooks3SymbolIdCurrentGet(apiClient_t *apiClient, char *symbol_id, int *limit_levels);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**symbol_id** | **char \*** | The symbol ID (from the Metadata -&gt; Symbols) | 
**limit_levels** | **int \*** | The maximum number of levels to include in the response. | [optional] 

### Return type

[v1_order_book_base_t](v1_order_book_base.md) *


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

