# openapi.api.AccountApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAccount**](AccountApi.md#deleteaccount) | **DELETE** /v1/accounts | Delete account
[**deleteAccountAll**](AccountApi.md#deleteaccountall) | **DELETE** /v1/accounts/all | Delete all accounts
[**getAccount**](AccountApi.md#getaccount) | **GET** /v1/accounts | Get accounts
[**persistAccount**](AccountApi.md#persistaccount) | **POST** /v1/accounts | Add or update account


# **deleteAccount**
> deleteAccount(exchangeId)

Delete account

Delete specific exchange account maintained by the EMS API for your subscription.

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

var api_instance = new AccountApi();
var exchangeId = []; // BuiltList<String> | Exchange identifier of the account to delete

try {
    api_instance.deleteAccount(exchangeId);
} catch (e) {
    print('Exception when calling AccountApi->deleteAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | [**BuiltList<String>**](String.md)| Exchange identifier of the account to delete | 

### Return type

void (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAccountAll**
> deleteAccountAll()

Delete all accounts

Delete all exchange accounts maintained by the EMS API for your subscription.

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

var api_instance = new AccountApi();

try {
    api_instance.deleteAccountAll();
} catch (e) {
    print('Exception when calling AccountApi->deleteAccountAll: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccount**
> BuiltList<GetAccount> getAccount(filterExchangeId)

Get accounts

Get all accounts maintained for your subscription in the EMS API.

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

var api_instance = new AccountApi();
var filterExchangeId = []; // BuiltList<String> | Exchange id of the specific account to provide single account instead of the list of all accounts

try {
    var result = api_instance.getAccount(filterExchangeId);
    print(result);
} catch (e) {
    print('Exception when calling AccountApi->getAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterExchangeId** | [**BuiltList<String>**](String.md)| Exchange id of the specific account to provide single account instead of the list of all accounts | [optional] 

### Return type

[**BuiltList<GetAccount>**](GetAccount.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **persistAccount**
> persistAccount(body)

Add or update account

Add new or update existing exchange account for your subscription in the EMS API.

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

var api_instance = new AccountApi();
var body = new AccountData(); // AccountData | Exchange account object that needs to be add/update to the EMS

try {
    api_instance.persistAccount(body);
} catch (e) {
    print('Exception when calling AccountApi->persistAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AccountData**](AccountData.md)| Exchange account object that needs to be add/update to the EMS | 

### Return type

void (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

