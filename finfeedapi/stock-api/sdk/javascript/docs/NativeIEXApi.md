# RestApi.NativeIEXApi

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

> [AdminAdminMessageModel] v1NativeIexAdminMessagesSymbolGet(symbol, date)

Get Admin Messages

### Example

```javascript
import RestApi from 'rest_api';

let apiInstance = new RestApi.NativeIEXApi();
let symbol = "symbol_example"; // String | The symbol identifier
let date = new Date("2013-10-20T19:20:30+01:00"); // Date | Optional date in format YYYY-MM-DD (defaults to latest available data)
apiInstance.v1NativeIexAdminMessagesSymbolGet(symbol, date, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **Date**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**[AdminAdminMessageModel]**](AdminAdminMessageModel.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1NativeIexAdminSystemEventGet

> [AdminSystemEventModel] v1NativeIexAdminSystemEventGet(date)

Get System Events

### Example

```javascript
import RestApi from 'rest_api';

let apiInstance = new RestApi.NativeIEXApi();
let date = new Date("2013-10-20T19:20:30+01:00"); // Date | Date in format YYYY-MM-DD
apiInstance.v1NativeIexAdminSystemEventGet(date, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **Date**| Date in format YYYY-MM-DD | 

### Return type

[**[AdminSystemEventModel]**](AdminSystemEventModel.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1NativeIexLevel1QuoteSymbolGet

> [Level1QuoteUpdateModel] v1NativeIexLevel1QuoteSymbolGet(symbol, date)

Get Level-1 Quotes

### Example

```javascript
import RestApi from 'rest_api';

let apiInstance = new RestApi.NativeIEXApi();
let symbol = "symbol_example"; // String | The symbol identifier
let date = new Date("2013-10-20T19:20:30+01:00"); // Date | Optional date in format YYYY-MM-DD (defaults to latest available data)
apiInstance.v1NativeIexLevel1QuoteSymbolGet(symbol, date, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **Date**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**[Level1QuoteUpdateModel]**](Level1QuoteUpdateModel.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1NativeIexLevel2PriceLevelUpdateSymbolGet

> [Level2PriceLevelUpdateModel] v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date)

Get Level-2 Price Level Book

### Example

```javascript
import RestApi from 'rest_api';

let apiInstance = new RestApi.NativeIEXApi();
let symbol = "symbol_example"; // String | The symbol identifier
let date = new Date("2013-10-20T19:20:30+01:00"); // Date | Optional date in format YYYY-MM-DD (defaults to latest available data)
apiInstance.v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **Date**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**[Level2PriceLevelUpdateModel]**](Level2PriceLevelUpdateModel.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1NativeIexLevel3OrderBookSymbolGet

> [Level3OrderBookModel] v1NativeIexLevel3OrderBookSymbolGet(symbol, date)

Get Level-3 Order Book

### Example

```javascript
import RestApi from 'rest_api';

let apiInstance = new RestApi.NativeIEXApi();
let symbol = "symbol_example"; // String | The symbol identifier
let date = new Date("2013-10-20T19:20:30+01:00"); // Date | Optional date in format YYYY-MM-DD (defaults to latest available data)
apiInstance.v1NativeIexLevel3OrderBookSymbolGet(symbol, date, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **Date**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**[Level3OrderBookModel]**](Level3OrderBookModel.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1NativeIexTradeSymbolGet

> [TradeTradeModel] v1NativeIexTradeSymbolGet(symbol, date)

Get Trades

### Example

```javascript
import RestApi from 'rest_api';

let apiInstance = new RestApi.NativeIEXApi();
let symbol = "symbol_example"; // String | The symbol identifier
let date = new Date("2013-10-20T19:20:30+01:00"); // Date | Optional date in format YYYY-MM-DD (defaults to latest available data)
apiInstance.v1NativeIexTradeSymbolGet(symbol, date, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **Date**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**[TradeTradeModel]**](TradeTradeModel.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

