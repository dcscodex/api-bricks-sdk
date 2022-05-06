# openapi.api.EndpointsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**endpoints**](EndpointsApi.md#endpoints) | **GET** /v1/endpoints | Get API endpoints


# **endpoints**
> List<AccountEndpoint> endpoints(filterExchangeId)

Get API endpoints

Get all API endpoints that the EMS API expose for your subscription.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKeyHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyHeader').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: APIKeyQueryParam
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyQueryParam').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKeyQueryParam').apiKeyPrefix = 'Bearer';

final api_instance = EndpointsApi();
final filterExchangeId = []; // List<String> | Exchange id

try {
    final result = api_instance.endpoints(filterExchangeId);
    print(result);
} catch (e) {
    print('Exception when calling EndpointsApi->endpoints: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterExchangeId** | [**List<String>**](String.md)| Exchange id | [optional] [default to const []]

### Return type

[**List<AccountEndpoint>**](AccountEndpoint.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

