# MetadataApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1ExchangesGet**](MetadataApi.md#V1ExchangesGet) | **GET** /v1/exchanges | List of exchanges
[**V1SymbolsExchangeIdGet**](MetadataApi.md#V1SymbolsExchangeIdGet) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange


# **V1ExchangesGet**
> array[FinFeedAPIExchangeModel] V1ExchangesGet()

List of exchanges

### Example
```R
library(openapi)

# List of exchanges
#

api_instance <- MetadataApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1ExchangesGet(data_file = "result.txt")
result <- api_instance$V1ExchangesGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[FinFeedAPIExchangeModel]**](FinFeedAPI.ExchangeModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1SymbolsExchangeIdGet**
> array[FinFeedAPISymbolModel] V1SymbolsExchangeIdGet(exchange_id)

List of symbols for the exchange

### Example
```R
library(openapi)

# List of symbols for the exchange
#
# prepare function argument(s)
var_exchange_id <- "exchange_id_example" # character | 

api_instance <- MetadataApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1SymbolsExchangeIdGet(var_exchange_iddata_file = "result.txt")
result <- api_instance$V1SymbolsExchangeIdGet(var_exchange_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **character**|  | 

### Return type

[**array[FinFeedAPISymbolModel]**](FinFeedAPI.SymbolModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

