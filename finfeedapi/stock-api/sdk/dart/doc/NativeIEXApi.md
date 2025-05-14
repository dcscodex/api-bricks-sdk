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
> List<AdminAdminMessageModel> v1NativeIexAdminMessagesSymbolGet(symbol, date)

Get Admin Messages

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = NativeIEXApi();
final symbol = symbol_example; // String | The symbol identifier
final date = 2013-10-20T19:20:30+01:00; // DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

try {
    final result = api_instance.v1NativeIexAdminMessagesSymbolGet(symbol, date);
    print(result);
} catch (e) {
    print('Exception when calling NativeIEXApi->v1NativeIexAdminMessagesSymbolGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **DateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**List<AdminAdminMessageModel>**](AdminAdminMessageModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NativeIexAdminSystemEventGet**
> List<AdminSystemEventModel> v1NativeIexAdminSystemEventGet(date)

Get System Events

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = NativeIEXApi();
final date = 2013-10-20T19:20:30+01:00; // DateTime | Date in format YYYY-MM-DD

try {
    final result = api_instance.v1NativeIexAdminSystemEventGet(date);
    print(result);
} catch (e) {
    print('Exception when calling NativeIEXApi->v1NativeIexAdminSystemEventGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **DateTime**| Date in format YYYY-MM-DD | 

### Return type

[**List<AdminSystemEventModel>**](AdminSystemEventModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NativeIexLevel1QuoteSymbolGet**
> List<Level1QuoteUpdateModel> v1NativeIexLevel1QuoteSymbolGet(symbol, date)

Get Level-1 Quotes

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = NativeIEXApi();
final symbol = symbol_example; // String | The symbol identifier
final date = 2013-10-20T19:20:30+01:00; // DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

try {
    final result = api_instance.v1NativeIexLevel1QuoteSymbolGet(symbol, date);
    print(result);
} catch (e) {
    print('Exception when calling NativeIEXApi->v1NativeIexLevel1QuoteSymbolGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **DateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**List<Level1QuoteUpdateModel>**](Level1QuoteUpdateModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NativeIexLevel2PriceLevelUpdateSymbolGet**
> List<Level2PriceLevelUpdateModel> v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date)

Get Level-2 Price Level Book

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = NativeIEXApi();
final symbol = symbol_example; // String | The symbol identifier
final date = 2013-10-20T19:20:30+01:00; // DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

try {
    final result = api_instance.v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date);
    print(result);
} catch (e) {
    print('Exception when calling NativeIEXApi->v1NativeIexLevel2PriceLevelUpdateSymbolGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **DateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**List<Level2PriceLevelUpdateModel>**](Level2PriceLevelUpdateModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NativeIexLevel3OrderBookSymbolGet**
> List<Level3OrderBookModel> v1NativeIexLevel3OrderBookSymbolGet(symbol, date)

Get Level-3 Order Book

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = NativeIEXApi();
final symbol = symbol_example; // String | The symbol identifier
final date = 2013-10-20T19:20:30+01:00; // DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

try {
    final result = api_instance.v1NativeIexLevel3OrderBookSymbolGet(symbol, date);
    print(result);
} catch (e) {
    print('Exception when calling NativeIEXApi->v1NativeIexLevel3OrderBookSymbolGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **DateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**List<Level3OrderBookModel>**](Level3OrderBookModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NativeIexTradeSymbolGet**
> List<TradeTradeModel> v1NativeIexTradeSymbolGet(symbol, date)

Get Trades

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = NativeIEXApi();
final symbol = symbol_example; // String | The symbol identifier
final date = 2013-10-20T19:20:30+01:00; // DateTime | Optional date in format YYYY-MM-DD (defaults to latest available data)

try {
    final result = api_instance.v1NativeIexTradeSymbolGet(symbol, date);
    print(result);
} catch (e) {
    print('Exception when calling NativeIEXApi->v1NativeIexTradeSymbolGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **DateTime**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**List<TradeTradeModel>**](TradeTradeModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

