# ExchangeRatesApi

All URIs are relative to *https://api-realtime.exrates.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetSpecificRate**](ExchangeRatesApi.md#GetSpecificRate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
[**V1ExchangerateAssetIdBaseGet**](ExchangeRatesApi.md#V1ExchangerateAssetIdBaseGet) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates


# **GetSpecificRate**
> V1ExchangeRate GetSpecificRate(asset_id_base, asset_id_quote)

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

api_instance <- ExchangeRatesApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSpecificRate(var_asset_id_base, var_asset_id_quotedata_file = "result.txt")
result <- api_instance$GetSpecificRate(var_asset_id_base, var_asset_id_quote)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id_base** | **character**| Requested exchange rate base asset identifier (from the Metadata -&gt; Assets) | 
 **asset_id_quote** | **character**| Requested exchange rate quote asset identifier (from the Metadata -&gt; Assets) | 

### Return type

[**V1ExchangeRate**](v1.ExchangeRate.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1ExchangerateAssetIdBaseGet**
> V1ExchangeRates V1ExchangerateAssetIdBaseGet(asset_id_base, filter_asset_id = var.filter_asset_id, invert = FALSE)

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

api_instance <- ExchangeRatesApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["X-CoinAPI-Key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ExchangerateAssetIdBaseGet(var_asset_id_base, filter_asset_id = var_filter_asset_id, invert = var_invertdata_file = "result.txt")
result <- api_instance$V1ExchangerateAssetIdBaseGet(var_asset_id_base, filter_asset_id = var_filter_asset_id, invert = var_invert)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id_base** | **character**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | 
 **filter_asset_id** | **character**| Comma or semicolon delimited asset identifiers used to filter response (optional) | [optional] 
 **invert** | **character**| True will invert all the rates (optional, if true then rates will be calculated as &#x60;rate &#x3D; 1 / actual_rate&#x60; eg. &#x60;USD/BTC&#x60; as &#x60;BTC/USD&#x60;) | [optional] [default to FALSE]

### Return type

[**V1ExchangeRates**](v1.ExchangeRates.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

