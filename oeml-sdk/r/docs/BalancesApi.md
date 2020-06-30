# BalancesApi

All URIs are relative to *http://localhost:3001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1BalancesGet**](BalancesApi.md#V1BalancesGet) | **GET** /v1/balances | Get balances


# **V1BalancesGet**
> array[Balance] V1BalancesGet(exchange.id=var.exchange.id)

Get balances

Returns all of your balances, including available balance.

### Example
```R
library(openapi)

var.exchange.id <- 'KRAKEN' # character | Exchange name

#Get balances
api.instance <- BalancesApi$new()
result <- api.instance$V1BalancesGet(exchange.id=var.exchange.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange.id** | **character**| Exchange name | [optional] 

### Return type

[**array[Balance]**](balance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Result |  -  |

