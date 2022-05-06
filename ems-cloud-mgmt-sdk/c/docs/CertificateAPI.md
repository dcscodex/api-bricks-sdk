# CertificateAPI

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CertificateAPI_certificate**](CertificateAPI.md#CertificateAPI_certificate) | **GET** /v1/certificate/pem | Get authentication certificate


# **CertificateAPI_certificate**
```c
// Get authentication certificate
//
// Providing PEM file with the Private Key, Public Key and the Certificate to authenticate to the EMS API.
//
char* CertificateAPI_certificate(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

char*



### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

