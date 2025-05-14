# NATIVEIEX_API

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**v1_native_iex_admin_messages_symbol_get**](NATIVEIEX_API.md#v1_native_iex_admin_messages_symbol_get) | **Get** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages
[**v1_native_iex_admin_system_event_get**](NATIVEIEX_API.md#v1_native_iex_admin_system_event_get) | **Get** /v1/native/iex/admin/system-event | Get System Events
[**v1_native_iex_level1_quote_symbol_get**](NATIVEIEX_API.md#v1_native_iex_level1_quote_symbol_get) | **Get** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes
[**v1_native_iex_level2_price_level_update_symbol_get**](NATIVEIEX_API.md#v1_native_iex_level2_price_level_update_symbol_get) | **Get** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book
[**v1_native_iex_level3_order_book_symbol_get**](NATIVEIEX_API.md#v1_native_iex_level3_order_book_symbol_get) | **Get** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book
[**v1_native_iex_trade_symbol_get**](NATIVEIEX_API.md#v1_native_iex_trade_symbol_get) | **Get** /v1/native/iex/trade/{symbol} | Get Trades


# **v1_native_iex_admin_messages_symbol_get**
> v1_native_iex_admin_messages_symbol_get (symbol: STRING_32 ; date: DATE_TIME ): detachable LIST [ADMIN_ADMIN_MESSAGE_MODEL]


Get Admin Messages


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **STRING_32**| The symbol identifier | [default to null]
 **date** | **DATE_TIME**| Optional date in format YYYY-MM-DD (defaults to latest available data) | [default to null]

### Return type

[**LIST [ADMIN_ADMIN_MESSAGE_MODEL]**](Admin.AdminMessageModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_admin_system_event_get**
> v1_native_iex_admin_system_event_get (date: DATE_TIME ): detachable LIST [ADMIN_SYSTEM_EVENT_MODEL]


Get System Events


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **DATE_TIME**| Date in format YYYY-MM-DD | [default to null]

### Return type

[**LIST [ADMIN_SYSTEM_EVENT_MODEL]**](Admin.SystemEventModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_level1_quote_symbol_get**
> v1_native_iex_level1_quote_symbol_get (symbol: STRING_32 ; date: DATE_TIME ): detachable LIST [LEVEL1_QUOTE_UPDATE_MODEL]


Get Level-1 Quotes


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **STRING_32**| The symbol identifier | [default to null]
 **date** | **DATE_TIME**| Optional date in format YYYY-MM-DD (defaults to latest available data) | [default to null]

### Return type

[**LIST [LEVEL1_QUOTE_UPDATE_MODEL]**](Level1.QuoteUpdateModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_level2_price_level_update_symbol_get**
> v1_native_iex_level2_price_level_update_symbol_get (symbol: STRING_32 ; date: DATE_TIME ): detachable LIST [LEVEL2_PRICE_LEVEL_UPDATE_MODEL]


Get Level-2 Price Level Book


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **STRING_32**| The symbol identifier | [default to null]
 **date** | **DATE_TIME**| Optional date in format YYYY-MM-DD (defaults to latest available data) | [default to null]

### Return type

[**LIST [LEVEL2_PRICE_LEVEL_UPDATE_MODEL]**](Level2.PriceLevelUpdateModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_level3_order_book_symbol_get**
> v1_native_iex_level3_order_book_symbol_get (symbol: STRING_32 ; date: DATE_TIME ): detachable LIST [LEVEL3_ORDER_BOOK_MODEL]


Get Level-3 Order Book


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **STRING_32**| The symbol identifier | [default to null]
 **date** | **DATE_TIME**| Optional date in format YYYY-MM-DD (defaults to latest available data) | [default to null]

### Return type

[**LIST [LEVEL3_ORDER_BOOK_MODEL]**](Level3.OrderBookModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_trade_symbol_get**
> v1_native_iex_trade_symbol_get (symbol: STRING_32 ; date: DATE_TIME ): detachable LIST [TRADE_TRADE_MODEL]


Get Trades


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **STRING_32**| The symbol identifier | [default to null]
 **date** | **DATE_TIME**| Optional date in format YYYY-MM-DD (defaults to latest available data) | [default to null]

### Return type

[**LIST [TRADE_TRADE_MODEL]**](Trade.TradeModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

