# ORDERBOOK_API

All URIs are relative to *https://rest.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**v1_orderbooks_symbol_id_current_get**](ORDERBOOK_API.md#v1_orderbooks_symbol_id_current_get) | **Get** /v1/orderbooks/{symbol_id}/current | Get current order book
[**v1_orderbooks_symbol_id_depth_current_get**](ORDERBOOK_API.md#v1_orderbooks_symbol_id_depth_current_get) | **Get** /v1/orderbooks/{symbol_id}/depth/current | Current depth of the order book
[**v1_orderbooks_symbol_id_history_get**](ORDERBOOK_API.md#v1_orderbooks_symbol_id_history_get) | **Get** /v1/orderbooks/{symbol_id}/history | Historical data
[**v1_orderbooks_symbol_id_latest_get**](ORDERBOOK_API.md#v1_orderbooks_symbol_id_latest_get) | **Get** /v1/orderbooks/{symbol_id}/latest | Latest data


# **v1_orderbooks_symbol_id_current_get**
> v1_orderbooks_symbol_id_current_get (symbol_id: STRING_32 ; limit_levels:  detachable INTEGER_32 ): detachable V1_ORDER_BOOK_BASE


Get current order book

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

# **v1_orderbooks_symbol_id_depth_current_get**
> v1_orderbooks_symbol_id_depth_current_get (symbol_id: STRING_32 ; limit_levels:  detachable INTEGER_32 ): detachable V1_ORDER_BOOK_DEPTH


Current depth of the order book

Retrieves the current depth of the order book for the specified symbol.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **STRING_32**| The symbol ID (from the Metadata -&gt; Symbols) | [default to null]
 **limit_levels** | **INTEGER_32**| The maximum number of levels to include in the response. | [optional] [default to null]

### Return type

[**V1_ORDER_BOOK_DEPTH**](v1.OrderBookDepth.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orderbooks_symbol_id_history_get**
> v1_orderbooks_symbol_id_history_get (symbol_id: STRING_32 ; date:  detachable STRING_32 ; time_start:  detachable STRING_32 ; time_end:  detachable STRING_32 ; limit:  detachable INTEGER_32 ; limit_levels:  detachable INTEGER_32 ): detachable LIST [V1_ORDER_BOOK]


Historical data

Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **STRING_32**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | [default to null]
 **date** | **STRING_32**| Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | [optional] [default to null]
 **time_start** | **STRING_32**| Starting time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional] [default to null]
 **time_end** | **STRING_32**| Timeseries ending time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional] [default to null]
 **limit** | **INTEGER_32**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **limit_levels** | **INTEGER_32**| Maximum amount of levels from each side of the book to include in response (optional) | [optional] [default to null]

### Return type

[**LIST [V1_ORDER_BOOK]**](v1.OrderBook.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orderbooks_symbol_id_latest_get**
> v1_orderbooks_symbol_id_latest_get (symbol_id: STRING_32 ; limit:  detachable INTEGER_32 ; limit_levels:  detachable INTEGER_32 ): detachable LIST [V1_ORDER_BOOK]


Latest data

Get latest order book snapshots for a specific symbol, returned in time descending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **STRING_32**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | [default to null]
 **limit** | **INTEGER_32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **limit_levels** | **INTEGER_32**| Maximum amount of levels from each side of the book to include in response (optional) | [optional] [default to null]

### Return type

[**LIST [V1_ORDER_BOOK]**](v1.OrderBook.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

