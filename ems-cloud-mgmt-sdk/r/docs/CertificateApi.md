# CertificateApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Certificate**](CertificateApi.md#Certificate) | **GET** /v1/certificate/pem | Get authentication certificate


# **Certificate**
> character Certificate()

Get authentication certificate

Providing PEM file with the Private Key, Public Key and the Certificate to authenticate to the EMS API.

### Example
```R
library(openapi)


#Get authentication certificate
api.instance <- CertificateApi$new()
# Configure API key authorization: APIKeyHeader
api.instance$apiClient$apiKeys['X-CoinAPI-Key'] <- 'TODO_YOUR_API_KEY';
# Configure API key authorization: APIKeyQueryParam
api.instance$apiClient$apiKeys['apikey'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$Certificate()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**character**

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

