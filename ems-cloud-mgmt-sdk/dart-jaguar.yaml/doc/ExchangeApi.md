# openapi.api.ExchangeApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://ems-mgmt-sandbox.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exchangeLoginRequire**](ExchangeApi.md#exchangeLoginRequire) | **Get** /v1/exchanges | Get exchange configuration


# **exchangeLoginRequire**
> List<ExchangeLoginRequire> exchangeLoginRequire()

Get exchange configuration

Get information about the required parameters or server site location of the exchanges supported in the EMS API.

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

var api_instance = new ExchangeApi();

try {
    var result = api_instance.exchangeLoginRequire();
    print(result);
} catch (e) {
    print("Exception when calling ExchangeApi->exchangeLoginRequire: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<ExchangeLoginRequire>**](ExchangeLoginRequire.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader), [APIKeyQueryParam](../README.md#APIKeyQueryParam)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

