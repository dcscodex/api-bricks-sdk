# OptionsApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1OptionsExchangeIdCurrentGet**](OptionsApi.md#V1OptionsExchangeIdCurrentGet) | **GET** /v1/options/{exchange_id}/current | Current data by Exchange


# **V1OptionsExchangeIdCurrentGet**
> array[OptionsOptionExchangeGroup] V1OptionsExchangeIdCurrentGet(exchange_id)

Current data by Exchange

Get current options data for a specific exchange.  Returns option data grouped by underlying asset, quote currency, and expiration time, with quotes for both calls and puts at each strike price.

### Example
```R
library(openapi)

# Current data by Exchange
#
# prepare function argument(s)
var_exchange_id <- "exchange_id_example" # character | Exchange identifier (from the Metadata -> Exchanges)

api_instance <- OptionsApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1OptionsExchangeIdCurrentGet(var_exchange_iddata_file = "result.txt")
result <- api_instance$V1OptionsExchangeIdCurrentGet(var_exchange_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **character**| Exchange identifier (from the Metadata -&gt; Exchanges) | 

### Return type

[**array[OptionsOptionExchangeGroup]**](Options.OptionExchangeGroup.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

