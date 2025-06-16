# QuotesAPI

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**QuotesAPI_v1QuotesCurrentGet**](QuotesAPI.md#QuotesAPI_v1QuotesCurrentGet) | **GET** /v1/quotes/current | Current data
[**QuotesAPI_v1QuotesLatestGet**](QuotesAPI.md#QuotesAPI_v1QuotesLatestGet) | **GET** /v1/quotes/latest | Latest data
[**QuotesAPI_v1QuotesSymbolIdCurrentGet**](QuotesAPI.md#QuotesAPI_v1QuotesSymbolIdCurrentGet) | **GET** /v1/quotes/{symbol_id}/current | Current quotes for a specific symbol
[**QuotesAPI_v1QuotesSymbolIdHistoryGet**](QuotesAPI.md#QuotesAPI_v1QuotesSymbolIdHistoryGet) | **GET** /v1/quotes/{symbol_id}/history | Historical data
[**QuotesAPI_v1QuotesSymbolIdLatestGet**](QuotesAPI.md#QuotesAPI_v1QuotesSymbolIdLatestGet) | **GET** /v1/quotes/{symbol_id}/latest | Latest quote updates for a specific symbol


# **QuotesAPI_v1QuotesCurrentGet**
```c
// Current data
//
// Get current quotes for all symbols or for a specific symbol.              :::info When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned. :::
//
list_t* QuotesAPI_v1QuotesCurrentGet(apiClient_t *apiClient, char *filter_symbol_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**filter_symbol_id** | **char \*** | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] 

### Return type

[list_t](v1_quote_trade.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **QuotesAPI_v1QuotesLatestGet**
```c
// Latest data
//
// Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.
//
list_t* QuotesAPI_v1QuotesLatestGet(apiClient_t *apiClient, char *filter_symbol_id, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**filter_symbol_id** | **char \*** | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] 
**limit** | **int \*** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[list_t](v1_quote.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **QuotesAPI_v1QuotesSymbolIdCurrentGet**
```c
// Current quotes for a specific symbol
//
v1_quote_trade_t* QuotesAPI_v1QuotesSymbolIdCurrentGet(apiClient_t *apiClient, char *symbol_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**symbol_id** | **char \*** | The symbol identifier (from the Metadata -&gt; Symbols) | 

### Return type

[v1_quote_trade_t](v1_quote_trade.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **QuotesAPI_v1QuotesSymbolIdHistoryGet**
```c
// Historical data
//
// Get historical quote updates within requested time range, returned in time ascending order.  :::warning The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the 'date' parameter instead for querying data for a specific day without filter. :::
//
list_t* QuotesAPI_v1QuotesSymbolIdHistoryGet(apiClient_t *apiClient, char *symbol_id, char *date, char *time_start, char *time_end, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**symbol_id** | **char \*** | Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 
**date** | **char \*** | Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | [optional] 
**time_start** | **char \*** | Starting time in ISO 8601 | [optional] 
**time_end** | **char \*** | Timeseries ending time in ISO 8601 | [optional] 
**limit** | **int \*** | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[list_t](v1_quote.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **QuotesAPI_v1QuotesSymbolIdLatestGet**
```c
// Latest quote updates for a specific symbol
//
list_t* QuotesAPI_v1QuotesSymbolIdLatestGet(apiClient_t *apiClient, char *symbol_id, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**symbol_id** | **char \*** | Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
**limit** | **int \*** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[list_t](v1_quote.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

