# OrderBookApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1OrderbooksSymbolIdCurrentGet**](OrderBookApi.md#V1OrderbooksSymbolIdCurrentGet) | **GET** /v1/orderbooks/{symbol_id}/current | Get current order book
[**V1OrderbooksSymbolIdDepthCurrentGet**](OrderBookApi.md#V1OrderbooksSymbolIdDepthCurrentGet) | **GET** /v1/orderbooks/{symbol_id}/depth/current | Current depth of the order book
[**V1OrderbooksSymbolIdHistoryGet**](OrderBookApi.md#V1OrderbooksSymbolIdHistoryGet) | **GET** /v1/orderbooks/{symbol_id}/history | Historical data
[**V1OrderbooksSymbolIdLatestGet**](OrderBookApi.md#V1OrderbooksSymbolIdLatestGet) | **GET** /v1/orderbooks/{symbol_id}/latest | Latest data


# **V1OrderbooksSymbolIdCurrentGet**
> V1OrderBookBase V1OrderbooksSymbolIdCurrentGet(symbol_id, limit_levels = var.limit_levels)

Get current order book

Retrieves the current order book for the specified symbol.

### Example
```R
library(openapi)

# Get current order book
#
# prepare function argument(s)
var_symbol_id <- "symbol_id_example" # character | The symbol ID (from the Metadata -> Symbols)
var_limit_levels <- 56 # integer | The maximum number of levels to include in the response. (Optional)

api_instance <- OrderBookApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1OrderbooksSymbolIdCurrentGet(var_symbol_id, limit_levels = var_limit_levelsdata_file = "result.txt")
result <- api_instance$V1OrderbooksSymbolIdCurrentGet(var_symbol_id, limit_levels = var_limit_levels)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **character**| The symbol ID (from the Metadata -&gt; Symbols) | 
 **limit_levels** | **integer**| The maximum number of levels to include in the response. | [optional] 

### Return type

[**V1OrderBookBase**](v1.OrderBookBase.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1OrderbooksSymbolIdDepthCurrentGet**
> V1OrderBookDepth V1OrderbooksSymbolIdDepthCurrentGet(symbol_id, limit_levels = var.limit_levels)

Current depth of the order book

Retrieves the current depth of the order book for the specified symbol.

### Example
```R
library(openapi)

# Current depth of the order book
#
# prepare function argument(s)
var_symbol_id <- "symbol_id_example" # character | The symbol ID (from the Metadata -> Symbols)
var_limit_levels <- 56 # integer | The maximum number of levels to include in the response. (Optional)

api_instance <- OrderBookApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1OrderbooksSymbolIdDepthCurrentGet(var_symbol_id, limit_levels = var_limit_levelsdata_file = "result.txt")
result <- api_instance$V1OrderbooksSymbolIdDepthCurrentGet(var_symbol_id, limit_levels = var_limit_levels)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **character**| The symbol ID (from the Metadata -&gt; Symbols) | 
 **limit_levels** | **integer**| The maximum number of levels to include in the response. | [optional] 

### Return type

[**V1OrderBookDepth**](v1.OrderBookDepth.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1OrderbooksSymbolIdHistoryGet**
> array[V1OrderBook] V1OrderbooksSymbolIdHistoryGet(symbol_id, date = var.date, time_start = var.time_start, time_end = var.time_end, limit = 100, limit_levels = var.limit_levels)

Historical data

Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::

### Example
```R
library(openapi)

# Historical data
#
# prepare function argument(s)
var_symbol_id <- "symbol_id_example" # character | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
var_date <- "date_example" # character | Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided) (Optional)
var_time_start <- "time_start_example" # character | Starting time in ISO 8601 (deprecated, use 'date' instead) (Optional)
var_time_end <- "time_end_example" # character | Timeseries ending time in ISO 8601 (deprecated, use 'date' instead) (Optional)
var_limit <- 100 # integer | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (Optional)
var_limit_levels <- 56 # integer | Maximum amount of levels from each side of the book to include in response (optional) (Optional)

api_instance <- OrderBookApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1OrderbooksSymbolIdHistoryGet(var_symbol_id, date = var_date, time_start = var_time_start, time_end = var_time_end, limit = var_limit, limit_levels = var_limit_levelsdata_file = "result.txt")
result <- api_instance$V1OrderbooksSymbolIdHistoryGet(var_symbol_id, date = var_date, time_start = var_time_start, time_end = var_time_end, limit = var_limit, limit_levels = var_limit_levels)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **character**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 
 **date** | **character**| Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided) | [optional] 
 **time_start** | **character**| Starting time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional] 
 **time_end** | **character**| Timeseries ending time in ISO 8601 (deprecated, use &#39;date&#39; instead) | [optional] 
 **limit** | **integer**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **limit_levels** | **integer**| Maximum amount of levels from each side of the book to include in response (optional) | [optional] 

### Return type

[**array[V1OrderBook]**](v1.OrderBook.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1OrderbooksSymbolIdLatestGet**
> array[V1OrderBook] V1OrderbooksSymbolIdLatestGet(symbol_id, limit = 100, limit_levels = var.limit_levels)

Latest data

Get latest order book snapshots for a specific symbol, returned in time descending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::

### Example
```R
library(openapi)

# Latest data
#
# prepare function argument(s)
var_symbol_id <- "symbol_id_example" # character | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
var_limit <- 100 # integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (Optional)
var_limit_levels <- 56 # integer | Maximum amount of levels from each side of the book to include in response (optional) (Optional)

api_instance <- OrderBookApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1OrderbooksSymbolIdLatestGet(var_symbol_id, limit = var_limit, limit_levels = var_limit_levelsdata_file = "result.txt")
result <- api_instance$V1OrderbooksSymbolIdLatestGet(var_symbol_id, limit = var_limit, limit_levels = var_limit_levels)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **character**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
 **limit** | **integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **limit_levels** | **integer**| Maximum amount of levels from each side of the book to include in response (optional) | [optional] 

### Return type

[**array[V1OrderBook]**](v1.OrderBook.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

