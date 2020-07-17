# PositionsApi

All URIs are relative to *https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1PositionsGet**](PositionsApi.md#V1PositionsGet) | **GET** /v1/positions | Get open positions


# **V1PositionsGet**
> array[Position] V1PositionsGet(exchange.id=var.exchange.id)

Get open positions

Get current open positions across all or single exchange.

### Example
```R
library(openapi)

var.exchange.id <- 'KRAKEN' # character | Filter the balances to the specific exchange.

#Get open positions
api.instance <- PositionsApi$new()
result <- api.instance$V1PositionsGet(exchange.id=var.exchange.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange.id** | **character**| Filter the balances to the specific exchange. | [optional] 

### Return type

[**array[Position]**](Position.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Collection of positons. |  -  |
| **490** | Exchange is unreachable. |  -  |

