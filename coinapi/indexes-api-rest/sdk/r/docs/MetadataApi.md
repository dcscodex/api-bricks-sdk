# MetadataApi

All URIs are relative to *https://rest-api.indexes.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiMetadataExchangesExchangeIdGet**](MetadataApi.md#ApiMetadataExchangesExchangeIdGet) | **GET** /api/metadata/exchanges/{exchange_id} | List all exchanges by exchange_id
[**ApiMetadataExchangesGet**](MetadataApi.md#ApiMetadataExchangesGet) | **GET** /api/metadata/exchanges | List all exchanges


# **ApiMetadataExchangesExchangeIdGet**
> array[MetadataExchange] ApiMetadataExchangesExchangeIdGet(exchange_id)

List all exchanges by exchange_id

### Example
```R
library(openapi)

# List all exchanges by exchange_id
#
# prepare function argument(s)
var_exchange_id <- "exchange_id_example" # character | The ID of the exchange.

api_instance <- MetadataApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: JWT
# api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ApiMetadataExchangesExchangeIdGet(var_exchange_iddata_file = "result.txt")
result <- api_instance$ApiMetadataExchangesExchangeIdGet(var_exchange_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **character**| The ID of the exchange. | 

### Return type

[**array[MetadataExchange]**](Metadata.Exchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **ApiMetadataExchangesGet**
> array[MetadataExchange] ApiMetadataExchangesGet(filter_exchange_id = var.filter_exchange_id)

List all exchanges

Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::

### Example
```R
library(openapi)

# List all exchanges
#
# prepare function argument(s)
var_filter_exchange_id <- "filter_exchange_id_example" # character | Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`) (Optional)

api_instance <- MetadataApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: JWT
# api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ApiMetadataExchangesGet(filter_exchange_id = var_filter_exchange_iddata_file = "result.txt")
result <- api_instance$ApiMetadataExchangesGet(filter_exchange_id = var_filter_exchange_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_exchange_id** | **character**| Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) | [optional] 

### Return type

[**array[MetadataExchange]**](Metadata.Exchange.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

