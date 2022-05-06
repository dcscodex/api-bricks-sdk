# CertificateApi

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**certificate**](CertificateApi.md#certificate) | **GET** /v1/certificate/pem | Get authentication certificate


<a name="certificate"></a>
# **certificate**
> kotlin.String certificate()

Get authentication certificate

Providing PEM file with the Private Key, Public Key and the Certificate to authenticate to the EMS API.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CertificateApi()
try {
    val result : kotlin.String = apiInstance.certificate()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CertificateApi#certificate")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CertificateApi#certificate")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**kotlin.String**

### Authorization


Configure APIKeyHeader:
    ApiClient.apiKey["X-CoinAPI-Key"] = ""
    ApiClient.apiKeyPrefix["X-CoinAPI-Key"] = ""
Configure APIKeyQueryParam:
    ApiClient.apiKey["apikey"] = ""
    ApiClient.apiKeyPrefix["apikey"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

