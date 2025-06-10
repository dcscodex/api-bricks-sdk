# OrderBookL3Api

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1Orderbooks3CurrentGet**](OrderBookL3Api.md#V1Orderbooks3CurrentGet) | **GET** /v1/orderbooks3/current | Current order books
[**V1Orderbooks3SymbolIdCurrentGet**](OrderBookL3Api.md#V1Orderbooks3SymbolIdCurrentGet) | **GET** /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id


# **V1Orderbooks3CurrentGet**
> array[V1OrderBookBase] V1Orderbooks3CurrentGet(filter_symbol_id = var.filter_symbol_id, limit_levels = var.limit_levels)

Current order books

### Example
```R
library(openapi)

# Current order books
#
# prepare function argument(s)
var_filter_symbol_id <- "filter_symbol_id_example" # character | Comma or semicolon delimited parts of symbol identifier used to filter the response. (Optional)
var_limit_levels <- 56 # integer | The maximum number of levels to include in the response. (Optional)

api_instance <- OrderBookL3Api$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1Orderbooks3CurrentGet(filter_symbol_id = var_filter_symbol_id, limit_levels = var_limit_levelsdata_file = "result.txt")
result <- api_instance$V1Orderbooks3CurrentGet(filter_symbol_id = var_filter_symbol_id, limit_levels = var_limit_levels)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_symbol_id** | **character**| Comma or semicolon delimited parts of symbol identifier used to filter the response. | [optional] 
 **limit_levels** | **integer**| The maximum number of levels to include in the response. | [optional] 

### Return type

[**array[V1OrderBookBase]**](v1.OrderBookBase.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1Orderbooks3SymbolIdCurrentGet**
> V1OrderBookBase V1Orderbooks3SymbolIdCurrentGet(symbol_id, limit_levels = var.limit_levels)

Current order book by symbol_id

Retrieves the current order book for the specified symbol.

### Example
```R
library(openapi)

# Current order book by symbol_id
#
# prepare function argument(s)
var_symbol_id <- "symbol_id_example" # character | The symbol ID (from the Metadata -> Symbols)
var_limit_levels <- 56 # integer | The maximum number of levels to include in the response. (Optional)

api_instance <- OrderBookL3Api$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1Orderbooks3SymbolIdCurrentGet(var_symbol_id, limit_levels = var_limit_levelsdata_file = "result.txt")
result <- api_instance$V1Orderbooks3SymbolIdCurrentGet(var_symbol_id, limit_levels = var_limit_levels)
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

