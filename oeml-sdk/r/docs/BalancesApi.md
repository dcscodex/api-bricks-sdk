# BalancesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1BalancesGet**](BalancesApi.md#V1BalancesGet) | **GET** /v1/balances | Get balances


# **V1BalancesGet**
> array[Balance] V1BalancesGet(exchange.id=var.exchange.id)

Get balances

Get current currency balance from all or single exchange.

### Example
```R
library(openapi)

var.exchange.id <- 'KRAKEN' # character | Filter the balances to the specific exchange.

#Get balances
api.instance <- BalancesApi$new()
result <- api.instance$V1BalancesGet(exchange.id=var.exchange.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange.id** | **character**| Filter the balances to the specific exchange. | [optional] 

### Return type

[**array[Balance]**](Balance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Collection of balances. |  -  |
| **490** | Exchange is unreachable. |  -  |

