# QUOTES_API

All URIs are relative to *https://rest.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**v1_quotes_current_get**](QUOTES_API.md#v1_quotes_current_get) | **Get** /v1/quotes/current | Current data
[**v1_quotes_latest_get**](QUOTES_API.md#v1_quotes_latest_get) | **Get** /v1/quotes/latest | Latest data
[**v1_quotes_symbol_id_current_get**](QUOTES_API.md#v1_quotes_symbol_id_current_get) | **Get** /v1/quotes/{symbol_id}/current | Current quotes for a specific symbol
[**v1_quotes_symbol_id_history_get**](QUOTES_API.md#v1_quotes_symbol_id_history_get) | **Get** /v1/quotes/{symbol_id}/history | Historical data
[**v1_quotes_symbol_id_latest_get**](QUOTES_API.md#v1_quotes_symbol_id_latest_get) | **Get** /v1/quotes/{symbol_id}/latest | Latest quote updates for a specific symbol


# **v1_quotes_current_get**
> v1_quotes_current_get (filter_symbol_id:  detachable STRING_32 ): detachable LIST [V1_QUOTE_TRADE]


Current data

Get current quotes for all symbols or for a specific symbol.                :::info  When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned.  :::


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_symbol_id** | **STRING_32**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] [default to null]

### Return type

[**LIST [V1_QUOTE_TRADE]**](v1.QuoteTrade.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_quotes_latest_get**
> v1_quotes_latest_get (filter_symbol_id:  detachable STRING_32 ; limit:  detachable INTEGER_32 ): detachable LIST [V1_QUOTE]


Latest data

Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_symbol_id** | **STRING_32**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] [default to null]
 **limit** | **INTEGER_32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**LIST [V1_QUOTE]**](v1.Quote.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_quotes_symbol_id_current_get**
> v1_quotes_symbol_id_current_get (symbol_id: STRING_32 ): detachable V1_QUOTE_TRADE


Current quotes for a specific symbol


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **STRING_32**| The symbol identifier (from the Metadata -&gt; Symbols) | [default to null]

### Return type

[**V1_QUOTE_TRADE**](v1.QuoteTrade.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_quotes_symbol_id_history_get**
> v1_quotes_symbol_id_history_get (symbol_id: STRING_32 ; date:  detachable STRING_32 ; time_start:  detachable STRING_32 ; time_end:  detachable STRING_32 ; limit:  detachable INTEGER_32 ): detachable LIST [V1_QUOTE]


Historical data

Get historical quote updates within requested time range, returned in time ascending order.    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **STRING_32**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | [default to null]
 **date** | **STRING_32**| Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | [optional] [default to null]
 **time_start** | **STRING_32**| Starting time in ISO 8601 | [optional] [default to null]
 **time_end** | **STRING_32**| Timeseries ending time in ISO 8601 | [optional] [default to null]
 **limit** | **INTEGER_32**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**LIST [V1_QUOTE]**](v1.Quote.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_quotes_symbol_id_latest_get**
> v1_quotes_symbol_id_latest_get (symbol_id: STRING_32 ; limit:  detachable INTEGER_32 ): detachable LIST [V1_QUOTE]


Latest quote updates for a specific symbol


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **STRING_32**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | [default to null]
 **limit** | **INTEGER_32**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**LIST [V1_QUOTE]**](v1.Quote.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

