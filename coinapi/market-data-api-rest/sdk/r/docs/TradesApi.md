# TradesApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1TradesLatestGet**](TradesApi.md#V1TradesLatestGet) | **GET** /v1/trades/latest | Latest data
[**V1TradesSymbolIdHistoryGet**](TradesApi.md#V1TradesSymbolIdHistoryGet) | **GET** /v1/trades/{symbol_id}/history | Historical data
[**V1TradesSymbolIdLatestGet**](TradesApi.md#V1TradesSymbolIdLatestGet) | **GET** /v1/trades/{symbol_id}/latest | Latest data by symbol_id


# **V1TradesLatestGet**
> array[V1Trade] V1TradesLatestGet(filter_symbol_id = var.filter_symbol_id, include_id = FALSE, limit = 100)

Latest data

Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.

### Example
```R
library(openapi)

# Latest data
#
# prepare function argument(s)
var_filter_symbol_id <- "filter_symbol_id_example" # character | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) (Optional)
var_include_id <- FALSE # character | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers. (Optional)
var_limit <- 100 # integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (Optional)

api_instance <- TradesApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1TradesLatestGet(filter_symbol_id = var_filter_symbol_id, include_id = var_include_id, limit = var_limitdata_file = "result.txt")
result <- api_instance$V1TradesLatestGet(filter_symbol_id = var_filter_symbol_id, include_id = var_include_id, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_symbol_id** | **character**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] 
 **include_id** | **character**| Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to FALSE]
 **limit** | **integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**array[V1Trade]**](v1.Trade.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1TradesSymbolIdHistoryGet**
> array[V1Trade] V1TradesSymbolIdHistoryGet(symbol_id, date = var.date, time_start = var.time_start, time_end = var.time_end, limit = 100, include_id = FALSE)

Historical data

Get history transactions from specific symbol, returned in time ascending order.    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::

### Example
```R
library(openapi)

# Historical data
#
# prepare function argument(s)
var_symbol_id <- "symbol_id_example" # character | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
var_date <- "date_example" # character | Date in ISO 8601, returned data is for the whole given day (required if 'time_start' is not provided) (Optional)
var_time_start <- "time_start_example" # character | Starting time in ISO 8601 (Optional)
var_time_end <- "time_end_example" # character | Timeseries ending time in ISO 8601 (Optional)
var_limit <- 100 # integer | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (Optional)
var_include_id <- FALSE # character | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers. (Optional)

api_instance <- TradesApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1TradesSymbolIdHistoryGet(var_symbol_id, date = var_date, time_start = var_time_start, time_end = var_time_end, limit = var_limit, include_id = var_include_iddata_file = "result.txt")
result <- api_instance$V1TradesSymbolIdHistoryGet(var_symbol_id, date = var_date, time_start = var_time_start, time_end = var_time_end, limit = var_limit, include_id = var_include_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **character**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 
 **date** | **character**| Date in ISO 8601, returned data is for the whole given day (required if &#39;time_start&#39; is not provided) | [optional] 
 **time_start** | **character**| Starting time in ISO 8601 | [optional] 
 **time_end** | **character**| Timeseries ending time in ISO 8601 | [optional] 
 **limit** | **integer**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **include_id** | **character**| Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to FALSE]

### Return type

[**array[V1Trade]**](v1.Trade.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1TradesSymbolIdLatestGet**
> array[V1Trade] V1TradesSymbolIdLatestGet(symbol_id, limit = 100, include_id = FALSE)

Latest data by symbol_id

Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.

### Example
```R
library(openapi)

# Latest data by symbol_id
#
# prepare function argument(s)
var_symbol_id <- "symbol_id_example" # character | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
var_limit <- 100 # integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (Optional)
var_include_id <- FALSE # character | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers. (Optional)

api_instance <- TradesApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1TradesSymbolIdLatestGet(var_symbol_id, limit = var_limit, include_id = var_include_iddata_file = "result.txt")
result <- api_instance$V1TradesSymbolIdLatestGet(var_symbol_id, limit = var_limit, include_id = var_include_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **character**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | 
 **limit** | **integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]
 **include_id** | **character**| Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to FALSE]

### Return type

[**array[V1Trade]**](v1.Trade.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

