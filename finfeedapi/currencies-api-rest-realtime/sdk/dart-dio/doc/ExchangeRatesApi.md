# openapi.api.ExchangeRatesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-realtime.fx.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSpecificRate**](ExchangeRatesApi.md#getspecificrate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate
[**v1ExchangerateAssetIdBaseGet**](ExchangeRatesApi.md#v1exchangerateassetidbaseget) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates


# **getSpecificRate**
> V1ExchangeRate getSpecificRate(assetIdBase, assetIdQuote)

Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getExchangeRatesApi();
final String assetIdBase = assetIdBase_example; // String | Requested exchange rate base asset identifier (from the Metadata -> Assets)
final String assetIdQuote = assetIdQuote_example; // String | Requested exchange rate quote asset identifier (from the Metadata -> Assets)

try {
    final response = api.getSpecificRate(assetIdBase, assetIdQuote);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExchangeRatesApi->getSpecificRate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetIdBase** | **String**| Requested exchange rate base asset identifier (from the Metadata -> Assets) | 
 **assetIdQuote** | **String**| Requested exchange rate quote asset identifier (from the Metadata -> Assets) | 

### Return type

[**V1ExchangeRate**](V1ExchangeRate.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ExchangerateAssetIdBaseGet**
> V1ExchangeRates v1ExchangerateAssetIdBaseGet(assetIdBase, filterAssetId, invert)

Get all current rates

Get the current exchange rate between requested asset and all other assets.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::              :::info You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC); :::

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getExchangeRatesApi();
final String assetIdBase = assetIdBase_example; // String | Requested exchange rates base asset identifier (from the Metadata -> Assets)
final String filterAssetId = filterAssetId_example; // String | Comma or semicolon delimited asset identifiers used to filter response (optional)
final bool invert = true; // bool | True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`)

try {
    final response = api.v1ExchangerateAssetIdBaseGet(assetIdBase, filterAssetId, invert);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExchangeRatesApi->v1ExchangerateAssetIdBaseGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetIdBase** | **String**| Requested exchange rates base asset identifier (from the Metadata -> Assets) | 
 **filterAssetId** | **String**| Comma or semicolon delimited asset identifiers used to filter response (optional) | [optional] 
 **invert** | **bool**| True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`) | [optional] [default to false]

### Return type

[**V1ExchangeRates**](V1ExchangeRates.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

