# ExternalMetricsApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1ExternalmetricsAssetHistoryGet**](ExternalMetricsApi.md#V1ExternalmetricsAssetHistoryGet) | **GET** /v1/externalmetrics/asset/history | Historical metrics for the asset from external sources
[**V1ExternalmetricsAssetListingGet**](ExternalMetricsApi.md#V1ExternalmetricsAssetListingGet) | **GET** /v1/externalmetrics/asset/listing | Listing of metrics available for specific asset
[**V1ExternalmetricsAssetsGet**](ExternalMetricsApi.md#V1ExternalmetricsAssetsGet) | **GET** /v1/externalmetrics/assets | Listing of all supported external assets
[**V1ExternalmetricsChainHistoryGet**](ExternalMetricsApi.md#V1ExternalmetricsChainHistoryGet) | **GET** /v1/externalmetrics/chain/history | Historical metrics for the chain from external sources
[**V1ExternalmetricsChainListingGet**](ExternalMetricsApi.md#V1ExternalmetricsChainListingGet) | **GET** /v1/externalmetrics/chain/listing | Listing of metrics available for specific chain
[**V1ExternalmetricsChainsGet**](ExternalMetricsApi.md#V1ExternalmetricsChainsGet) | **GET** /v1/externalmetrics/chains | Listing of all supported external chains
[**V1ExternalmetricsExchangeHistoryGet**](ExternalMetricsApi.md#V1ExternalmetricsExchangeHistoryGet) | **GET** /v1/externalmetrics/exchange/history | Historical metrics for the exchange from both external and internal sources
[**V1ExternalmetricsExchangeListingGet**](ExternalMetricsApi.md#V1ExternalmetricsExchangeListingGet) | **GET** /v1/externalmetrics/exchange/listing | Listing of metrics available for specific exchange (both external and generic)
[**V1ExternalmetricsExchangesGet**](ExternalMetricsApi.md#V1ExternalmetricsExchangesGet) | **GET** /v1/externalmetrics/exchanges | Listing of all supported external exchanges
[**V1ExternalmetricsListingGet**](ExternalMetricsApi.md#V1ExternalmetricsListingGet) | **GET** /v1/externalmetrics/listing | Listing of all supported metrics (both external and generic)


# **V1ExternalmetricsAssetHistoryGet**
> array[object] V1ExternalmetricsAssetHistoryGet(metric_id, asset_id, time_start = var.time_start, time_end = var.time_end, time_format = var.time_format, period_id = var.period_id, limit = 100)

Historical metrics for the asset from external sources

Get asset metrics history from external data providers. Data is typically aggregated daily.

### Example
```R
library(openapi)

# Historical metrics for the asset from external sources
#
# prepare function argument(s)
var_metric_id <- "metric_id_example" # character | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key)
var_asset_id <- "asset_id_example" # character | Asset identifier (e.g., `USDC`, `USDT` - from supported assets list)
var_time_start <- "time_start_example" # character | Starting time in ISO 8601 (Optional)
var_time_end <- "time_end_example" # character | Ending time in ISO 8601 (Optional)
var_time_format <- "time_format_example" # character | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (Optional)
var_period_id <- "period_id_example" # character | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` (Optional)
var_limit <- 100 # integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (Optional)

api_instance <- ExternalMetricsApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ExternalmetricsAssetHistoryGet(var_metric_id, var_asset_id, time_start = var_time_start, time_end = var_time_end, time_format = var_time_format, period_id = var_period_id, limit = var_limitdata_file = "result.txt")
result <- api_instance$V1ExternalmetricsAssetHistoryGet(var_metric_id, var_asset_id, time_start = var_time_start, time_end = var_time_end, time_format = var_time_format, period_id = var_period_id, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **character**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60; - internal metric key) | 
 **asset_id** | **character**| Asset identifier (e.g., &#x60;USDC&#x60;, &#x60;USDT&#x60; - from supported assets list) | 
 **time_start** | **character**| Starting time in ISO 8601 | [optional] 
 **time_end** | **character**| Ending time in ISO 8601 | [optional] 
 **time_format** | **character**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **period_id** | **character**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] 
 **limit** | **integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**array[object]**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **400** | Invalid input, e.g., missing required parameters, invalid asset_id. |  -  |
| **500** | Internal server error. |  -  |

# **V1ExternalmetricsAssetListingGet**
> array[V1MetricInfo] V1ExternalmetricsAssetListingGet(asset_id)

Listing of metrics available for specific asset

Get all metrics that are actually available for the specified asset from external providers.

### Example
```R
library(openapi)

# Listing of metrics available for specific asset
#
# prepare function argument(s)
var_asset_id <- "asset_id_example" # character | Asset identifier (e.g., USDC, USDT)

api_instance <- ExternalMetricsApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ExternalmetricsAssetListingGet(var_asset_iddata_file = "result.txt")
result <- api_instance$V1ExternalmetricsAssetListingGet(var_asset_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **character**| Asset identifier (e.g., USDC, USDT) | 

### Return type

[**array[V1MetricInfo]**](v1.MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1ExternalmetricsAssetsGet**
> array[V1ExternalAsset] V1ExternalmetricsAssetsGet()

Listing of all supported external assets

Get all assets (primarily stablecoins) supported by external data providers.

### Example
```R
library(openapi)

# Listing of all supported external assets
#

api_instance <- ExternalMetricsApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ExternalmetricsAssetsGet(data_file = "result.txt")
result <- api_instance$V1ExternalmetricsAssetsGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[V1ExternalAsset]**](v1.ExternalAsset.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1ExternalmetricsChainHistoryGet**
> array[object] V1ExternalmetricsChainHistoryGet(metric_id, chain_id, time_start = var.time_start, time_end = var.time_end, time_format = var.time_format, period_id = var.period_id, limit = 100)

Historical metrics for the chain from external sources

Get chain metrics history from external data providers. Data is typically aggregated daily.

### Example
```R
library(openapi)

# Historical metrics for the chain from external sources
#
# prepare function argument(s)
var_metric_id <- "metric_id_example" # character | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key)
var_chain_id <- "chain_id_example" # character | Chain identifier (e.g., `Ethereum`, `Arbitrum` - from supported chains list)
var_time_start <- "time_start_example" # character | Starting time in ISO 8601 (Optional)
var_time_end <- "time_end_example" # character | Ending time in ISO 8601 (Optional)
var_time_format <- "time_format_example" # character | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (Optional)
var_period_id <- "period_id_example" # character | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` (Optional)
var_limit <- 100 # integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (Optional)

api_instance <- ExternalMetricsApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ExternalmetricsChainHistoryGet(var_metric_id, var_chain_id, time_start = var_time_start, time_end = var_time_end, time_format = var_time_format, period_id = var_period_id, limit = var_limitdata_file = "result.txt")
result <- api_instance$V1ExternalmetricsChainHistoryGet(var_metric_id, var_chain_id, time_start = var_time_start, time_end = var_time_end, time_format = var_time_format, period_id = var_period_id, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **character**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60; - internal metric key) | 
 **chain_id** | **character**| Chain identifier (e.g., &#x60;Ethereum&#x60;, &#x60;Arbitrum&#x60; - from supported chains list) | 
 **time_start** | **character**| Starting time in ISO 8601 | [optional] 
 **time_end** | **character**| Ending time in ISO 8601 | [optional] 
 **time_format** | **character**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **period_id** | **character**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] 
 **limit** | **integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**array[object]**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **400** | Invalid input, e.g., missing required parameters, invalid chain_id. |  -  |
| **500** | Internal server error. |  -  |

# **V1ExternalmetricsChainListingGet**
> array[V1MetricInfo] V1ExternalmetricsChainListingGet(chain_id)

Listing of metrics available for specific chain

Get all metrics that are actually available for the specified blockchain chain from external providers.

### Example
```R
library(openapi)

# Listing of metrics available for specific chain
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | Chain identifier (e.g., ETHEREUM, ARBITRUM)

api_instance <- ExternalMetricsApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ExternalmetricsChainListingGet(var_chain_iddata_file = "result.txt")
result <- api_instance$V1ExternalmetricsChainListingGet(var_chain_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| Chain identifier (e.g., ETHEREUM, ARBITRUM) | 

### Return type

[**array[V1MetricInfo]**](v1.MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1ExternalmetricsChainsGet**
> array[V1Chain] V1ExternalmetricsChainsGet()

Listing of all supported external chains

Get all blockchain chains supported by external data providers.

### Example
```R
library(openapi)

# Listing of all supported external chains
#

api_instance <- ExternalMetricsApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ExternalmetricsChainsGet(data_file = "result.txt")
result <- api_instance$V1ExternalmetricsChainsGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[V1Chain]**](v1.Chain.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1ExternalmetricsExchangeHistoryGet**
> array[object] V1ExternalmetricsExchangeHistoryGet(metric_id, exchange_id, time_start = var.time_start, time_end = var.time_end, time_format = var.time_format, period_id = var.period_id, limit = 100)

Historical metrics for the exchange from both external and internal sources

Get exchange metrics history from external data providers or internal sources based on metric type.

### Example
```R
library(openapi)

# Historical metrics for the exchange from both external and internal sources
#
# prepare function argument(s)
var_metric_id <- "metric_id_example" # character | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` for external, or generic metric IDs)
var_exchange_id <- "exchange_id_example" # character | Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`)
var_time_start <- "time_start_example" # character | Starting time in ISO 8601 (Optional)
var_time_end <- "time_end_example" # character | Ending time in ISO 8601 (Optional)
var_time_format <- "time_format_example" # character | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (Optional)
var_period_id <- "period_id_example" # character | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN` (Optional)
var_limit <- 100 # integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (Optional)

api_instance <- ExternalMetricsApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ExternalmetricsExchangeHistoryGet(var_metric_id, var_exchange_id, time_start = var_time_start, time_end = var_time_end, time_format = var_time_format, period_id = var_period_id, limit = var_limitdata_file = "result.txt")
result <- api_instance$V1ExternalmetricsExchangeHistoryGet(var_metric_id, var_exchange_id, time_start = var_time_start, time_end = var_time_end, time_format = var_time_format, period_id = var_period_id, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **character**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60; for external, or generic metric IDs) | 
 **exchange_id** | **character**| Exchange identifier (e.g., &#x60;BINANCE&#x60;, &#x60;UNISWAP-V3-ETHEREUM&#x60;) | 
 **time_start** | **character**| Starting time in ISO 8601 | [optional] 
 **time_end** | **character**| Ending time in ISO 8601 | [optional] 
 **time_format** | **character**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **period_id** | **character**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] 
 **limit** | **integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

**array[object]**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **400** | Invalid input, e.g., missing required parameters, invalid exchange_id mapping. |  -  |
| **500** | Internal server error. |  -  |

# **V1ExternalmetricsExchangeListingGet**
> array[V1MetricInfo] V1ExternalmetricsExchangeListingGet(exchange_id)

Listing of metrics available for specific exchange (both external and generic)

Get all metrics that are actually available for the specified exchange from both external providers and internal sources.

### Example
```R
library(openapi)

# Listing of metrics available for specific exchange (both external and generic)
#
# prepare function argument(s)
var_exchange_id <- "exchange_id_example" # character | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)

api_instance <- ExternalMetricsApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ExternalmetricsExchangeListingGet(var_exchange_iddata_file = "result.txt")
result <- api_instance$V1ExternalmetricsExchangeListingGet(var_exchange_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **character**| Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) | 

### Return type

[**array[V1MetricInfo]**](v1.MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1ExternalmetricsExchangesGet**
> array[V1ExternalExchange] V1ExternalmetricsExchangesGet()

Listing of all supported external exchanges

Get all exchanges that have mapping to external data providers for metrics that actually have sources.  Only returns exchanges that are properly mapped to external protocols for metrics with defined sources.

### Example
```R
library(openapi)

# Listing of all supported external exchanges
#

api_instance <- ExternalMetricsApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ExternalmetricsExchangesGet(data_file = "result.txt")
result <- api_instance$V1ExternalmetricsExchangesGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[V1ExternalExchange]**](v1.ExternalExchange.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1ExternalmetricsListingGet**
> array[V1MetricInfo] V1ExternalmetricsListingGet()

Listing of all supported metrics (both external and generic)

Get all metrics available from external data providers and internal generic metrics.  External metrics have detailed descriptions, while generic metrics are marked as such.

### Example
```R
library(openapi)

# Listing of all supported metrics (both external and generic)
#

api_instance <- ExternalMetricsApi$new()
# Configure API key authorization: ApiKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ExternalmetricsListingGet(data_file = "result.txt")
result <- api_instance$V1ExternalmetricsListingGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[V1MetricInfo]**](v1.MetricInfo.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

