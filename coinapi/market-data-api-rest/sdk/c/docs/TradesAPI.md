# TradesAPI

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**TradesAPI_v1TradesLatestGet**](TradesAPI.md#TradesAPI_v1TradesLatestGet) | **GET** /v1/trades/latest | Latest data
[**TradesAPI_v1TradesSymbolIdHistoryGet**](TradesAPI.md#TradesAPI_v1TradesSymbolIdHistoryGet) | **GET** /v1/trades/{symbol_id}/history | Historical data
[**TradesAPI_v1TradesSymbolIdLatestGet**](TradesAPI.md#TradesAPI_v1TradesSymbolIdLatestGet) | **GET** /v1/trades/{symbol_id}/latest | Latest data by symbol_id


# **TradesAPI_v1TradesLatestGet**
```c
// Latest data
//
// Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.
//
list_t* TradesAPI_v1TradesLatestGet(apiClient_t *apiClient, char *filter_symbol_id, int *include_id, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**filter_symbol_id** | **char \*** | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] 
**include_id** | **int \*** | Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to false]
**limit** | **int \*** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[list_t](v1_trade.md) *


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **TradesAPI_v1TradesSymbolIdHistoryGet**
```c
// Historical data
//
// Get history transactions from specific symbol, returned in time ascending order.    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::
//
list_t* TradesAPI_v1TradesSymbolIdHistoryGet(apiClient_t *apiClient, char *symbol_id, char *date, char *time_start, char *time_end, int *limit, int *include_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**symbol_id** | **char \*** | Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 
**date** | **char \*** | Date in ISO 8601, returned data is for the whole given day (required if &#39;time_start&#39; is not provided) | [optional] 
**time_start** | **char \*** | Starting time in ISO 8601 | [optional] 
**time_end** | **char \*** | Timeseries ending time in ISO 8601 | [optional] 
**limit** | **int \*** | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
**include_id** | **int \*** | Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to false]

### Return type

[list_t](v1_trade.md) *


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **TradesAPI_v1TradesSymbolIdLatestGet**
```c
// Latest data by symbol_id
//
// Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.
//
list_t* TradesAPI_v1TradesSymbolIdLatestGet(apiClient_t *apiClient, char *symbol_id, int *limit, int *include_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**symbol_id** | **char \*** | Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 
**limit** | **int \*** | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
**include_id** | **int \*** | Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to false]

### Return type

[list_t](v1_trade.md) *


### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

