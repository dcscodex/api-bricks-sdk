# QuotesApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1QuotesCurrentGet**](QuotesApi.md#V1QuotesCurrentGet) | **GET** /v1/quotes/current | Current data
[**V1QuotesLatestGet**](QuotesApi.md#V1QuotesLatestGet) | **GET** /v1/quotes/latest | Latest data
[**V1QuotesSymbolIdCurrentGet**](QuotesApi.md#V1QuotesSymbolIdCurrentGet) | **GET** /v1/quotes/{symbol_id}/current | Current quotes for a specific symbol
[**V1QuotesSymbolIdHistoryGet**](QuotesApi.md#V1QuotesSymbolIdHistoryGet) | **GET** /v1/quotes/{symbol_id}/history | Historical data
[**V1QuotesSymbolIdLatestGet**](QuotesApi.md#V1QuotesSymbolIdLatestGet) | **GET** /v1/quotes/{symbol_id}/latest | Latest quote updates for a specific symbol


# **V1QuotesCurrentGet**
> array[V1QuoteTrade] V1QuotesCurrentGet(filter_symbol_id = var.filter_symbol_id)

Current data

Get current quotes for all symbols or for a specific symbol.              :::info When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned. :::

### Example
```R
library(openapi)

# Current data
#
# prepare function argument(s)
var_filter_symbol_id <- "filter_symbol_id_example" # character | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) (Optional)

api_instance <- QuotesApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1QuotesCurrentGet(filter_symbol_id = var_filter_symbol_iddata_file = "result.txt")
result <- api_instance$V1QuotesCurrentGet(filter_symbol_id = var_filter_symbol_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_symbol_id** | **character**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] 

### Return type

[**array[V1QuoteTrade]**](v1.QuoteTrade.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1QuotesLatestGet**
> array[V1Quote] V1QuotesLatestGet(filter_symbol_id = var.filter_symbol_id, limit = 100)

Latest data

Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.

### Example
```R
library(openapi)

# Latest data
#
# prepare function argument(s)
var_filter_symbol_id <- "filter_symbol_id_example" # character | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) (Optional)
var_limit <- 100 # integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (Optional)

api_instance <- QuotesApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1QuotesLatestGet(filter_symbol_id = var_filter_symbol_id, limit = var_limitdata_file = "result.txt")
result <- api_instance$V1QuotesLatestGet(filter_symbol_id = var_filter_symbol_id, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_symbol_id** | **character**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] 
 **limit** | **integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**array[V1Quote]**](v1.Quote.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1QuotesSymbolIdCurrentGet**
> V1QuoteTrade V1QuotesSymbolIdCurrentGet(symbol_id)

Current quotes for a specific symbol

### Example
```R
library(openapi)

# Current quotes for a specific symbol
#
# prepare function argument(s)
var_symbol_id <- "symbol_id_example" # character | The symbol identifier (from the Metadata -> Symbols)

api_instance <- QuotesApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1QuotesSymbolIdCurrentGet(var_symbol_iddata_file = "result.txt")
result <- api_instance$V1QuotesSymbolIdCurrentGet(var_symbol_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **character**| The symbol identifier (from the Metadata -&gt; Symbols) | 

### Return type

[**V1QuoteTrade**](v1.QuoteTrade.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1QuotesSymbolIdHistoryGet**
> array[V1Quote] V1QuotesSymbolIdHistoryGet(symbol_id, date = var.date, time_start = var.time_start, time_end = var.time_end, limit = 100)

Historical data

Get historical quote updates within requested time range, returned in time ascending order.  :::warning The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the 'date' parameter instead for querying data for a specific day without filter. :::

### Example
```R
library(openapi)

# Historical data
#
# prepare function argument(s)
var_symbol_id <- "symbol_id_example" # character | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
var_date <- "date_example" # character | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided) (Optional)
var_time_start <- "time_start_example" # character | Starting time in ISO 8601 (Optional)
var_time_end <- "time_end_example" # character | Timeseries ending time in ISO 8601 (Optional)
var_limit <- 100 # integer | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (Optional)

api_instance <- QuotesApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1QuotesSymbolIdHistoryGet(var_symbol_id, date = var_date, time_start = var_time_start, time_end = var_time_end, limit = var_limitdata_file = "result.txt")
result <- api_instance$V1QuotesSymbolIdHistoryGet(var_symbol_id, date = var_date, time_start = var_time_start, time_end = var_time_end, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **character**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 
 **date** | **character**| Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | [optional] 
 **time_start** | **character**| Starting time in ISO 8601 | [optional] 
 **time_end** | **character**| Timeseries ending time in ISO 8601 | [optional] 
 **limit** | **integer**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**array[V1Quote]**](v1.Quote.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1QuotesSymbolIdLatestGet**
> array[V1Quote] V1QuotesSymbolIdLatestGet(symbol_id, limit = 100)

Latest quote updates for a specific symbol

### Example
```R
library(openapi)

# Latest quote updates for a specific symbol
#
# prepare function argument(s)
var_symbol_id <- "symbol_id_example" # character | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
var_limit <- 100 # integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (Optional)

api_instance <- QuotesApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1QuotesSymbolIdLatestGet(var_symbol_id, limit = var_limitdata_file = "result.txt")
result <- api_instance$V1QuotesSymbolIdLatestGet(var_symbol_id, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **character**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
 **limit** | **integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**array[V1Quote]**](v1.Quote.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

