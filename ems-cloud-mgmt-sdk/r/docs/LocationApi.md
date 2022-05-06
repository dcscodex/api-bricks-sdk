# LocationApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Locations**](LocationApi.md#Locations) | **GET** /v1/locations | Get site locations


# **Locations**
> array[Locations] Locations()

Get site locations

This endpoint providing information about the server site locations supported in the EMS API.

### Example
```R
library(openapi)


#Get site locations
api.instance <- LocationApi$new()
# Configure API key authorization: APIKeyHeader
api.instance$apiClient$apiKeys['X-CoinAPI-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: APIKeyQueryParam
api.instance$apiClient$apiKeys['apikey'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$Locations()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[Locations]**](Locations.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

