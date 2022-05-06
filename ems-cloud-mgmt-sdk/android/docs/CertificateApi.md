# CertificateApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**certificate**](CertificateApi.md#certificate) | **GET** /v1/certificate/pem | Get authentication certificate



## certificate

> String certificate()

Get authentication certificate

Providing PEM file with the Private Key, Public Key and the Certificate to authenticate to the EMS API.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CertificateApi;

CertificateApi apiInstance = new CertificateApi();
try {
    String result = apiInstance.certificate();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CertificateApi#certificate");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain

