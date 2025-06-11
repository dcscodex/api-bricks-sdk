# openapi.api.NativeIEXApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1NativeIexAdminMessagesSymbolGet**](NativeIEXApi.md#v1nativeiexadminmessagessymbolget) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages
[**v1NativeIexAdminSystemEventGet**](NativeIEXApi.md#v1nativeiexadminsystemeventget) | **GET** /v1/native/iex/admin/system-event | Get System Events
[**v1NativeIexLevel1QuoteSymbolGet**](NativeIEXApi.md#v1nativeiexlevel1quotesymbolget) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes
[**v1NativeIexLevel2PriceLevelUpdateSymbolGet**](NativeIEXApi.md#v1nativeiexlevel2pricelevelupdatesymbolget) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book
[**v1NativeIexLevel3OrderBookSymbolGet**](NativeIEXApi.md#v1nativeiexlevel3orderbooksymbolget) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book
[**v1NativeIexTradeSymbolGet**](NativeIEXApi.md#v1nativeiextradesymbolget) | **GET** /v1/native/iex/trade/{symbol} | Get Trades


# **v1NativeIexAdminMessagesSymbolGet**
> BuiltList<AdminAdminMessageModel> v1NativeIexAdminMessagesSymbolGet(symbol, date)

Get Admin Messages

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getNativeIEXApi();
final String symbol = symbol_example; // String | The symbol identifier
final DateTime date = 2013-10-20T19:20:30+01:00; // DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

try {
    final response = api.v1NativeIexAdminMessagesSymbolGet(symbol, date);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NativeIEXApi->v1NativeIexAdminMessagesSymbolGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **DateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**BuiltList&lt;AdminAdminMessageModel&gt;**](AdminAdminMessageModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NativeIexAdminSystemEventGet**
> BuiltList<AdminSystemEventModel> v1NativeIexAdminSystemEventGet(date)

Get System Events

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getNativeIEXApi();
final DateTime date = 2013-10-20T19:20:30+01:00; // DateTime | Date in format YYYY-MM-DD

try {
    final response = api.v1NativeIexAdminSystemEventGet(date);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NativeIEXApi->v1NativeIexAdminSystemEventGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **DateTime**| Date in format YYYY-MM-DD | 

### Return type

[**BuiltList&lt;AdminSystemEventModel&gt;**](AdminSystemEventModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NativeIexLevel1QuoteSymbolGet**
> BuiltList<Level1QuoteUpdateModel> v1NativeIexLevel1QuoteSymbolGet(symbol, date)

Get Level-1 Quotes

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getNativeIEXApi();
final String symbol = symbol_example; // String | The symbol identifier
final DateTime date = 2013-10-20T19:20:30+01:00; // DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

try {
    final response = api.v1NativeIexLevel1QuoteSymbolGet(symbol, date);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NativeIEXApi->v1NativeIexLevel1QuoteSymbolGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **DateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**BuiltList&lt;Level1QuoteUpdateModel&gt;**](Level1QuoteUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NativeIexLevel2PriceLevelUpdateSymbolGet**
> BuiltList<Level2PriceLevelUpdateModel> v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date)

Get Level-2 Price Level Book

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getNativeIEXApi();
final String symbol = symbol_example; // String | The symbol identifier
final DateTime date = 2013-10-20T19:20:30+01:00; // DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

try {
    final response = api.v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NativeIEXApi->v1NativeIexLevel2PriceLevelUpdateSymbolGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **DateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**BuiltList&lt;Level2PriceLevelUpdateModel&gt;**](Level2PriceLevelUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NativeIexLevel3OrderBookSymbolGet**
> BuiltList<Level3OrderBookModel> v1NativeIexLevel3OrderBookSymbolGet(symbol, date)

Get Level-3 Order Book

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getNativeIEXApi();
final String symbol = symbol_example; // String | The symbol identifier
final DateTime date = 2013-10-20T19:20:30+01:00; // DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

try {
    final response = api.v1NativeIexLevel3OrderBookSymbolGet(symbol, date);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NativeIEXApi->v1NativeIexLevel3OrderBookSymbolGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **DateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**BuiltList&lt;Level3OrderBookModel&gt;**](Level3OrderBookModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NativeIexTradeSymbolGet**
> BuiltList<TradeTradeModel> v1NativeIexTradeSymbolGet(symbol, date)

Get Trades

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getNativeIEXApi();
final String symbol = symbol_example; // String | The symbol identifier
final DateTime date = 2013-10-20T19:20:30+01:00; // DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

try {
    final response = api.v1NativeIexTradeSymbolGet(symbol, date);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NativeIEXApi->v1NativeIexTradeSymbolGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **DateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**BuiltList&lt;TradeTradeModel&gt;**](TradeTradeModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

