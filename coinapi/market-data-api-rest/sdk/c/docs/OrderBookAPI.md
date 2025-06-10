# OrderBookAPI

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**OrderBookAPI_v1OrderbooksSymbolIdCurrentGet**](OrderBookAPI.md#OrderBookAPI_v1OrderbooksSymbolIdCurrentGet) | **GET** /v1/orderbooks/{symbol_id}/current | Get current order book
[**OrderBookAPI_v1OrderbooksSymbolIdDepthCurrentGet**](OrderBookAPI.md#OrderBookAPI_v1OrderbooksSymbolIdDepthCurrentGet) | **GET** /v1/orderbooks/{symbol_id}/depth/current | Current depth of the order book
[**OrderBookAPI_v1OrderbooksSymbolIdHistoryGet**](OrderBookAPI.md#OrderBookAPI_v1OrderbooksSymbolIdHistoryGet) | **GET** /v1/orderbooks/{symbol_id}/history | Historical data
[**OrderBookAPI_v1OrderbooksSymbolIdLatestGet**](OrderBookAPI.md#OrderBookAPI_v1OrderbooksSymbolIdLatestGet) | **GET** /v1/orderbooks/{symbol_id}/latest | Latest data


# **OrderBookAPI_v1OrderbooksSymbolIdCurrentGet**
```c
// Get current order book
//
// Retrieves the current order book for the specified symbol.
//
v1_order_book_base_t* OrderBookAPI_v1OrderbooksSymbolIdCurrentGet(apiClient_t *apiClient, char *symbol_id, int *limit_levels);
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

# **OrderBookAPI_v1OrderbooksSymbolIdDepthCurrentGet**
```c
// Current depth of the order book
//
// Retrieves the current depth of the order book for the specified symbol.
//
v1_order_book_depth_t* OrderBookAPI_v1OrderbooksSymbolIdDepthCurrentGet(apiClient_t *apiClient, char *symbol_id, int *limit_levels);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**symbol_id** | **char \*** | The symbol ID (from the Metadata -&gt; Symbols) | 
**limit_levels** | **int \*** | The maximum number of levels to include in the response. | [optional] 

### Return type

[v1_order_book_depth_t](v1_order_book_depth.md) *


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderBookAPI_v1OrderbooksSymbolIdHistoryGet**
```c
// Historical data
//
// Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::
//
list_t* OrderBookAPI_v1OrderbooksSymbolIdHistoryGet(apiClient_t *apiClient, char *symbol_id, char *date, char *time_start, char *time_end, int *limit, int *limit_levels);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**symbol_id** | **char \*** | Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 
**date** | **char \*** | Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | [optional] 
**time_start** | **char \*** | Starting time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional] 
**time_end** | **char \*** | Timeseries ending time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional] 
**limit** | **int \*** | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
**limit_levels** | **int \*** | Maximum amount of levels from each side of the book to include in response (optional) | [optional] 

### Return type

[list_t](v1_order_book.md) *


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderBookAPI_v1OrderbooksSymbolIdLatestGet**
```c
// Latest data
//
// Get latest order book snapshots for a specific symbol, returned in time descending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::
//
list_t* OrderBookAPI_v1OrderbooksSymbolIdLatestGet(apiClient_t *apiClient, char *symbol_id, int *limit, int *limit_levels);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**symbol_id** | **char \*** | Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
**limit** | **int \*** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
**limit_levels** | **int \*** | Maximum amount of levels from each side of the book to include in response (optional) | [optional] 

### Return type

[list_t](v1_order_book.md) *


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

