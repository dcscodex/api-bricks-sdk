# NativeIEXApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1NativeIexAdminMessagesSymbolGet**](NativeIEXApi.md#v1NativeIexAdminMessagesSymbolGet) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages
[**v1NativeIexAdminSystemEventGet**](NativeIEXApi.md#v1NativeIexAdminSystemEventGet) | **GET** /v1/native/iex/admin/system-event | Get System Events
[**v1NativeIexLevel1QuoteSymbolGet**](NativeIEXApi.md#v1NativeIexLevel1QuoteSymbolGet) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes
[**v1NativeIexLevel2PriceLevelUpdateSymbolGet**](NativeIEXApi.md#v1NativeIexLevel2PriceLevelUpdateSymbolGet) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book
[**v1NativeIexLevel3OrderBookSymbolGet**](NativeIEXApi.md#v1NativeIexLevel3OrderBookSymbolGet) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book
[**v1NativeIexTradeSymbolGet**](NativeIEXApi.md#v1NativeIexTradeSymbolGet) | **GET** /v1/native/iex/trade/{symbol} | Get Trades



## v1NativeIexAdminMessagesSymbolGet

> List&lt;AdminAdminMessageModel&gt; v1NativeIexAdminMessagesSymbolGet(symbol, date)

Get Admin Messages

### Example

```java
// Import classes:
//import org.openapitools.client.api.NativeIEXApi;

NativeIEXApi apiInstance = new NativeIEXApi();
String symbol = null; // String | The symbol identifier
Date date = null; // Date | Optional date in format YYYY-MM-DD (defaults to latest available data)
try {
    List<AdminAdminMessageModel> result = apiInstance.v1NativeIexAdminMessagesSymbolGet(symbol, date);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NativeIEXApi#v1NativeIexAdminMessagesSymbolGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | [default to null]
 **date** | **Date**| Optional date in format YYYY-MM-DD (defaults to latest available data) | [default to null]

### Return type

[**List&lt;AdminAdminMessageModel&gt;**](AdminAdminMessageModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1NativeIexAdminSystemEventGet

> List&lt;AdminSystemEventModel&gt; v1NativeIexAdminSystemEventGet(date)

Get System Events

### Example

```java
// Import classes:
//import org.openapitools.client.api.NativeIEXApi;

NativeIEXApi apiInstance = new NativeIEXApi();
Date date = null; // Date | Date in format YYYY-MM-DD
try {
    List<AdminSystemEventModel> result = apiInstance.v1NativeIexAdminSystemEventGet(date);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NativeIEXApi#v1NativeIexAdminSystemEventGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **Date**| Date in format YYYY-MM-DD | [default to null]

### Return type

[**List&lt;AdminSystemEventModel&gt;**](AdminSystemEventModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1NativeIexLevel1QuoteSymbolGet

> List&lt;Level1QuoteUpdateModel&gt; v1NativeIexLevel1QuoteSymbolGet(symbol, date)

Get Level-1 Quotes

### Example

```java
// Import classes:
//import org.openapitools.client.api.NativeIEXApi;

NativeIEXApi apiInstance = new NativeIEXApi();
String symbol = null; // String | The symbol identifier
Date date = null; // Date | Optional date in format YYYY-MM-DD (defaults to latest available data)
try {
    List<Level1QuoteUpdateModel> result = apiInstance.v1NativeIexLevel1QuoteSymbolGet(symbol, date);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NativeIEXApi#v1NativeIexLevel1QuoteSymbolGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | [default to null]
 **date** | **Date**| Optional date in format YYYY-MM-DD (defaults to latest available data) | [default to null]

### Return type

[**List&lt;Level1QuoteUpdateModel&gt;**](Level1QuoteUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1NativeIexLevel2PriceLevelUpdateSymbolGet

> List&lt;Level2PriceLevelUpdateModel&gt; v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date)

Get Level-2 Price Level Book

### Example

```java
// Import classes:
//import org.openapitools.client.api.NativeIEXApi;

NativeIEXApi apiInstance = new NativeIEXApi();
String symbol = null; // String | The symbol identifier
Date date = null; // Date | Optional date in format YYYY-MM-DD (defaults to latest available data)
try {
    List<Level2PriceLevelUpdateModel> result = apiInstance.v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NativeIEXApi#v1NativeIexLevel2PriceLevelUpdateSymbolGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | [default to null]
 **date** | **Date**| Optional date in format YYYY-MM-DD (defaults to latest available data) | [default to null]

### Return type

[**List&lt;Level2PriceLevelUpdateModel&gt;**](Level2PriceLevelUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1NativeIexLevel3OrderBookSymbolGet

> List&lt;Level3OrderBookModel&gt; v1NativeIexLevel3OrderBookSymbolGet(symbol, date)

Get Level-3 Order Book

### Example

```java
// Import classes:
//import org.openapitools.client.api.NativeIEXApi;

NativeIEXApi apiInstance = new NativeIEXApi();
String symbol = null; // String | The symbol identifier
Date date = null; // Date | Optional date in format YYYY-MM-DD (defaults to latest available data)
try {
    List<Level3OrderBookModel> result = apiInstance.v1NativeIexLevel3OrderBookSymbolGet(symbol, date);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NativeIEXApi#v1NativeIexLevel3OrderBookSymbolGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | [default to null]
 **date** | **Date**| Optional date in format YYYY-MM-DD (defaults to latest available data) | [default to null]

### Return type

[**List&lt;Level3OrderBookModel&gt;**](Level3OrderBookModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1NativeIexTradeSymbolGet

> List&lt;TradeTradeModel&gt; v1NativeIexTradeSymbolGet(symbol, date)

Get Trades

### Example

```java
// Import classes:
//import org.openapitools.client.api.NativeIEXApi;

NativeIEXApi apiInstance = new NativeIEXApi();
String symbol = null; // String | The symbol identifier
Date date = null; // Date | Optional date in format YYYY-MM-DD (defaults to latest available data)
try {
    List<TradeTradeModel> result = apiInstance.v1NativeIexTradeSymbolGet(symbol, date);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NativeIEXApi#v1NativeIexTradeSymbolGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | [default to null]
 **date** | **Date**| Optional date in format YYYY-MM-DD (defaults to latest available data) | [default to null]

### Return type

[**List&lt;TradeTradeModel&gt;**](TradeTradeModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

