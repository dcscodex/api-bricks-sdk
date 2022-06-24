# PositionsApi

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1PositionsGet**](PositionsApi.md#V1PositionsGet) | **GET** /v1/positions | Get open positions


# **V1PositionsGet**
> array[Position] V1PositionsGet(exchange_id=var.exchange_id)

Get open positions

Get current open positions across all or single exchange.

### Example
```R
library(openapi)

var.exchange_id <- 'KRAKEN' # character | Filter the balances to the specific exchange.

#Get open positions
api.instance <- PositionsApi$new()
result <- api.instance$V1PositionsGet(exchange_id=var.exchange_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **character**| Filter the balances to the specific exchange. | [optional] 

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

