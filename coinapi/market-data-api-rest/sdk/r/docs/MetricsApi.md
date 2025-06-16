# MetricsApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1MetricsAssetCurrentGet**](MetricsApi.md#V1MetricsAssetCurrentGet) | **GET** /v1/metrics/asset/current | Current metrics for given asset
[**V1MetricsAssetHistoryGet**](MetricsApi.md#V1MetricsAssetHistoryGet) | **GET** /v1/metrics/asset/history | Historical metrics for asset
[**V1MetricsAssetListingGet**](MetricsApi.md#V1MetricsAssetListingGet) | **GET** /v1/metrics/asset/listing | Listing of all supported metrics for asset
[**V1MetricsExchangeCurrentGet**](MetricsApi.md#V1MetricsExchangeCurrentGet) | **GET** /v1/metrics/exchange/current | Current metrics for given exchange
[**V1MetricsExchangeHistoryGet**](MetricsApi.md#V1MetricsExchangeHistoryGet) | **GET** /v1/metrics/exchange/history | Historical metrics for the exchange
[**V1MetricsExchangeListingGet**](MetricsApi.md#V1MetricsExchangeListingGet) | **GET** /v1/metrics/exchange/listing | Listing of all supported exchange metrics
[**V1MetricsListingGet**](MetricsApi.md#V1MetricsListingGet) | **GET** /v1/metrics/listing | Listing of all supported metrics by CoinAPI
[**V1MetricsSymbolCurrentGet**](MetricsApi.md#V1MetricsSymbolCurrentGet) | **GET** /v1/metrics/symbol/current | Current metrics for given symbol
[**V1MetricsSymbolHistoryGet**](MetricsApi.md#V1MetricsSymbolHistoryGet) | **GET** /v1/metrics/symbol/history | Historical metrics for symbol
[**V1MetricsSymbolListingGet**](MetricsApi.md#V1MetricsSymbolListingGet) | **GET** /v1/metrics/symbol/listing | Listing of all supported metrics for symbol


# **V1MetricsAssetCurrentGet**
> array[V1GeneralData] V1MetricsAssetCurrentGet(metric_id = var.metric_id, asset_id = var.asset_id, asset_id_external = var.asset_id_external, exchange_id = var.exchange_id)

Current metrics for given asset

Get current asset metrics.

### Example
```R
library(openapi)

# Current metrics for given asset
#
# prepare function argument(s)
var_metric_id <- "metric_id_example" # character | Metric identifier (from the Metrics -> Listing) (Optional)
var_asset_id <- "asset_id_example" # character | Asset identifier (from the Metadata -> Assets) (Optional)
var_asset_id_external <- "asset_id_external_example" # character | Exchange asset identifier (Optional)
var_exchange_id <- "exchange_id_example" # character | Exchange identifier (from the Metadata -> Exchanges) (Optional)

api_instance <- MetricsApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1MetricsAssetCurrentGet(metric_id = var_metric_id, asset_id = var_asset_id, asset_id_external = var_asset_id_external, exchange_id = var_exchange_iddata_file = "result.txt")
result <- api_instance$V1MetricsAssetCurrentGet(metric_id = var_metric_id, asset_id = var_asset_id, asset_id_external = var_asset_id_external, exchange_id = var_exchange_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **character**| Metric identifier (from the Metrics -&gt; Listing) | [optional] 
 **asset_id** | **character**| Asset identifier (from the Metadata -&gt; Assets) | [optional] 
 **asset_id_external** | **character**| Exchange asset identifier | [optional] 
 **exchange_id** | **character**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] 

### Return type

[**array[V1GeneralData]**](v1.GeneralData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1MetricsAssetHistoryGet**
> array[V1MetricData] V1MetricsAssetHistoryGet(metric_id, exchange_id, asset_id = var.asset_id, asset_id_external = var.asset_id_external, time_start = var.time_start, time_end = var.time_end, time_format = var.time_format, period_id = var.period_id, limit = 100)

Historical metrics for asset

Get asset metrics history.

### Example
```R
library(openapi)

# Historical metrics for asset
#
# prepare function argument(s)
var_metric_id <- "metric_id_example" # character | Metric identifier (from the Metrics -> Listing)
var_exchange_id <- "exchange_id_example" # character | Exchange identifier (from the Metadata -> Exchanges)
var_asset_id <- "asset_id_example" # character | Asset identifier (from the Metadata -> Assets) (Optional)
var_asset_id_external <- "asset_id_external_example" # character | Exchange asset identifier (Optional)
var_time_start <- "time_start_example" # character | Starting time in ISO 8601 (Optional)
var_time_end <- "time_end_example" # character | Ending time in ISO 8601 (Optional)
var_time_format <- "time_format_example" # character | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (Optional)
var_period_id <- "period_id_example" # character | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC` (Optional)
var_limit <- 100 # integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (Optional)

api_instance <- MetricsApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1MetricsAssetHistoryGet(var_metric_id, var_exchange_id, asset_id = var_asset_id, asset_id_external = var_asset_id_external, time_start = var_time_start, time_end = var_time_end, time_format = var_time_format, period_id = var_period_id, limit = var_limitdata_file = "result.txt")
result <- api_instance$V1MetricsAssetHistoryGet(var_metric_id, var_exchange_id, asset_id = var_asset_id, asset_id_external = var_asset_id_external, time_start = var_time_start, time_end = var_time_end, time_format = var_time_format, period_id = var_period_id, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **character**| Metric identifier (from the Metrics -&gt; Listing) | 
 **exchange_id** | **character**| Exchange identifier (from the Metadata -&gt; Exchanges) | 
 **asset_id** | **character**| Asset identifier (from the Metadata -&gt; Assets) | [optional] 
 **asset_id_external** | **character**| Exchange asset identifier | [optional] 
 **time_start** | **character**| Starting time in ISO 8601 | [optional] 
 **time_end** | **character**| Ending time in ISO 8601 | [optional] 
 **time_format** | **character**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **period_id** | **character**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] 
 **limit** | **integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**array[V1MetricData]**](v1.MetricData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1MetricsAssetListingGet**
> array[V1ListingItem] V1MetricsAssetListingGet(metric_id = var.metric_id, exchange_id = var.exchange_id, chain_id = var.chain_id, network_id = var.network_id, asset_id = var.asset_id, asset_id_external = var.asset_id_external)

Listing of all supported metrics for asset

Get data metrics for asset.

### Example
```R
library(openapi)

# Listing of all supported metrics for asset
#
# prepare function argument(s)
var_metric_id <- "metric_id_example" # character | Metric identifier (from the Metrics -> Listing) (Optional)
var_exchange_id <- "exchange_id_example" # character | Exchange identifier (from the Metadata -> Exchanges) (Optional)
var_chain_id <- "chain_id_example" # character | Chain identifier (Optional)
var_network_id <- "network_id_example" # character | Network identifier (Optional)
var_asset_id <- "asset_id_example" # character | Asset identifier (from the Metadata -> Assets) (Optional)
var_asset_id_external <- "asset_id_external_example" # character | The asset external identifier (Optional)

api_instance <- MetricsApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1MetricsAssetListingGet(metric_id = var_metric_id, exchange_id = var_exchange_id, chain_id = var_chain_id, network_id = var_network_id, asset_id = var_asset_id, asset_id_external = var_asset_id_externaldata_file = "result.txt")
result <- api_instance$V1MetricsAssetListingGet(metric_id = var_metric_id, exchange_id = var_exchange_id, chain_id = var_chain_id, network_id = var_network_id, asset_id = var_asset_id, asset_id_external = var_asset_id_external)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **character**| Metric identifier (from the Metrics -&gt; Listing) | [optional] 
 **exchange_id** | **character**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] 
 **chain_id** | **character**| Chain identifier | [optional] 
 **network_id** | **character**| Network identifier | [optional] 
 **asset_id** | **character**| Asset identifier (from the Metadata -&gt; Assets) | [optional] 
 **asset_id_external** | **character**| The asset external identifier | [optional] 

### Return type

[**array[V1ListingItem]**](v1.ListingItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1MetricsExchangeCurrentGet**
> array[V1GeneralData] V1MetricsExchangeCurrentGet(exchange_id, metric_id = var.metric_id)

Current metrics for given exchange

Get current exchange metrics values.

### Example
```R
library(openapi)

# Current metrics for given exchange
#
# prepare function argument(s)
var_exchange_id <- "exchange_id_example" # character | The exchange identifier (from the Metadata -> Exchanges)
var_metric_id <- "metric_id_example" # character | The metric identifier (from the Metrics -> Listing) (Optional)

api_instance <- MetricsApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1MetricsExchangeCurrentGet(var_exchange_id, metric_id = var_metric_iddata_file = "result.txt")
result <- api_instance$V1MetricsExchangeCurrentGet(var_exchange_id, metric_id = var_metric_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **character**| The exchange identifier (from the Metadata -&gt; Exchanges) | 
 **metric_id** | **character**| The metric identifier (from the Metrics -&gt; Listing) | [optional] 

### Return type

[**array[V1GeneralData]**](v1.GeneralData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1MetricsExchangeHistoryGet**
> array[V1MetricData] V1MetricsExchangeHistoryGet(metric_id, exchange_id, time_start = var.time_start, time_end = var.time_end, time_format = var.time_format, period_id = var.period_id, limit = 100)

Historical metrics for the exchange

Get exchange metrics history.

### Example
```R
library(openapi)

# Historical metrics for the exchange
#
# prepare function argument(s)
var_metric_id <- "metric_id_example" # character | Metric identifier (from the Metrics -> Listing)
var_exchange_id <- "exchange_id_example" # character | Exchange identifier (from the Metadata -> Exchanges)
var_time_start <- "time_start_example" # character | Starting time in ISO 8601 (Optional)
var_time_end <- "time_end_example" # character | Ending time in ISO 8601 (Optional)
var_time_format <- "time_format_example" # character | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (Optional)
var_period_id <- "period_id_example" # character | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC` (Optional)
var_limit <- 100 # integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (Optional)

api_instance <- MetricsApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1MetricsExchangeHistoryGet(var_metric_id, var_exchange_id, time_start = var_time_start, time_end = var_time_end, time_format = var_time_format, period_id = var_period_id, limit = var_limitdata_file = "result.txt")
result <- api_instance$V1MetricsExchangeHistoryGet(var_metric_id, var_exchange_id, time_start = var_time_start, time_end = var_time_end, time_format = var_time_format, period_id = var_period_id, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **character**| Metric identifier (from the Metrics -&gt; Listing) | 
 **exchange_id** | **character**| Exchange identifier (from the Metadata -&gt; Exchanges) | 
 **time_start** | **character**| Starting time in ISO 8601 | [optional] 
 **time_end** | **character**| Ending time in ISO 8601 | [optional] 
 **time_format** | **character**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **period_id** | **character**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] 
 **limit** | **integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**array[V1MetricData]**](v1.MetricData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1MetricsExchangeListingGet**
> array[V1ListingItem] V1MetricsExchangeListingGet(exchange_id, metric_id = var.metric_id)

Listing of all supported exchange metrics

Get data metrics for exchange.

### Example
```R
library(openapi)

# Listing of all supported exchange metrics
#
# prepare function argument(s)
var_exchange_id <- "exchange_id_example" # character | The exchange identifier (from the Metadata -> Exchanges)
var_metric_id <- "metric_id_example" # character | The metric identifier (from the Metrics -> Listing) (Optional)

api_instance <- MetricsApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1MetricsExchangeListingGet(var_exchange_id, metric_id = var_metric_iddata_file = "result.txt")
result <- api_instance$V1MetricsExchangeListingGet(var_exchange_id, metric_id = var_metric_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **character**| The exchange identifier (from the Metadata -&gt; Exchanges) | 
 **metric_id** | **character**| The metric identifier (from the Metrics -&gt; Listing) | [optional] 

### Return type

[**array[V1ListingItem]**](v1.ListingItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1MetricsListingGet**
> array[V1Metric] V1MetricsListingGet()

Listing of all supported metrics by CoinAPI

Get all data metrics.

### Example
```R
library(openapi)

# Listing of all supported metrics by CoinAPI
#

api_instance <- MetricsApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1MetricsListingGet(data_file = "result.txt")
result <- api_instance$V1MetricsListingGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[V1Metric]**](v1.Metric.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1MetricsSymbolCurrentGet**
> array[V1GeneralData] V1MetricsSymbolCurrentGet(metric_id = var.metric_id, symbol_id = var.symbol_id, exchange_id = var.exchange_id)

Current metrics for given symbol

Get current symbol metrics.

### Example
```R
library(openapi)

# Current metrics for given symbol
#
# prepare function argument(s)
var_metric_id <- "metric_id_example" # character | Metric identifier (from the Metrics -> Listing) (Optional)
var_symbol_id <- "symbol_id_example" # character | Symbol identifier (from the Metadata -> Symbols) (Optional)
var_exchange_id <- "exchange_id_example" # character | Exchange id (from the Metadata -> Exchanges) (Optional)

api_instance <- MetricsApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1MetricsSymbolCurrentGet(metric_id = var_metric_id, symbol_id = var_symbol_id, exchange_id = var_exchange_iddata_file = "result.txt")
result <- api_instance$V1MetricsSymbolCurrentGet(metric_id = var_metric_id, symbol_id = var_symbol_id, exchange_id = var_exchange_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **character**| Metric identifier (from the Metrics -&gt; Listing) | [optional] 
 **symbol_id** | **character**| Symbol identifier (from the Metadata -&gt; Symbols) | [optional] 
 **exchange_id** | **character**| Exchange id (from the Metadata -&gt; Exchanges) | [optional] 

### Return type

[**array[V1GeneralData]**](v1.GeneralData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1MetricsSymbolHistoryGet**
> array[V1MetricData] V1MetricsSymbolHistoryGet(metric_id, symbol_id, time_start = var.time_start, time_end = var.time_end, time_format = var.time_format, period_id = var.period_id, limit = 100)

Historical metrics for symbol

Get symbol metrics history.

### Example
```R
library(openapi)

# Historical metrics for symbol
#
# prepare function argument(s)
var_metric_id <- "metric_id_example" # character | Metric identifier (from the Metrics -> Listing)
var_symbol_id <- "symbol_id_example" # character | Symbol identifier (from the Metadata -> Symbols)
var_time_start <- "time_start_example" # character | Starting time in ISO 8601 (Optional)
var_time_end <- "time_end_example" # character | Ending time in ISO 8601 (Optional)
var_time_format <- "time_format_example" # character | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) (Optional)
var_period_id <- "period_id_example" # character | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC` (Optional)
var_limit <- 100 # integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (Optional)

api_instance <- MetricsApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1MetricsSymbolHistoryGet(var_metric_id, var_symbol_id, time_start = var_time_start, time_end = var_time_end, time_format = var_time_format, period_id = var_period_id, limit = var_limitdata_file = "result.txt")
result <- api_instance$V1MetricsSymbolHistoryGet(var_metric_id, var_symbol_id, time_start = var_time_start, time_end = var_time_end, time_format = var_time_format, period_id = var_period_id, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **character**| Metric identifier (from the Metrics -&gt; Listing) | 
 **symbol_id** | **character**| Symbol identifier (from the Metadata -&gt; Symbols) | 
 **time_start** | **character**| Starting time in ISO 8601 | [optional] 
 **time_end** | **character**| Ending time in ISO 8601 | [optional] 
 **time_format** | **character**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] 
 **period_id** | **character**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] 
 **limit** | **integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**array[V1MetricData]**](v1.MetricData.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1MetricsSymbolListingGet**
> array[V1ListingItem] V1MetricsSymbolListingGet(metric_id = var.metric_id, exchange_id = var.exchange_id, symbol_id = var.symbol_id)

Listing of all supported metrics for symbol

Get data metrics for symbol.

### Example
```R
library(openapi)

# Listing of all supported metrics for symbol
#
# prepare function argument(s)
var_metric_id <- "metric_id_example" # character | Metric identifier (from the Metrics -> Listing) (Optional)
var_exchange_id <- "exchange_id_example" # character | Exchange identifier (from the Metadata -> Exchanges) (Optional)
var_symbol_id <- "symbol_id_example" # character | Symbol identifier (from the Metadata -> Symbols) (Optional)

api_instance <- MetricsApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1MetricsSymbolListingGet(metric_id = var_metric_id, exchange_id = var_exchange_id, symbol_id = var_symbol_iddata_file = "result.txt")
result <- api_instance$V1MetricsSymbolListingGet(metric_id = var_metric_id, exchange_id = var_exchange_id, symbol_id = var_symbol_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **character**| Metric identifier (from the Metrics -&gt; Listing) | [optional] 
 **exchange_id** | **character**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] 
 **symbol_id** | **character**| Symbol identifier (from the Metadata -&gt; Symbols) | [optional] 

### Return type

[**array[V1ListingItem]**](v1.ListingItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

