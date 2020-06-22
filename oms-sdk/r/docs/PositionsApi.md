# PositionsApi

All URIs are relative to *http://localhost:3001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1PositionsGet**](PositionsApi.md#V1PositionsGet) | **GET** /v1/positions | Get positions


# **V1PositionsGet**
> array[Position] V1PositionsGet(exchange.id=var.exchange.id)

Get positions

Returns all of your positions.

### Example
```R
library(openapi)

var.exchange.id <- 'KRAKEN' # character | Exchange name

#Get positions
api.instance <- PositionsApi$new()
result <- api.instance$V1PositionsGet(exchange.id=var.exchange.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange.id** | **character**| Exchange name | [optional] 

### Return type

[**array[Position]**](position.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Result |  -  |

