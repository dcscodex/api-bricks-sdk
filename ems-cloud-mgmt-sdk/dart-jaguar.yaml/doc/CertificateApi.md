# openapi.api.CertificateApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**certificate**](CertificateApi.md#certificate) | **Get** /v1/certificate/pem | Get authentication certificate


# **certificate**
> String certificate()

Get authentication certificate

Providing PEM file with the Private Key, Public Key and the Certificate to authenticate to the EMS API.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKeyHeader
//openapi.api.Configuration.apiKey{'X-CoinAPI-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-CoinAPI-Key'} = "Bearer";
// TODO Configure API key authorization: APIKeyQueryParam
//openapi.api.Configuration.apiKey{'apikey'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'apikey'} = "Bearer";

var api_instance = new CertificateApi();

try {
    var result = api_instance.certificate();
    print(result);
} catch (e) {
    print("Exception when calling CertificateApi->certificate: $e\n");
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

