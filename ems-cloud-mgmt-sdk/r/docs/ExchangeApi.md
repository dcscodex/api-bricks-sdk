# ExchangeApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExchangeLoginRequire**](ExchangeApi.md#ExchangeLoginRequire) | **GET** /v1/exchanges | Get exchange configuration


# **ExchangeLoginRequire**
> array[ExchangeLoginRequire] ExchangeLoginRequire()

Get exchange configuration

Get information about the required parameters or server site location of the exchanges supported in the EMS API.

### Example
```R
library(openapi)


#Get exchange configuration
api.instance <- ExchangeApi$new()
# Configure API key authorization: APIKeyHeader
api.instance$apiClient$apiKeys['X-CoinAPI-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: APIKeyQueryParam
api.instance$apiClient$apiKeys['apikey'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ExchangeLoginRequire()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[ExchangeLoginRequire]**](ExchangeLoginRequire.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

