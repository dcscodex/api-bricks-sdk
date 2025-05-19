# ExchangeRatesApi

All URIs are relative to *https://api-historical.fx.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetSpecificRate**](ExchangeRatesApi.md#GetSpecificRate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
[**V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet**](ExchangeRatesApi.md#V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote}/history | Timeseries data
[**V1ExchangerateAssetIdBaseGet**](ExchangeRatesApi.md#V1ExchangerateAssetIdBaseGet) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates
[**V1ExchangerateHistoryPeriodsGet**](ExchangeRatesApi.md#V1ExchangerateHistoryPeriodsGet) | **GET** /v1/exchangerate/history/periods | Timeseries periods


# **GetSpecificRate**
> V1ExchangeRate GetSpecificRate(asset_id_base, asset_id_quote, time = var.time)

Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::

### Example
```R
library(openapi)

# Get specific rate
#
# prepare function argument(s)
var_asset_id_base <- "asset_id_base_example" # character | Requested exchange rate base asset identifier (from the Metadata -> Assets)
var_asset_id_quote <- "asset_id_quote_example" # character | Requested exchange rate quote asset identifier (from the Metadata -> Assets)
var_time <- "time_example" # character | Time at which exchange rate is calculated (optional, if not supplied then current rate is returned) (Optional)

api_instance <- ExchangeRatesApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSpecificRate(var_asset_id_base, var_asset_id_quote, time = var_timedata_file = "result.txt")
result <- api_instance$GetSpecificRate(var_asset_id_base, var_asset_id_quote, time = var_time)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id_base** | **character**| Requested exchange rate base asset identifier (from the Metadata -&gt; Assets) | 
 **asset_id_quote** | **character**| Requested exchange rate quote asset identifier (from the Metadata -&gt; Assets) | 
 **time** | **character**| Time at which exchange rate is calculated (optional, if not supplied then current rate is returned) | [optional] 

### Return type

[**V1ExchangeRate**](v1.ExchangeRate.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet**
> array[V1ExchangeRatesTimeseriesItem] V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet(asset_id_base, asset_id_quote, period_id = var.period_id, time_start = var.time_start, time_end = var.time_end, limit = 100)

Timeseries data

Get the historical exchange rates between two assets in the form of the timeseries.

### Example
```R
library(openapi)

# Timeseries data
#
# prepare function argument(s)
var_asset_id_base <- "asset_id_base_example" # character | Requested exchange rates base asset identifier (from the Metadata -> Assets)
var_asset_id_quote <- "asset_id_quote_example" # character | Requested exchange rates base asset identifier (from the Metadata -> Assets)
var_period_id <- "period_id_example" # character | Identifier of requested timeseries period (required, e.g. `5SEC` or `1HRS`) (Optional)
var_time_start <- "time_start_example" # character | Timeseries starting time in ISO 8601 (required) (Optional)
var_time_end <- "time_end_example" # character | Timeseries ending time in ISO 8601 (required) (Optional)
var_limit <- 100 # integer | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (Optional)

api_instance <- ExchangeRatesApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet(var_asset_id_base, var_asset_id_quote, period_id = var_period_id, time_start = var_time_start, time_end = var_time_end, limit = var_limitdata_file = "result.txt")
result <- api_instance$V1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet(var_asset_id_base, var_asset_id_quote, period_id = var_period_id, time_start = var_time_start, time_end = var_time_end, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id_base** | **character**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | 
 **asset_id_quote** | **character**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | 
 **period_id** | **character**| Identifier of requested timeseries period (required, e.g. &#x60;5SEC&#x60; or &#x60;1HRS&#x60;) | [optional] 
 **time_start** | **character**| Timeseries starting time in ISO 8601 (required) | [optional] 
 **time_end** | **character**| Timeseries ending time in ISO 8601 (required) | [optional] 
 **limit** | **integer**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**array[V1ExchangeRatesTimeseriesItem]**](v1.ExchangeRatesTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1ExchangerateAssetIdBaseGet**
> V1ExchangeRates V1ExchangerateAssetIdBaseGet(asset_id_base, filter_asset_id = var.filter_asset_id, invert = FALSE, time = var.time)

Get all current rates

Get the current exchange rate between requested asset and all other assets.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::                :::info  You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC);  :::

### Example
```R
library(openapi)

# Get all current rates
#
# prepare function argument(s)
var_asset_id_base <- "asset_id_base_example" # character | Requested exchange rates base asset identifier (from the Metadata -> Assets)
var_filter_asset_id <- "filter_asset_id_example" # character | Comma or semicolon delimited asset identifiers used to filter response (optional) (Optional)
var_invert <- FALSE # character | True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`) (Optional)
var_time <- "time_example" # character | Time for historical rates (optional) (Optional)

api_instance <- ExchangeRatesApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ExchangerateAssetIdBaseGet(var_asset_id_base, filter_asset_id = var_filter_asset_id, invert = var_invert, time = var_timedata_file = "result.txt")
result <- api_instance$V1ExchangerateAssetIdBaseGet(var_asset_id_base, filter_asset_id = var_filter_asset_id, invert = var_invert, time = var_time)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id_base** | **character**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | 
 **filter_asset_id** | **character**| Comma or semicolon delimited asset identifiers used to filter response (optional) | [optional] 
 **invert** | **character**| True will invert all the rates (optional, if true then rates will be calculated as &#x60;rate &#x3D; 1 / actual_rate&#x60; eg. &#x60;USD/BTC&#x60; as &#x60;BTC/USD&#x60;) | [optional] [default to FALSE]
 **time** | **character**| Time for historical rates (optional) | [optional] 

### Return type

[**V1ExchangeRates**](v1.ExchangeRates.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1ExchangerateHistoryPeriodsGet**
> array[V1TimeseriesPeriod] V1ExchangerateHistoryPeriodsGet()

Timeseries periods

You can also obtain historical exchange rates of any asset pair, grouped into time periods.  Get full list of supported time periods available for requesting exchange rates historical timeseries data.                ## Timeseries periods  Time unit | Period identifiers  --- | ---  Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC  Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN  Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS  Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY

### Example
```R
library(openapi)

# Timeseries periods
#

api_instance <- ExchangeRatesApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ExchangerateHistoryPeriodsGet(data_file = "result.txt")
result <- api_instance$V1ExchangerateHistoryPeriodsGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[V1TimeseriesPeriod]**](v1.TimeseriesPeriod.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

