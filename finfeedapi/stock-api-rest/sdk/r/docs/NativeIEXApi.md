# NativeIEXApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1NativeIexAdminMessagesSymbolGet**](NativeIEXApi.md#V1NativeIexAdminMessagesSymbolGet) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages
[**V1NativeIexAdminSystemEventGet**](NativeIEXApi.md#V1NativeIexAdminSystemEventGet) | **GET** /v1/native/iex/admin/system-event | Get System Events
[**V1NativeIexLevel1QuoteSymbolGet**](NativeIEXApi.md#V1NativeIexLevel1QuoteSymbolGet) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes
[**V1NativeIexLevel2PriceLevelUpdateSymbolGet**](NativeIEXApi.md#V1NativeIexLevel2PriceLevelUpdateSymbolGet) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book
[**V1NativeIexLevel3OrderBookSymbolGet**](NativeIEXApi.md#V1NativeIexLevel3OrderBookSymbolGet) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book
[**V1NativeIexTradeSymbolGet**](NativeIEXApi.md#V1NativeIexTradeSymbolGet) | **GET** /v1/native/iex/trade/{symbol} | Get Trades


# **V1NativeIexAdminMessagesSymbolGet**
> array[AdminAdminMessageModel] V1NativeIexAdminMessagesSymbolGet(symbol, date)

Get Admin Messages

### Example
```R
library(openapi)

# Get Admin Messages
#
# prepare function argument(s)
var_symbol <- "symbol_example" # character | The symbol identifier
var_date <- "date_example" # character | Optional date in format YYYY-MM-DD (defaults to latest available data)

api_instance <- NativeIEXApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1NativeIexAdminMessagesSymbolGet(var_symbol, var_datedata_file = "result.txt")
result <- api_instance$V1NativeIexAdminMessagesSymbolGet(var_symbol, var_date)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| The symbol identifier | 
 **date** | **character**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**array[AdminAdminMessageModel]**](Admin.AdminMessageModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1NativeIexAdminSystemEventGet**
> array[AdminSystemEventModel] V1NativeIexAdminSystemEventGet(date)

Get System Events

### Example
```R
library(openapi)

# Get System Events
#
# prepare function argument(s)
var_date <- "date_example" # character | Date in format YYYY-MM-DD

api_instance <- NativeIEXApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1NativeIexAdminSystemEventGet(var_datedata_file = "result.txt")
result <- api_instance$V1NativeIexAdminSystemEventGet(var_date)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **character**| Date in format YYYY-MM-DD | 

### Return type

[**array[AdminSystemEventModel]**](Admin.SystemEventModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1NativeIexLevel1QuoteSymbolGet**
> array[Level1QuoteUpdateModel] V1NativeIexLevel1QuoteSymbolGet(symbol, date)

Get Level-1 Quotes

### Example
```R
library(openapi)

# Get Level-1 Quotes
#
# prepare function argument(s)
var_symbol <- "symbol_example" # character | The symbol identifier
var_date <- "date_example" # character | Optional date in format YYYY-MM-DD (defaults to latest available data)

api_instance <- NativeIEXApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1NativeIexLevel1QuoteSymbolGet(var_symbol, var_datedata_file = "result.txt")
result <- api_instance$V1NativeIexLevel1QuoteSymbolGet(var_symbol, var_date)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| The symbol identifier | 
 **date** | **character**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**array[Level1QuoteUpdateModel]**](Level1.QuoteUpdateModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1NativeIexLevel2PriceLevelUpdateSymbolGet**
> array[Level2PriceLevelUpdateModel] V1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date)

Get Level-2 Price Level Book

### Example
```R
library(openapi)

# Get Level-2 Price Level Book
#
# prepare function argument(s)
var_symbol <- "symbol_example" # character | The symbol identifier
var_date <- "date_example" # character | Optional date in format YYYY-MM-DD (defaults to latest available data)

api_instance <- NativeIEXApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1NativeIexLevel2PriceLevelUpdateSymbolGet(var_symbol, var_datedata_file = "result.txt")
result <- api_instance$V1NativeIexLevel2PriceLevelUpdateSymbolGet(var_symbol, var_date)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| The symbol identifier | 
 **date** | **character**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**array[Level2PriceLevelUpdateModel]**](Level2.PriceLevelUpdateModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1NativeIexLevel3OrderBookSymbolGet**
> array[Level3OrderBookModel] V1NativeIexLevel3OrderBookSymbolGet(symbol, date)

Get Level-3 Order Book

### Example
```R
library(openapi)

# Get Level-3 Order Book
#
# prepare function argument(s)
var_symbol <- "symbol_example" # character | The symbol identifier
var_date <- "date_example" # character | Optional date in format YYYY-MM-DD (defaults to latest available data)

api_instance <- NativeIEXApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1NativeIexLevel3OrderBookSymbolGet(var_symbol, var_datedata_file = "result.txt")
result <- api_instance$V1NativeIexLevel3OrderBookSymbolGet(var_symbol, var_date)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| The symbol identifier | 
 **date** | **character**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**array[Level3OrderBookModel]**](Level3.OrderBookModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1NativeIexTradeSymbolGet**
> array[TradeTradeModel] V1NativeIexTradeSymbolGet(symbol, date)

Get Trades

### Example
```R
library(openapi)

# Get Trades
#
# prepare function argument(s)
var_symbol <- "symbol_example" # character | The symbol identifier
var_date <- "date_example" # character | Optional date in format YYYY-MM-DD (defaults to latest available data)

api_instance <- NativeIEXApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1NativeIexTradeSymbolGet(var_symbol, var_datedata_file = "result.txt")
result <- api_instance$V1NativeIexTradeSymbolGet(var_symbol, var_date)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| The symbol identifier | 
 **date** | **character**| Optional date in format YYYY-MM-DD (defaults to latest available data) | 

### Return type

[**array[TradeTradeModel]**](Trade.TradeModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

