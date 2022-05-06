# EndpointsApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Endpoints**](EndpointsApi.md#Endpoints) | **GET** /v1/endpoints | Get API endpoints


# **Endpoints**
> array[AccountEndpoint] Endpoints(filter.exchange.id=var.filter.exchange.id)

Get API endpoints

Get all API endpoints that the EMS API expose for your subscription.

### Example
```R
library(openapi)

var.filter.exchange.id <- list("inner_example") # array[character] | Exchange id

#Get API endpoints
api.instance <- EndpointsApi$new()
# Configure API key authorization: APIKeyHeader
api.instance$apiClient$apiKeys['X-CoinAPI-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: APIKeyQueryParam
api.instance$apiClient$apiKeys['apikey'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$Endpoints(filter.exchange.id=var.filter.exchange.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter.exchange.id** | list( **character** )| Exchange id | [optional] 

### Return type

[**array[AccountEndpoint]**](AccountEndpoint.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

